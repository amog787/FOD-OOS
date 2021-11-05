.class public final Lcom/android/server/wm/ActivityRecord;
.super Lcom/android/server/wm/WindowToken;
.source "ActivityRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$AppFreezeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;,
        Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;,
        Lcom/android/server/wm/ActivityRecord$FinishRequest;,
        Lcom/android/server/wm/ActivityRecord$AddStartingWindow;,
        Lcom/android/server/wm/ActivityRecord$Token;
    }
.end annotation


# static fields
.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMFEATURE:Ljava/lang/String; = "launched_from_feature"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final DESTROY_TIMEOUT:I = 0x2710

.field static final FINISH_RESULT_CANCELLED:I = 0x0

.field static final FINISH_RESULT_REMOVED:I = 0x2

.field static final FINISH_RESULT_REQUESTED:I = 0x1

.field static final INVALID_PID:I = -0x1

.field private static final LAUNCH_TICK:I = 0x1f4

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field private static final PAUSE_TIMEOUT:I = 0x1f4

.field static final STARTING_WINDOW_NOT_SHOWN:I = 0x0

.field static final STARTING_WINDOW_REMOVED:I = 0x2

.field static final STARTING_WINDOW_SHOWN:I = 0x1

.field private static final STARTING_WINDOW_TYPE_NONE:I = 0x0

.field private static final STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x1

.field private static final STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x2

.field private static final STOP_TIMEOUT:I = 0x2af8

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field static final Z_BOOST_BASE:I = 0x2fb7ba90


# instance fields
.field private final SETTINGS_PACKAGE_NAME:Ljava/lang/String;

.field allDrawn:Z

.field app:Lcom/android/server/wm/WindowProcessController;

.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Lcom/android/server/wm/ActivityRecord$Token;

.field final assistToken:Landroid/os/Binder;

.field compat:Landroid/content/res/CompatibilityInfo;

.field private final componentSpecified:Z

.field configChangeFlags:I

.field cpuTimeAtResume:J

.field private createTime:J

.field deferRelaunchUntilPaused:Z

.field delayedResume:Z

.field finishing:Z

.field firstWindowDrawn:Z

.field forceNewConfig:Z

.field frozenBeforeDestroy:Z

.field hasBeenLaunched:Z

.field final hasWallpaper:Z

.field private icon:I

.field idle:Z

.field immersive:Z

.field inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field isQuickPayNoHistory:Z

.field private keysPaused:Z

.field private labelRes:I

.field lastLaunchTime:J

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field final launchedFromFeatureId:Ljava/lang/String;

.field public final launchedFromPackage:Ljava/lang/String;

.field final launchedFromPid:I

.field final launchedFromUid:I

.field public launching:Z

.field lockTaskLaunchMode:I

.field private logo:I

.field final mActivityComponent:Landroid/content/ComponentName;

.field mActivityName:Ljava/lang/String;

.field private final mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

.field mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field mAppCompat:I

.field mAppStopped:Z

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mClientVisibilityDeferred:Z

.field private mClientVisible:Z

.field private final mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

.field private mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

.field private mCompleteFinishList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigurationSeq:I

.field private mCurrentLaunchCanTurnScreenOn:Z

.field private mDeferHidingClient:Z

.field private final mDestroyTimeoutRunnable:Ljava/lang/Runnable;

.field mDisablePreviewScreenshots:Z

.field mDrawn:Z

.field mEnteringAnimation:Z

.field mFixedRate:Z

.field private mFreezingScreen:Z

.field mFrozenBounds:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFrozenMergedConfig:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field mHandoverLaunchDisplayId:I

.field mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mHaveState:Z

.field private mHorizontalSizeConfigurations:[I

.field private mIcicle:Landroid/os/Bundle;

.field private mInheritShownWhenLocked:Z

.field private mInputApplicationHandle:Landroid/view/InputApplicationHandle;

.field mInputDispatchingTimeoutNanos:J

.field mIsExiting:Z

.field mIsMakeFocusedStackVisible:Z

.field private mLastAllDrawn:Z

.field private mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

.field private mLastContainsDismissKeyguardWindow:Z

.field private mLastContainsShowWhenLockedWindow:Z

.field private mLastContainsTurnScreenOnWindow:Z

.field private mLastDeferHidingClient:Z

.field mLastNewIntent:Landroid/content/Intent;

.field private mLastParent:Lcom/android/server/wm/Task;

.field private mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastReportedDisplayId:I

.field mLastReportedMultiWindowMode:Z

.field mLastReportedPictureInPictureMode:Z

.field private mLastSurfaceShowing:Z

.field private mLastTransactionSequence:J

.field private final mLaunchTickRunnable:Ljava/lang/Runnable;

.field private mLetterbox:Lcom/android/server/wm/Letterbox;

.field private mNumDrawnWindows:I

.field private mNumInterestingWindows:I

.field private mOccludesParent:Z

.field mPackageName:Ljava/lang/String;

.field private final mPauseTimeoutRunnable:Ljava/lang/Runnable;

.field mPendingOptionsFromNewActivityRecord:Landroid/app/ActivityOptions;

.field private mPendingRelaunchCount:I

.field public mPerf:Landroid/util/BoostFramework;

.field public mPerf_iop:Landroid/util/BoostFramework;

.field private mPersistentState:Landroid/os/PersistableBundle;

.field mRawRefreshRate:I

.field mRefreshRate:I

.field mRelaunchReason:I

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private mRemovingFromDisplay:Z

.field private final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field mRequestRate:I

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mRotationAnimationHint:I

.field mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field private mSetToSleep:Z

.field mShowForAllUsers:Z

.field private mShowWhenLocked:Z

.field private mSizeCompatBounds:Landroid/graphics/Rect;

.field private mSizeCompatScale:F

.field private mSmallestSizeConfigurations:[I

.field final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field mStartingData:Lcom/android/server/wm/StartingData;

.field mStartingWindowState:I

.field private mState:Lcom/android/server/wm/ActivityStack$ActivityState;

.field private final mStopTimeoutRunnable:Ljava/lang/Runnable;

.field mTargetSdk:I

.field private mTaskOverlay:Z

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field mTmpRefreshRate:I

.field mTmpRequestRate:I

.field private mTurnScreenOn:Z

.field private mUseTransferredAnimation:Z

.field final mUserId:I

.field private mVerticalSizeConfigurations:[I

.field private mVisible:Z

.field mVisibleRequested:Z

.field private mVisibleSetFromTransferredStartingWindow:Z

.field mVoiceInteraction:Z

.field private mWillCloseOrEnterPip:Z

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field noDisplay:Z

.field private nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field public packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field pendingVoiceInteractionStart:Z

.field public perfActivityBoostHandler:I

.field pictureInPictureArgs:Landroid/app/PictureInPictureParams;

.field preserveWindowOnDeferredRelaunch:Z

.field final processName:Ljava/lang/String;

.field private reportedDrawn:Z

.field reportedVisible:Z

.field final requestCode:I

.field requestedVrComponent:Landroid/content/ComponentName;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/wm/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final shortComponentName:Ljava/lang/String;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field startingWindow:Lcom/android/server/wm/WindowState;

.field final stateNotNeeded:Z

.field stopped:Z

.field supportsEnterPipOnTaskSwitch:Z

.field private task:Lcom/android/server/wm/Task;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private theme:I

.field topResumedStateLossTime:J

.field uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

.field visibleIgnoringKeyguard:Z

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private windowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 21
    .param p1, "_service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_caller"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "_launchedFromPid"    # I
    .param p4, "_launchedFromUid"    # I
    .param p5, "_launchedFromPackage"    # Ljava/lang/String;
    .param p6, "_launchedFromFeature"    # Ljava/lang/String;
    .param p7, "_intent"    # Landroid/content/Intent;
    .param p8, "_resolvedType"    # Ljava/lang/String;
    .param p9, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p10, "_configuration"    # Landroid/content/res/Configuration;
    .param p11, "_resultTo"    # Lcom/android/server/wm/ActivityRecord;
    .param p12, "_resultWho"    # Ljava/lang/String;
    .param p13, "_reqCode"    # I
    .param p14, "_componentSpecified"    # Z
    .param p15, "_rootVoiceInteraction"    # Z
    .param p16, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p17, "options"    # Landroid/app/ActivityOptions;
    .param p18, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 1654
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p17

    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-direct {v0, v10, v8}, Lcom/android/server/wm/ActivityRecord$Token;-><init>(Landroid/content/Intent;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Token;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 487
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 500
    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 530
    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    .line 570
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 583
    const/4 v13, 0x0

    iput v13, v7, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    .line 584
    iput-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 589
    iput v13, v7, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 609
    const/4 v14, 0x0

    iput-object v14, v7, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    .line 610
    iput-object v14, v7, Lcom/android/server/wm/ActivityRecord;->mPerf_iop:Landroid/util/BoostFramework;

    .line 617
    iput-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    .line 631
    new-instance v1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 639
    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 642
    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    .line 666
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v7, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 687
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v7, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    .line 730
    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 736
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 737
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    .line 743
    iput v13, v7, Lcom/android/server/wm/ActivityRecord;->mRefreshRate:I

    .line 744
    iput v13, v7, Lcom/android/server/wm/ActivityRecord;->mTmpRefreshRate:I

    .line 745
    iput v13, v7, Lcom/android/server/wm/ActivityRecord;->mRawRefreshRate:I

    .line 749
    iput v13, v7, Lcom/android/server/wm/ActivityRecord;->mRequestRate:I

    .line 750
    iput v13, v7, Lcom/android/server/wm/ActivityRecord;->mTmpRequestRate:I

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.oneplus.dialer"

    const-string v2, "com.oneplus.camera"

    const-string v3, "com.android.server.telecom"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mCompleteFinishList:Ljava/util/ArrayList;

    .line 765
    iput-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->mIsMakeFocusedStackVisible:Z

    .line 768
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$YSVwd546vKWMiMYy7MFzg1qRiio;

    invoke-direct {v0, v7}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$YSVwd546vKWMiMYy7MFzg1qRiio;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 788
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 789
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 792
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 796
    iput-object v14, v7, Lcom/android/server/wm/ActivityRecord;->mPendingOptionsFromNewActivityRecord:Landroid/app/ActivityOptions;

    .line 802
    iput-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->isQuickPayNoHistory:Z

    .line 805
    new-instance v0, Lcom/android/server/wm/ActivityRecord$1;

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityRecord$1;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    .line 820
    new-instance v0, Lcom/android/server/wm/ActivityRecord$2;

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityRecord$2;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTickRunnable:Ljava/lang/Runnable;

    .line 832
    new-instance v0, Lcom/android/server/wm/ActivityRecord$3;

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityRecord$3;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    .line 842
    new-instance v0, Lcom/android/server/wm/ActivityRecord$4;

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityRecord$4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    .line 2137
    new-instance v0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    invoke-direct {v0, v7, v14}, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$1;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    .line 7411
    const-string v0, "com.android.settings"

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->SETTINGS_PACKAGE_NAME:Ljava/lang/String;

    .line 1658
    iput-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1659
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    check-cast v0, Lcom/android/server/wm/ActivityRecord$Token;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 1660
    iput-object v11, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1661
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1662
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1663
    iput-object v10, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1668
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1669
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v0, v6, :cond_1

    :cond_0
    goto :goto_0

    .line 1674
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_1

    .line 1672
    :cond_2
    :goto_0
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1678
    :goto_1
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    .line 1679
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v13

    :goto_2
    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    .line 1680
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->setOrientation(I)V

    .line 1681
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1683
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v13

    :goto_3
    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 1684
    iget v0, v11, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_4

    :cond_5
    move v0, v13

    :goto_4
    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    .line 1685
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    move v0, v6

    goto :goto_5

    :cond_6
    move v0, v13

    :goto_5
    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 1687
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    .line 1688
    .local v0, "realTheme":I
    if-nez v0, :cond_8

    .line 1689
    iget-object v3, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_7

    .line 1690
    const v3, 0x1030005

    goto :goto_6

    :cond_7
    const v3, 0x103006b

    :goto_6
    move v0, v3

    move v15, v0

    goto :goto_7

    .line 1688
    :cond_8
    move v15, v0

    .line 1693
    .end local v0    # "realTheme":I
    .local v15, "realTheme":I
    :goto_7
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    iget v5, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v3, v15, v4, v5}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v5

    .line 1696
    .local v5, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v5, :cond_9

    .line 1697
    iget-object v0, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z

    move-result v0

    xor-int/2addr v0, v6

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 1698
    iget-object v0, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    .line 1699
    iget-object v0, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    goto :goto_8

    .line 1701
    :cond_9
    iput-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    .line 1702
    iput-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 1705
    :goto_8
    if-eqz v12, :cond_a

    .line 1706
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1708
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v0

    .line 1710
    .local v0, "rotationAnimation":I
    if-ltz v0, :cond_a

    .line 1711
    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1716
    .end local v0    # "rotationAnimation":I
    :cond_a
    invoke-virtual {v7, v13}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 1717
    iput-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .line 1719
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 1721
    .local v4, "cds":Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    new-instance v14, Ljava/lang/ref/WeakReference;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    invoke-direct {v14, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v3, v14}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    .line 1724
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v7}, Lcom/android/server/wm/ActivityRecord$Token;->access$200(Lcom/android/server/wm/ActivityRecord$Token;Lcom/android/server/wm/ActivityRecord;)V

    .line 1726
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1727
    move/from16 v14, p3

    iput v14, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    .line 1728
    move/from16 v3, p4

    iput v3, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1729
    move-object/from16 v1, p5

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1730
    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1731
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1732
    move-object/from16 v2, p8

    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 1733
    move/from16 v13, p14

    iput-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    .line 1734
    move/from16 v6, p15

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    .line 1735
    new-instance v0, Landroid/util/MergedConfiguration;

    move-object/from16 v6, p10

    invoke-direct {v0, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 1736
    move-object/from16 v0, p11

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1737
    move-object/from16 v6, p12

    iput-object v6, v7, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1738
    move/from16 v6, p13

    iput v6, v7, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1739
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "ActivityRecord ctor"

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1740
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 1741
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1742
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 1743
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1744
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1745
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 1746
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 1747
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1748
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 1749
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    .line 1750
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mClientVisible:Z

    .line 1751
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1752
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    .line 1753
    move-object/from16 v0, p16

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1755
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getTaskAffinityWithUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1756
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 1757
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1758
    .local v2, "uid":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 1759
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1760
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    .end local v2    # "uid":Ljava/lang/String;
    .local v20, "uid":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    goto :goto_9

    .line 1759
    .end local v20    # "uid":Ljava/lang/String;
    .restart local v2    # "uid":Ljava/lang/String;
    :cond_b
    move-object/from16 v20, v2

    .end local v2    # "uid":Ljava/lang/String;
    .restart local v20    # "uid":Ljava/lang/String;
    goto :goto_9

    .line 1758
    .end local v20    # "uid":Ljava/lang/String;
    .restart local v2    # "uid":Ljava/lang/String;
    :cond_c
    move-object/from16 v20, v2

    .line 1763
    .end local v2    # "uid":Ljava/lang/String;
    .restart local v20    # "uid":Ljava/lang/String;
    :goto_9
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    .line 1766
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1768
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1769
    iget v0, v11, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    .line 1770
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_e

    if-nez v0, :cond_e

    .line 1771
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1772
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1773
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v1, v7, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    .line 1775
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_e
    invoke-virtual/range {p9 .. p9}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->icon:I

    .line 1776
    invoke-virtual/range {p9 .. p9}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->logo:I

    .line 1777
    invoke-virtual/range {p9 .. p9}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->theme:I

    .line 1778
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_f

    .line 1779
    iget v0, v7, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    .line 1781
    :cond_f
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v18, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    if-eqz v9, :cond_11

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v9, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_11

    .line 1784
    :cond_10
    iget-object v0, v9, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_b

    .line 1786
    :cond_11
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1789
    :goto_b
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_12

    .line 1790
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1793
    :cond_12
    iget v0, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 1795
    move-object/from16 v0, p0

    const/16 v16, 0x0

    move/from16 v1, p14

    move-object/from16 v17, v20

    .end local v20    # "uid":Ljava/lang/String;
    .local v17, "uid":Ljava/lang/String;
    move/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v19, v4

    .end local v4    # "cds":Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    .local v19, "cds":Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    move-object/from16 v4, p17

    move-object/from16 v20, v5

    .end local v5    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v20, "ent":Lcom/android/server/AttributeCache$Entry;
    move-object/from16 v5, p18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 1797
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_13

    move/from16 v0, v18

    goto :goto_c

    :cond_13
    move/from16 v0, v16

    :goto_c
    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 1799
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 1800
    const/4 v0, 0x0

    goto :goto_d

    :cond_14
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_d
    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 1802
    invoke-static {v11, v12}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    .line 1804
    if-eqz v12, :cond_17

    .line 1805
    iput-object v12, v7, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1806
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1807
    .local v0, "usageReport":Landroid/app/PendingIntent;
    if-eqz v0, :cond_15

    .line 1808
    new-instance v1, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v1, v0}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1812
    :cond_15
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 1813
    .local v1, "daToken":Landroid/window/WindowContainerToken;
    if-eqz v1, :cond_16

    .line 1814
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_e

    :cond_16
    const/4 v2, 0x0

    :goto_e
    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 1815
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    iput v2, v7, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 1818
    .end local v0    # "usageReport":Landroid/app/PendingIntent;
    .end local v1    # "daToken":Landroid/window/WindowContainerToken;
    :cond_17
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_18

    .line 1819
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    .line 1823
    :cond_18
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mPackageName:Ljava/lang/String;

    .line 1824
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_19

    .line 1825
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mActivityName:Ljava/lang/String;

    .line 1831
    :cond_19
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/OpDisplayContentInjector;->setSourceBoundFromIntent(Landroid/content/Intent;)V

    .line 1832
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mPendingOptionsFromNewActivityRecord:Landroid/app/ActivityOptions;

    .line 1834
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityRecord;

    .line 377
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTicking()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 377
    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityRecord;->getHorizontalCenterOffset(II)I

    move-result v0

    return v0
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p0, "token"    # Landroid/os/IBinder;

    .line 5383
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5384
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resumed activity; dropping state of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5385
    :cond_0
    if-nez v0, :cond_1

    .line 5388
    return-void

    .line 5390
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    .line 5392
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5393
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_2

    .line 5394
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 5397
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 5398
    return-void
.end method

.method private addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .locals 1
    .param p1, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    .line 4106
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4109
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4110
    return-void
.end method

.method private allDrawnStatesConsidered()Z
    .locals 4

    .line 4294
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4295
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4296
    .local v2, "child":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4297
    const/4 v1, 0x0

    return v1

    .line 4294
    .end local v2    # "child":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4300
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method private allowCompleteFinish(Ljava/lang/String;)Z
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;

    .line 2991
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompleteFinishList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2992
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompleteFinishList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2993
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mCompleteFinishList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2994
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2995
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowCompleteFinish:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :cond_0
    return v1

    .line 2992
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3000
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private allowTaskSnapshot()Z
    .locals 6

    .line 8032
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8033
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 8034
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t allow Snapshot for starting window in zoom mode, this="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8035
    :cond_0
    return v1

    .line 8042
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 8043
    const-string v2, "com.oneplus.applocker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8044
    :cond_2
    return v1

    .line 8047
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.oneplus.camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8048
    return v1

    .line 8051
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 8052
    return v2

    .line 8059
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_a

    .line 8060
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 8061
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_9

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 8062
    goto :goto_2

    .line 8065
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastNewIntent:Landroid/content/Intent;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    goto :goto_1

    .line 8066
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    :goto_1
    nop

    .line 8067
    .local v4, "sameIntent":Z
    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 8068
    :cond_8
    return v1

    .line 8059
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "sameIntent":Z
    :cond_9
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8071
    .end local v0    # "i":I
    :cond_a
    return v2
.end method

.method private applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "containingAppBounds"    # Landroid/graphics/Rect;
    .param p3, "containingBounds"    # Landroid/graphics/Rect;

    .line 7496
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 7497
    .local v0, "maxAspectRatio":F
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 7498
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    .line 7500
    .local v2, "minAspectRatio":F
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_0
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_1

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_d

    .line 7502
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 7510
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task in MultiWindowMode. Skip applying aspect ratio for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " maxAspectRatio= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7513
    return-void

    .line 7520
    :cond_3
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GestureButton: skip computeBounds for this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " maxAspectRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7523
    return-void

    .line 7527
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 7528
    .local v4, "containingAppWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 7529
    .local v5, "containingAppHeight":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    .line 7530
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 7532
    .local v6, "containingRatio":F
    move v7, v4

    .line 7533
    .local v7, "activityWidth":I
    move v8, v5

    .line 7535
    .local v8, "activityHeight":I
    cmpl-float v9, v6, v0

    const/high16 v10, 0x3f000000    # 0.5f

    if-lez v9, :cond_6

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_6

    .line 7536
    if-ge v4, v5, :cond_5

    .line 7539
    int-to-float v3, v7

    mul-float/2addr v3, v0

    add-float/2addr v3, v10

    float-to-int v8, v3

    goto :goto_1

    .line 7543
    :cond_5
    int-to-float v3, v8

    mul-float/2addr v3, v0

    add-float/2addr v3, v10

    float-to-int v7, v3

    goto :goto_1

    .line 7545
    :cond_6
    cmpg-float v3, v6, v2

    if-gez v3, :cond_b

    .line 7547
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_9

    const/4 v9, 0x2

    if-eq v3, v9, :cond_8

    .line 7561
    if-ge v4, v5, :cond_7

    .line 7564
    const/4 v3, 0x1

    .local v3, "adjustWidth":Z
    goto :goto_0

    .line 7568
    .end local v3    # "adjustWidth":Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "adjustWidth":Z
    goto :goto_0

    .line 7551
    .end local v3    # "adjustWidth":Z
    :cond_8
    const/4 v3, 0x0

    .line 7552
    .restart local v3    # "adjustWidth":Z
    goto :goto_0

    .line 7556
    .end local v3    # "adjustWidth":Z
    :cond_9
    const/4 v3, 0x1

    .line 7557
    .restart local v3    # "adjustWidth":Z
    nop

    .line 7572
    :goto_0
    if-eqz v3, :cond_a

    .line 7573
    int-to-float v9, v8

    div-float/2addr v9, v2

    add-float/2addr v9, v10

    float-to-int v7, v9

    goto :goto_1

    .line 7575
    :cond_a
    int-to-float v9, v7

    div-float/2addr v9, v2

    add-float/2addr v9, v10

    float-to-int v8, v9

    .line 7579
    .end local v3    # "adjustWidth":Z
    :cond_b
    :goto_1
    if-gt v4, v7, :cond_c

    if-gt v5, v8, :cond_c

    .line 7581
    return-void

    .line 7588
    :cond_c
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v9, p3, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v3, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 7591
    return-void

    .line 7505
    .end local v4    # "containingAppWidth":I
    .end local v5    # "containingAppHeight":I
    .end local v6    # "containingRatio":F
    .end local v7    # "activityWidth":I
    .end local v8    # "activityHeight":I
    :cond_d
    :goto_2
    return-void
.end method

.method private canLaunchAssistActivity(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2316
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    .line 2318
    .local v0, "assistComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 2319
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2321
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static canLaunchDreamActivity(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .line 2325
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2326
    return v0

    .line 2329
    :cond_0
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2330
    return v0

    .line 2333
    :cond_1
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    .line 2334
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    .line 2339
    .local v1, "dreamManager":Landroid/service/dreams/DreamManagerInternal;
    invoke-virtual {v1, v0}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 2340
    .local v2, "activeDream":Landroid/content/ComponentName;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v4

    .line 2341
    .local v4, "activeDoze":Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->getPackageName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2342
    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->getPackageName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v0, v3

    .line 2341
    :cond_3
    return v0
.end method

.method private checkEnterPictureInPictureAppOpsState()Z
    .locals 5

    .line 2652
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canEnterPictureInPicture(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2653
    return v1

    .line 2656
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v2, 0x43

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private cleanUpActivityServices()V
    .locals 1

    .line 3510
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_0

    .line 3511
    return-void

    .line 3514
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->disconnectActivityFromServices()V

    .line 3516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3517
    return-void
.end method

.method private clearThumbnail()V
    .locals 1

    .line 6825
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    if-nez v0, :cond_0

    .line 6826
    return-void

    .line 6828
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainerThumbnail;->destroy()V

    .line 6829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    .line 6830
    return-void
.end method

.method private computeConfigurationAfterMultiWindowModeChange()V
    .locals 4

    .line 1314
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1315
    .local v0, "newConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1316
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1317
    .local v1, "outBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1318
    .local v2, "parentConfig":Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v1, v1, v2}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 1319
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1320
    return-void
.end method

.method private containsTurnScreenOnWindow()Z
    .locals 4

    .line 8244
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8245
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsTurnScreenOnWindow:Z

    return v0

    .line 8247
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 8248
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 8249
    return v1

    .line 8247
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8252
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private continueLaunchTicking()Z
    .locals 5

    .line 5707
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5708
    return v1

    .line 5711
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5712
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_1

    .line 5713
    return v1

    .line 5716
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->removeLaunchTickMessages()V

    .line 5717
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5718
    const/4 v1, 0x1

    return v1
.end method

.method private createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 6538
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0x66889fc3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6539
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 6540
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6541
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - animation-bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 6542
    const-string v1, "ActivityRecord.createAnimationBoundsLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 6543
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 6544
    .local v1, "boundsLayer":Landroid/view/SurfaceControl;
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6545
    return-object v1
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .locals 2
    .param p0, "createTime"    # J
    .param p2, "taskId"    # I

    .line 6277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_activity_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .locals 5
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2051
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2052
    return v0

    .line 2055
    :cond_0
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x4fe704c4

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2056
    :cond_1
    new-instance v0, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    .line 2058
    const/4 v0, 0x1

    return v0
.end method

.method private crossesHorizontalSizeThreshold(II)Z
    .locals 1
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHorizontalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private static crossesSizeThreshold([III)Z
    .locals 4
    .param p0, "thresholds"    # [I
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 1181
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1182
    return v0

    .line 1184
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1185
    aget v3, p0, v1

    .line 1186
    .local v3, "threshold":I
    if-ge p1, v3, :cond_1

    if-ge p2, v3, :cond_2

    :cond_1
    if-lt p1, v3, :cond_3

    if-ge p2, v3, :cond_3

    .line 1188
    :cond_2
    return v2

    .line 1184
    .end local v3    # "threshold":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1191
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method private crossesSmallestSizeThreshold(II)Z
    .locals 1
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 1162
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSmallestSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private crossesVerticalSizeThreshold(II)Z
    .locals 1
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 1158
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mVerticalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private destroySurfaces(Z)V
    .locals 7
    .param p1, "cleanupOnResume"    # Z

    .line 5013
    const/4 v0, 0x0

    .line 5016
    .local v0, "destroyedSomething":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5017
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 5018
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 5021
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v5, v6}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->handleDestroySurfaces(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5022
    goto :goto_1

    .line 5025
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v0, v5

    .line 5017
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5027
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 5028
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 5029
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 5030
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 5032
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_2
    return-void
.end method

.method private finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 9
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;
    .param p3, "resultGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2753
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2754
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/OpAppLockerInjector;->unLockAppIfNeed(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2756
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2761
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_4

    .line 2762
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_1

    .line 2763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding result to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " who="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " req="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " res="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v2, :cond_2

    .line 2768
    if-eqz p2, :cond_2

    .line 2769
    invoke-virtual {p2, v2}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 2772
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_3

    .line 2773
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2774
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    .line 2773
    invoke-interface {v0, p3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2776
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object v4, p0

    move v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2777
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    .line 2778
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_5

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No result destination from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_5
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2786
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 2787
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2788
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    .line 2789
    return-void
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p0, "token"    # Landroid/os/IBinder;

    .line 1612
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord$Token;->access$100(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad activity token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1615
    const/4 v1, 0x0

    return-object v1
.end method

.method private freezeBounds()V
    .locals 3

    .line 3448
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 3450
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3452
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3454
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 3457
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 3458
    return-void
.end method

.method private getAnimationLayer()I
    .locals 2

    .line 6568
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6569
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v0

    .local v0, "layer":I
    goto :goto_0

    .line 6574
    .end local v0    # "layer":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v0

    .line 6577
    .restart local v0    # "layer":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mNeedsZBoost:Z

    if-eqz v1, :cond_1

    .line 6578
    const v1, 0x2fb7ba90

    add-int/2addr v0, v1

    .line 6580
    :cond_1
    return v0
.end method

.method private getConfigurationChanges(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 7835
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7836
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 7839
    .local v1, "changes":I
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_2

    .line 7840
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->crossesHorizontalSizeThreshold(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 7842
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->crossesVerticalSizeThreshold(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 7844
    .local v2, "crosses":Z
    :goto_1
    if-nez v2, :cond_2

    .line 7845
    and-int/lit16 v1, v1, -0x401

    .line 7848
    .end local v2    # "crosses":Z
    :cond_2
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_3

    .line 7849
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 7850
    .local v2, "oldSmallest":I
    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 7851
    .local v3, "newSmallest":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->crossesSmallestSizeThreshold(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 7852
    and-int/lit16 v1, v1, -0x801

    .line 7856
    .end local v2    # "oldSmallest":I
    .end local v3    # "newSmallest":I
    :cond_3
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    .line 7857
    const v2, -0x20000001

    and-int/2addr v1, v2

    .line 7860
    :cond_4
    return v1
.end method

.method private static getHorizontalCenterOffset(II)I
    .locals 2
    .param p0, "viewportW"    # I
    .param p1, "contentW"    # I

    .line 7367
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 1853
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 1854
    .local v0, "lockTaskLaunchMode":I
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1857
    :cond_0
    const/4 v0, 0x0

    .line 1859
    :cond_1
    if-eqz p1, :cond_2

    .line 1860
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v1

    .line 1861
    .local v1, "useLockTask":Z
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 1862
    const/4 v0, 0x3

    .line 1865
    .end local v1    # "useLockTask":Z
    :cond_2
    return v0
.end method

.method private static getPackageName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 2346
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 7783
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    .line 6239
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6240
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 6241
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 6243
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getStartingWindowType(ZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I
    .locals 3
    .param p1, "newTask"    # Z
    .param p2, "taskSwitch"    # Z
    .param p3, "processRunning"    # Z
    .param p4, "allowTaskSnapshot"    # Z
    .param p5, "activityCreated"    # Z
    .param p6, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2142
    const/4 v0, 0x2

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    if-eqz p2, :cond_0

    if-nez p5, :cond_0

    goto :goto_0

    .line 2144
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    .line 2145
    invoke-virtual {p0, p6}, Lcom/android/server/wm/ActivityRecord;->isSnapshotCompatible(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2146
    const/4 v0, 0x1

    return v0

    .line 2148
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2149
    return v0

    .line 2151
    :cond_2
    return v1

    .line 2153
    :cond_3
    return v1

    .line 2143
    :cond_4
    :goto_0
    return v0
.end method

.method static getTaskAffinityWithUid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "affinity"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 1845
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1846
    .local v0, "uidStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1849
    :cond_0
    return-object p0
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .locals 5
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "onlyRoot"    # Z

    .line 6221
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6222
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6225
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 6226
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-lez v3, :cond_1

    .line 6228
    return v1

    .line 6230
    :cond_1
    iget v1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    return v1

    .line 6223
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_0
    return v1
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 6173
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_2

    .line 6174
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 6175
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 6176
    return-object p0

    .line 6179
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 6180
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_1

    .line 6181
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 6183
    :cond_1
    if-eqz v1, :cond_2

    .line 6184
    return-object v1

    .line 6187
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    return-object p0
.end method

.method private hasNonDefaultColorWindow()Z
    .locals 2

    .line 3943
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$YY5kCNb4uWg5W_2lbH3ZOqirP1g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$YY5kCNb4uWg5W_2lbH3ZOqirP1g;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private static hasResizeChange(I)Z
    .locals 1
    .param p0, "change"    # I

    .line 7869
    and-int/lit16 v0, p0, 0xd80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAlwaysFocusable()Z
    .locals 2

    .line 2661
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2281
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2282
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2283
    const-string v0, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2284
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2285
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2286
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2281
    :goto_0
    return v1
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    .line 6234
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6235
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 8200
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isMainIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 2290
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2291
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2293
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2294
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2290
    :goto_0
    return v1
.end method

.method private static isResizeOnlyChange(I)Z
    .locals 1
    .param p0, "change"    # I

    .line 7864
    and-int/lit16 v0, p0, -0xd81

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isResolverActivity(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 1620
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$applyOptionsLocked$5(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    .line 4177
    return-void
.end method

.method static synthetic lambda$hasNonDefaultColorWindow$4(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 3943
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$jAKnTXYErEwplxJ5lQgj44-M9_c(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimationIfOvarlay(I)V

    return-void
.end method

.method static synthetic lambda$postApplyAnimation$7(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 4742
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v1, "immediately hidden"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$prAsqx_JQJTqW1jNxmkuU3AV8AU(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeStartingWindow$3(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .locals 6
    .param p0, "surface"    # Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2237
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0x67d86920

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2239
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    goto :goto_0

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Exception when removing starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$setVisibility$6(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 4536
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4537
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 4541
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->resetLastContentInsets()V

    .line 4543
    :cond_0
    return-void
.end method

.method static synthetic lambda$showAllWindowsLocked$8(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 5997
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performing show on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5998
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 5999
    return-void
.end method

.method private loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;

    .line 6710
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 6715
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 6716
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    .line 6717
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    :goto_0
    nop

    .line 6718
    .local v7, "appRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v8, v2

    .line 6719
    .local v8, "insets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6720
    .local v2, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v6, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v11, v2, Landroid/content/res/Configuration;->uiMode:I

    iget v12, v2, Landroid/content/res/Configuration;->orientation:I

    move-object v9, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;Lcom/android/server/wm/WindowContainer;II)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3
.end method

.method private mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 5743
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private occludesParent(Z)Z
    .locals 1
    .param p1, "includingFinishing"    # Z

    .line 2414
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    .line 2415
    const/4 v0, 0x0

    return v0

    .line 2417
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    return v0
.end method

.method private static offsetBounds(Landroid/content/res/Configuration;II)V
    .locals 1
    .param p0, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 7371
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 7372
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 7373
    return-void
.end method

.method private onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "changes"    # I
    .param p2, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 7826
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7827
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    const/16 v1, 0x200

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 7828
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7827
    :goto_0
    return v1
.end method

.method private postApplyAnimation(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 4696
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    .line 4697
    .local v0, "delayed":Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4701
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 4702
    if-eqz p1, :cond_0

    .line 4705
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 4706
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 4716
    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4717
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    .line 4720
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4721
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 4722
    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4725
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 4738
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4739
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 4741
    :try_start_0
    sget-object v3, Lcom/android/server/wm/-$$Lambda$ActivityRecord$TmL40hmGhjc2_QavTI0gwtolvY8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$TmL40hmGhjc2_QavTI0gwtolvY8;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4744
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4745
    goto :goto_0

    .line 4744
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4745
    throw v1

    .line 4747
    :cond_4
    :goto_0
    return-void
.end method

.method private prepareActivityHideTransitionAnimation(I)V
    .locals 2
    .param p1, "transit"    # I

    .line 2981
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2982
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2983
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2984
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2985
    return-void
.end method

.method private prepareActivityHideTransitionAnimationIfOvarlay(I)V
    .locals 1
    .param p1, "transit"    # I

    .line 2975
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_0

    .line 2976
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimation(I)V

    .line 2978
    :cond_0
    return-void
.end method

.method private removeAppTokenFromDisplay()V
    .locals 3

    .line 2247
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    if-nez v0, :cond_0

    return-void

    .line 2249
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2250
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_1

    .line 2251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAppTokenFromDisplay: Attempted to remove token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from non-existing displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2251
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    return-void

    .line 2256
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2257
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord$Token;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    .line 2258
    return-void
.end method

.method private removeDestroyTimeout()V
    .locals 2

    .line 5516
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5517
    return-void
.end method

.method private removePauseTimeout()V
    .locals 2

    .line 5512
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5513
    return-void
.end method

.method private removeStopTimeout()V
    .locals 2

    .line 5520
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5521
    return-void
.end method

.method private resolveFullscreenConfiguration(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 7197
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7198
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 7199
    .local v1, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 7200
    .local v2, "parentBounds":Landroid/graphics/Rect;
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 7203
    .local v3, "resolvedBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 7204
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/wm/ActivityRecord;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7207
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 7208
    .local v4, "needToBeCentered":Z
    if-eqz v4, :cond_0

    .line 7209
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7211
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 7213
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7216
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 7217
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    .line 7216
    invoke-virtual {v5, v0, p1, v6}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V

    .line 7219
    :cond_1
    if-eqz v4, :cond_2

    .line 7221
    nop

    .line 7222
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 7221
    invoke-static {v5, v6}, Lcom/android/server/wm/ActivityRecord;->getHorizontalCenterOffset(II)I

    move-result v5

    .line 7223
    .local v5, "offsetX":I
    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 7225
    .end local v5    # "offsetX":I
    :cond_2
    return-void
.end method

.method private resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;)V
    .locals 24
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 7232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 7236
    .local v2, "resolvedConfig":Landroid/content/res/Configuration;
    sget-boolean v3, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7237
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const/16 v6, 0x64

    if-ne v3, v6, :cond_0

    .line 7238
    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    .line 7239
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 7240
    iput v5, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    .line 7241
    return-void

    .line 7245
    :cond_0
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 7246
    .local v3, "resolvedBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v6

    .line 7247
    .local v6, "requestedOrientation":I
    if-eqz v6, :cond_1

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7248
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->ignoreRotationForApps()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 7249
    .local v9, "orientationRequested":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 7250
    move v14, v6

    goto :goto_1

    .line 7251
    :cond_2
    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    move v14, v10

    :goto_1
    nop

    .line 7252
    .local v14, "orientation":I
    iget-object v10, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v10

    .line 7253
    .local v10, "rotation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant()Z

    move-result v17

    .line 7254
    .local v17, "canChangeOrientation":Z
    if-eqz v17, :cond_3

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-boolean v11, v11, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-nez v11, :cond_3

    .line 7256
    iget-object v11, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11, v10}, Landroid/app/WindowConfiguration;->setRotation(I)V

    goto :goto_2

    .line 7258
    :cond_3
    iget-object v11, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v11

    .line 7259
    .local v11, "overrideRotation":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 7260
    move v10, v11

    move/from16 v18, v10

    goto :goto_3

    .line 7268
    .end local v11    # "overrideRotation":I
    :cond_4
    :goto_2
    move/from16 v18, v10

    .end local v10    # "rotation":I
    .local v18, "rotation":I
    :goto_3
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v10

    .line 7269
    .local v15, "containingAppBounds":Landroid/graphics/Rect;
    iget-object v13, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 7270
    .local v13, "containingBounds":Landroid/graphics/Rect;
    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-object v11, v15

    move-object v12, v13

    move-object v7, v13

    .end local v13    # "containingBounds":Landroid/graphics/Rect;
    .local v7, "containingBounds":Landroid/graphics/Rect;
    move/from16 v13, v18

    move-object v8, v15

    .end local v15    # "containingAppBounds":Landroid/graphics/Rect;
    .local v8, "containingAppBounds":Landroid/graphics/Rect;
    move v15, v9

    move/from16 v16, v17

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 7272
    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7274
    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-boolean v10, v10, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-nez v10, :cond_5

    .line 7275
    invoke-direct {v0, v3, v8, v7}, Lcom/android/server/wm/ActivityRecord;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7279
    :cond_5
    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 7280
    .local v10, "fillContainer":Z
    if-nez v10, :cond_6

    .line 7282
    iget v11, v8, Landroid/graphics/Rect;->left:I

    iput v11, v3, Landroid/graphics/Rect;->left:I

    .line 7288
    :cond_6
    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v12, v0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {v11, v2, v1, v12}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 7291
    nop

    .line 7292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->screenLayout:I

    iget v12, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 7291
    invoke-static {v11, v12, v13}, Lcom/android/server/wm/Task;->computeScreenLayoutOverride(III)I

    move-result v11

    iput v11, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 7297
    iget v11, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v12, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v11, v12, :cond_7

    .line 7298
    iget v11, v1, Landroid/content/res/Configuration;->orientation:I

    iput v11, v2, Landroid/content/res/Configuration;->orientation:I

    .line 7322
    :cond_7
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 7323
    .local v11, "parentBounds":Landroid/graphics/Rect;
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 7324
    .local v12, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v13, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 7325
    .local v13, "resolvedAppBounds":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 7326
    .local v15, "contentW":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 7327
    .local v4, "contentH":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 7328
    .local v5, "viewportW":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 7330
    .local v1, "viewportH":I
    if-gt v15, v5, :cond_8

    if-gt v4, v1, :cond_8

    .line 7331
    move/from16 v23, v1

    move/from16 v21, v6

    move-object/from16 v22, v7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    move/from16 v21, v6

    .end local v6    # "requestedOrientation":I
    .local v21, "requestedOrientation":I
    int-to-float v6, v5

    move-object/from16 v22, v7

    .end local v7    # "containingBounds":Landroid/graphics/Rect;
    .local v22, "containingBounds":Landroid/graphics/Rect;
    int-to-float v7, v15

    div-float/2addr v6, v7

    int-to-float v7, v1

    move/from16 v23, v1

    .end local v1    # "viewportH":I
    .local v23, "viewportH":I
    int-to-float v1, v4

    div-float/2addr v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_4
    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    .line 7332
    iget v1, v12, Landroid/graphics/Rect;->top:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v6

    .line 7333
    .local v1, "screenTopInset":I
    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    if-eq v1, v6, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    move v6, v7

    .line 7334
    .local v6, "topNotAligned":Z
    iget v7, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v19

    if-nez v7, :cond_b

    if-eqz v6, :cond_a

    goto :goto_6

    .line 7344
    :cond_a
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    move/from16 v16, v4

    goto :goto_7

    .line 7335
    :cond_b
    :goto_6
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v7, :cond_c

    .line 7336
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 7338
    :cond_c
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7339
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "contentH":I
    .local v16, "contentH":I
    invoke-virtual {v7, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 7340
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v7, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 7342
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 7349
    :goto_7
    int-to-float v4, v15

    iget v7, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v5, v4}, Lcom/android/server/wm/ActivityRecord;->getHorizontalCenterOffset(II)I

    move-result v4

    .line 7352
    .local v4, "offsetX":I
    if-eqz v10, :cond_d

    iget v7, v11, Landroid/graphics/Rect;->left:I

    goto :goto_8

    :cond_d
    iget v7, v12, Landroid/graphics/Rect;->left:I

    :goto_8
    add-int/2addr v7, v4

    .line 7353
    .local v7, "screenPosX":I
    move/from16 v19, v1

    .end local v1    # "screenTopInset":I
    .local v19, "screenTopInset":I
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 7354
    .local v1, "screenPosY":I
    if-nez v7, :cond_f

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v20, v4

    goto :goto_a

    .line 7355
    :cond_f
    :goto_9
    move/from16 v20, v4

    .end local v4    # "offsetX":I
    .local v20, "offsetX":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_10

    .line 7356
    invoke-virtual {v4, v7, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 7359
    :cond_10
    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v4

    .line 7360
    .local v4, "dx":I
    iget v0, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    .line 7361
    .local v0, "dy":I
    invoke-static {v2, v4, v0}, Lcom/android/server/wm/ActivityRecord;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 7363
    .end local v0    # "dy":I
    .end local v4    # "dx":I
    :goto_a
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;
    .locals 36
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 8115
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 8116
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 8117
    .local v2, "persistentState":Landroid/os/PersistableBundle;
    const/4 v3, 0x0

    .line 8118
    .local v3, "launchedFromUid":I
    const/4 v4, 0x0

    .line 8119
    .local v4, "launchedFromPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 8120
    .local v5, "launchedFromFeature":Ljava/lang/String;
    const/4 v6, 0x0

    .line 8121
    .local v6, "resolvedType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 8122
    .local v7, "componentSpecified":Z
    const/4 v8, 0x0

    .line 8123
    .local v8, "userId":I
    const-wide/16 v9, -0x1

    .line 8124
    .local v9, "createTime":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 8125
    .local v11, "outerDepth":I
    new-instance v12, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v12}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 8127
    .local v12, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .local v13, "attrNdx":I
    :goto_0
    const-string v15, "ActivityTaskManager"

    if-ltz v13, :cond_8

    .line 8128
    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 8129
    .local v14, "attrName":Ljava/lang/String;
    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 8132
    .local v17, "attrValue":Ljava/lang/String;
    move-object/from16 v18, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8133
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    move-object/from16 v19, v2

    goto/16 :goto_1

    .line 8134
    :cond_0
    const-string v1, "launched_from_uid"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8135
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    move-object/from16 v19, v2

    .end local v3    # "launchedFromUid":I
    .local v1, "launchedFromUid":I
    goto/16 :goto_1

    .line 8136
    .end local v1    # "launchedFromUid":I
    .restart local v3    # "launchedFromUid":I
    :cond_1
    const-string v1, "launched_from_package"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8137
    move-object/from16 v1, v17

    move-object v4, v1

    move-object/from16 v19, v2

    .end local v4    # "launchedFromPackage":Ljava/lang/String;
    .local v1, "launchedFromPackage":Ljava/lang/String;
    goto :goto_1

    .line 8138
    .end local v1    # "launchedFromPackage":Ljava/lang/String;
    .restart local v4    # "launchedFromPackage":Ljava/lang/String;
    :cond_2
    const-string v1, "launched_from_feature"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8139
    move-object/from16 v1, v17

    move-object v5, v1

    move-object/from16 v19, v2

    .end local v5    # "launchedFromFeature":Ljava/lang/String;
    .local v1, "launchedFromFeature":Ljava/lang/String;
    goto :goto_1

    .line 8140
    .end local v1    # "launchedFromFeature":Ljava/lang/String;
    .restart local v5    # "launchedFromFeature":Ljava/lang/String;
    :cond_3
    const-string v1, "resolved_type"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8141
    move-object/from16 v1, v17

    move-object v6, v1

    move-object/from16 v19, v2

    .end local v6    # "resolvedType":Ljava/lang/String;
    .local v1, "resolvedType":Ljava/lang/String;
    goto :goto_1

    .line 8142
    .end local v1    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "resolvedType":Ljava/lang/String;
    :cond_4
    const-string v1, "component_specified"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8143
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move v7, v1

    move-object/from16 v19, v2

    .end local v7    # "componentSpecified":Z
    .local v1, "componentSpecified":Z
    goto :goto_1

    .line 8144
    .end local v1    # "componentSpecified":Z
    .restart local v7    # "componentSpecified":Z
    :cond_5
    const-string v1, "user_id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8145
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v8, v1

    move-object/from16 v19, v2

    .end local v8    # "userId":I
    .local v1, "userId":I
    goto :goto_1

    .line 8146
    .end local v1    # "userId":I
    .restart local v8    # "userId":I
    :cond_6
    const-string v1, "task_description_"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 8147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .local v19, "persistentState":Landroid/os/PersistableBundle;
    const-string v2, "Unknown ActivityRecord attribute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8146
    .end local v19    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    :cond_7
    move-object/from16 v19, v2

    .line 8127
    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v17    # "attrValue":Ljava/lang/String;
    .restart local v19    # "persistentState":Landroid/os/PersistableBundle;
    :goto_1
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    const/4 v14, 0x1

    goto/16 :goto_0

    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "persistentState":Landroid/os/PersistableBundle;
    .local v1, "intent":Landroid/content/Intent;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    :cond_8
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 8150
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .end local v13    # "attrNdx":I
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v19    # "persistentState":Landroid/os/PersistableBundle;
    invoke-virtual {v12, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 8153
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v14, v13

    const/4 v0, 0x1

    .local v14, "event":I
    if-eq v13, v0, :cond_e

    const/4 v13, 0x3

    if-ne v14, v13, :cond_a

    .line 8154
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-lt v13, v11, :cond_9

    goto :goto_3

    :cond_9
    move/from16 v34, v11

    goto :goto_5

    .line 8155
    :cond_a
    :goto_3
    const/4 v13, 0x2

    if-ne v14, v13, :cond_d

    .line 8156
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 8159
    .local v13, "name":Ljava/lang/String;
    const-string v0, "intent"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8160
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    move/from16 v34, v11

    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 8163
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v0, "persistable_bundle"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8164
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v2, v0

    move/from16 v34, v11

    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .local v0, "persistentState":Landroid/os/PersistableBundle;
    goto :goto_4

    .line 8168
    .end local v0    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v11

    .end local v11    # "outerDepth":I
    .local v34, "outerDepth":I
    const-string v11, "restoreActivity: unexpected name="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8169
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 8171
    .end local v13    # "name":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    move/from16 v11, v34

    goto :goto_2

    .line 8155
    .end local v34    # "outerDepth":I
    .restart local v11    # "outerDepth":I
    :cond_d
    move/from16 v34, v11

    .end local v11    # "outerDepth":I
    .restart local v34    # "outerDepth":I
    move-object/from16 v0, p0

    goto :goto_2

    .line 8153
    .end local v34    # "outerDepth":I
    .restart local v11    # "outerDepth":I
    :cond_e
    move/from16 v34, v11

    .line 8174
    .end local v11    # "outerDepth":I
    .restart local v34    # "outerDepth":I
    :goto_5
    if-eqz v1, :cond_10

    .line 8178
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8179
    .local v11, "service":Lcom/android/server/wm/ActivityTaskManagerService;
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 8180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 8179
    move-object/from16 v15, p1

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move/from16 v20, v8

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    .line 8181
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v13, :cond_f

    .line 8185
    new-instance v35, Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v15, v35

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 8187
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v16, v11

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v1

    move-object/from16 v23, v6

    move-object/from16 v24, v13

    move/from16 v29, v7

    move-object/from16 v31, p1

    invoke-direct/range {v15 .. v33}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 8192
    .local v15, "r":Lcom/android/server/wm/ActivityRecord;
    iput-object v2, v15, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    .line 8193
    iput-object v12, v15, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 8194
    iput-wide v9, v15, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 8196
    return-object v15

    .line 8182
    .end local v15    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .local v16, "persistentState":Landroid/os/PersistableBundle;
    const-string v2, "restoreActivity resolver error. Intent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resolvedType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 8175
    .end local v11    # "service":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    :cond_10
    move-object/from16 v16, v2

    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v16    # "persistentState":Landroid/os/PersistableBundle;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreActivity error intent="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const-string v1, ", displayId="

    const-string v2, "ActivityTaskManager"

    if-nez v0, :cond_2

    .line 1203
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t report activity moved to display - client not running, activityRecord="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_1
    return-void

    .line 1209
    :cond_2
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting activity moved to display, activityRecord="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 1214
    invoke-static {p1, p2}, Landroid/app/servertransaction/MoveToDisplayItem;->obtain(ILandroid/content/res/Configuration;)Landroid/app/servertransaction/MoveToDisplayItem;

    move-result-object v3

    .line 1213
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    .line 1218
    :goto_0
    return-void
.end method

.method private scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_1

    .line 1222
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t report activity configuration update - client not running, activityRecord="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_0
    return-void

    .line 1228
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending new config to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 1232
    invoke-static {p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    move-result-object v3

    .line 1231
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1236
    :goto_0
    return-void
.end method

.method private setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 5
    .param p1, "componentSpecified"    # Z
    .param p2, "launchedFromUid"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 2351
    const/4 v0, 0x0

    .line 2352
    .local v0, "activityType":I
    const/4 v1, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p5}, Lcom/android/server/wm/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2353
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/wm/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2355
    const/4 v0, 0x2

    .line 2357
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 2360
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_0

    .line 2362
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RecentTasks;->isRecentsComponent(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2364
    const/4 v0, 0x3

    goto :goto_0

    .line 2365
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2366
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2367
    const/4 v0, 0x4

    goto :goto_0

    .line 2368
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2369
    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->canLaunchDreamActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Landroid/service/dreams/DreamActivity;

    .line 2370
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v1, v2, :cond_5

    .line 2371
    const/4 v0, 0x5

    .line 2373
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 2374
    return-void
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "global"    # Landroid/content/res/Configuration;
    .param p2, "override"    # Landroid/content/res/Configuration;

    .line 6966
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 6967
    return-void
.end method

.method private setOrientation(IZ)V
    .locals 8
    .param p1, "requestedOrientation"    # I
    .param p2, "freezeScreenIfNeeded"    # Z

    .line 6886
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Token;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6887
    .local v0, "binder":Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0, p1, v0, p0}, Lcom/android/server/wm/ActivityRecord;->setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 6891
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_1

    .line 6892
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    .line 6899
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 6900
    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6899
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6901
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 6903
    :cond_2
    return-void
.end method

.method private shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activeActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 5316
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5317
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5318
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5316
    :goto_0
    return v0
.end method

.method private shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .locals 4
    .param p1, "changes"    # I
    .param p2, "changesConfig"    # Landroid/content/res/Configuration;

    .line 7795
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    .line 7796
    .local v0, "configChanged":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result v1

    .line 7802
    .local v1, "onlyVrUiModeChanged":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 7805
    or-int/lit16 v0, v0, 0x200

    .line 7818
    :cond_0
    not-int v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private shouldStartActivity()Z
    .locals 1

    .line 5328
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static startingWindowStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 856
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 862
    :cond_0
    const-string v0, "STARTING_WINDOW_REMOVED"

    return-object v0

    .line 860
    :cond_1
    const-string v0, "STARTING_WINDOW_SHOWN"

    return-object v0

    .line 858
    :cond_2
    const-string v0, "STARTING_WINDOW_NOT_SHOWN"

    return-object v0
.end method

.method private supportsResizeableMultiWindow()Z
    .locals 1

    .line 2539
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2540
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2543
    invoke-static {v0}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2539
    :goto_0
    return v0
.end method

.method private transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "fromActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3847
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3849
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unfreezeBounds()V
    .locals 2

    .line 3492
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3493
    return-void

    .line 3495
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 3496
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3497
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 3499
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3500
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3501
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 3499
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3503
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3504
    return-void
.end method

.method private updateColorTransform()V
    .locals 4

    .line 1415
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    .line 1418
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1420
    :cond_0
    return-void
.end method

.method private updateSizeCompatMode()V
    .locals 5

    .line 7083
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7087
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7088
    .local v0, "parentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7092
    return-void

    .line 7095
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 7096
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 7103
    .local v2, "fullConfig":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->colorMode:I

    iput v3, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 7104
    iget v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 7107
    iget v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 7108
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7111
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7112
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    .line 7111
    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 7116
    :cond_2
    new-instance v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowContainer;)V

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 7117
    return-void

    .line 7085
    .end local v0    # "parentConfig":Landroid/content/res/Configuration;
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v2    # "fullConfig":Landroid/content/res/Configuration;
    :cond_3
    :goto_0
    return-void
.end method

.method private updateTaskDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 4401
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object p1, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    .line 4402
    return-void
.end method


# virtual methods
.method activityPaused(Z)V
    .locals 8
    .param p1, "timeout"    # Z

    .line 5464
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity paused: token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5469
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 5470
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 5472
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x1

    if-ne v3, p0, :cond_3

    .line 5473
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to PAUSED: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5474
    if-eqz p1, :cond_1

    const-string v5, " (due to timeout)"

    goto :goto_0

    :cond_1
    const-string v5, " (pause complete)"

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5473
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 5477
    :try_start_0
    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5479
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5480
    nop

    .line 5481
    return-void

    .line 5479
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5480
    throw v1

    .line 5483
    :cond_3
    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 5484
    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_4

    .line 5485
    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v7, "(none)"

    .line 5483
    :goto_1
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/wm/EventLogTags;->writeWmFailedToPause(IILjava/lang/String;Ljava/lang/String;)V

    .line 5486
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5487
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 5488
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v4, "activityPausedLocked"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5489
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6

    .line 5490
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing finish of failed to pause activity: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5492
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 5498
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5499
    return-void
.end method

.method activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "newIcicle"    # Landroid/os/Bundle;
    .param p2, "newPersistentState"    # Landroid/os/PersistableBundle;
    .param p3, "description"    # Ljava/lang/CharSequence;

    .line 5624
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5625
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5626
    .local v1, "isStopping":Z
    :goto_0
    const-string v2, "ActivityTaskManager"

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_1

    .line 5627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    .line 5629
    return-void

    .line 5631
    :cond_1
    if-eqz p2, :cond_2

    .line 5632
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    .line 5633
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 5636
    :cond_2
    if-eqz p1, :cond_3

    .line 5639
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    .line 5640
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 5641
    invoke-direct {p0, p3}, Lcom/android/server/wm/ActivityRecord;->updateTaskDescription(Ljava/lang/CharSequence;)V

    .line 5643
    :cond_3
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving icicle of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v3, :cond_9

    .line 5645
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to STOPPED: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (stop complete)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5646
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    .line 5647
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 5648
    if-eqz v1, :cond_6

    .line 5649
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 5650
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v3, "activityStoppedLocked"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5653
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->notifyAppStopped()V

    .line 5655
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_7

    .line 5656
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    goto :goto_1

    .line 5658
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v2, :cond_8

    .line 5659
    const-string v2, "stop-config"

    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 5660
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_1

    .line 5662
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/RootWindowContainer;->updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V

    .line 5666
    :cond_9
    :goto_1
    return-void
.end method

.method addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 7
    .param p1, "from"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;

    .line 4052
    new-instance v6, Lcom/android/server/wm/ActivityResult;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityResult;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4054
    .local v0, "r":Lcom/android/server/wm/ActivityResult;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 4055
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4057
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4058
    return-void
.end method

.method addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZ)Z
    .locals 24
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "theme"    # I
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p5, "labelRes"    # I
    .param p6, "icon"    # I
    .param p7, "logo"    # I
    .param p8, "windowFlags"    # I
    .param p9, "transferFrom"    # Landroid/os/IBinder;
    .param p10, "newTask"    # Z
    .param p11, "taskSwitch"    # Z
    .param p12, "processRunning"    # Z
    .param p13, "allowTaskSnapshot"    # Z
    .param p14, "activityCreated"    # Z

    .line 1919
    move-object/from16 v7, p0

    move/from16 v15, p2

    move/from16 v14, p10

    move/from16 v13, p11

    move/from16 v12, p12

    move/from16 v11, p14

    invoke-static {v7, v14, v13, v12, v11}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->reviseWindowFlagsForStarting(Lcom/android/server/wm/ActivityRecord;ZZZZ)V

    .line 1925
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->okToDisplay()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 1926
    return v8

    .line 1929
    :cond_0
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_1

    .line 1930
    return v8

    .line 1933
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    .line 1934
    .local v10, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1936
    return v8

    .line 1941
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_3

    .line 1942
    return v8

    .line 1946
    :cond_3
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 1947
    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v9

    .line 1955
    .local v9, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    const/16 v16, 0x0

    .line 1956
    .local v16, "type":I
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkSplashWindowFlag()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1957
    const/4 v0, 0x2

    .end local v16    # "type":I
    .local v0, "type":I
    goto :goto_0

    .line 1959
    .end local v0    # "type":I
    .restart local v16    # "type":I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityRecord;->getStartingWindowType(ZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I

    move-result v0

    .line 1964
    .end local v16    # "type":I
    .restart local v0    # "type":I
    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1965
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1968
    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    .line 1969
    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_5

    .line 1972
    return v8

    .line 1975
    :cond_5
    invoke-direct {v7, v9}, Lcom/android/server/wm/ActivityRecord;->createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v1

    return v1

    .line 1981
    :cond_6
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    int-to-long v5, v15

    .local v5, "protoLogParam0":J
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v1, v8

    const v8, -0x6a3e1314

    invoke-static {v3, v8, v2, v4, v1}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1982
    .end local v5    # "protoLogParam0":J
    :cond_7
    if-eqz v15, :cond_f

    .line 1983
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v1

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    move-object/from16 v6, p1

    invoke-virtual {v1, v6, v15, v3, v5}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 1986
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-nez v1, :cond_8

    .line 1989
    const/4 v3, 0x0

    return v3

    .line 1991
    :cond_8
    const/4 v3, 0x0

    iget-object v5, v1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v8, 0x5

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1993
    .local v5, "windowIsTranslucent":Z
    iget-object v8, v1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x4

    invoke-virtual {v8, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1995
    .local v4, "windowIsFloating":Z
    iget-object v8, v1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v2, 0xe

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1997
    .local v2, "windowShowWallpaper":Z
    iget-object v8, v1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    move-object/from16 v19, v1

    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v19, "ent":Lcom/android/server/AttributeCache$Entry;
    const/16 v1, 0xc

    invoke-virtual {v8, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1999
    .local v1, "windowDisableStarting":Z
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v3, :cond_9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    .local v20, "protoLogParam2":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    move-object/from16 v21, v9

    .end local v9    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v21, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v23, v10

    const/4 v10, 0x0

    .end local v10    # "mainWin":Lcom/android/server/wm/WindowState;
    .local v23, "mainWin":Lcom/android/server/wm/WindowState;
    aput-object v3, v9, v10

    const/16 v18, 0x1

    aput-object v8, v9, v18

    const/16 v16, 0x2

    aput-object v20, v9, v16

    move-object/from16 v18, v3

    move-object/from16 v22, v8

    const v3, -0x40e5823e

    const/4 v8, 0x0

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .local v18, "protoLogParam0":Ljava/lang/String;
    .local v22, "protoLogParam1":Ljava/lang/String;
    invoke-static {v6, v3, v10, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v18    # "protoLogParam0":Ljava/lang/String;
    .end local v20    # "protoLogParam2":Ljava/lang/String;
    .end local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v22    # "protoLogParam1":Ljava/lang/String;
    .end local v23    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v9    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v10    # "mainWin":Lcom/android/server/wm/WindowState;
    :cond_9
    move-object/from16 v21, v9

    move-object/from16 v23, v10

    const/4 v10, 0x0

    .line 2005
    .end local v9    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v10    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v23    # "mainWin":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkSplashWindowFlag()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2007
    return v10

    .line 2013
    :cond_a
    if-nez v4, :cond_e

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkSplashWindowFlag()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_2

    .line 2017
    :cond_b
    if-eqz v2, :cond_d

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 2019
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_c

    .line 2025
    const/high16 v3, 0x100000

    or-int v3, p8, v3

    .end local p8    # "windowFlags":I
    .local v3, "windowFlags":I
    goto :goto_4

    .line 2027
    .end local v3    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :cond_c
    const/4 v3, 0x0

    return v3

    .line 2017
    :cond_d
    const/4 v3, 0x0

    goto :goto_3

    .line 2013
    :cond_e
    const/4 v3, 0x0

    .line 2015
    :goto_2
    return v3

    .line 1982
    .end local v1    # "windowDisableStarting":Z
    .end local v2    # "windowShowWallpaper":Z
    .end local v4    # "windowIsFloating":Z
    .end local v5    # "windowIsTranslucent":Z
    .end local v19    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v23    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v9    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v10    # "mainWin":Lcom/android/server/wm/WindowState;
    :cond_f
    move-object/from16 v21, v9

    move-object/from16 v23, v10

    .line 2032
    .end local v9    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v10    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v23    # "mainWin":Lcom/android/server/wm/WindowState;
    :goto_3
    move/from16 v3, p8

    .end local p8    # "windowFlags":I
    .restart local v3    # "windowFlags":I
    :goto_4
    move-object/from16 v1, p9

    invoke-virtual {v7, v1}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2033
    const/4 v2, 0x1

    return v2

    .line 2038
    :cond_10
    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    .line 2039
    const/4 v2, 0x0

    return v2

    .line 2042
    :cond_11
    const/4 v2, 0x0

    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x78553ced    # 1.7299921E34f

    const/4 v6, 0x0

    move-object v8, v6

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v2, v6, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2043
    :cond_12
    new-instance v2, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2045
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object v8, v2

    move-object/from16 v4, v21

    .end local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v4, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object/from16 v5, v23

    .end local v23    # "mainWin":Lcom/android/server/wm/WindowState;
    .local v5, "mainWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, v3

    invoke-direct/range {v8 .. v18}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V

    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2046
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    .line 2047
    const/4 v2, 0x1

    return v2
.end method

.method addToFinishingAndWaitForIdle()Z
    .locals 2

    .line 3170
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueueing pending finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3172
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "addToFinishingAndWaitForIdle"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3173
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3174
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3176
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3177
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    move-result v0

    return v0
.end method

.method addToStopping(ZZLjava/lang/String;)V
    .locals 4
    .param p1, "scheduleIdle"    # Z
    .param p2, "idleDelayed"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5669
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5670
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p3}, Lcom/android/server/wm/EventLogTags;->writeWmAddToStopping(IILjava/lang/String;Ljava/lang/String;)V

    .line 5672
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5675
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5679
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-gt v1, v2, :cond_2

    .line 5680
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v1

    if-gt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    move v1, v3

    .line 5681
    .local v1, "forceIdle":Z
    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 5692
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    goto :goto_3

    .line 5682
    :cond_4
    :goto_2
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_5

    .line 5683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling idle now: forceIdle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "immediate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5686
    :cond_5
    if-nez p2, :cond_6

    .line 5687
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdle()V

    goto :goto_3

    .line 5689
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 5694
    :goto_3
    return-void
.end method

.method addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3686
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 3688
    const/4 v0, 0x0

    .line 3689
    .local v0, "gotReplacementWindow":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3690
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3691
    .local v2, "candidate":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 3689
    .end local v2    # "candidate":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3695
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 3696
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 3698
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    .line 3699
    return-void
.end method

.method allowMoveToFront()Z
    .locals 1

    .line 4370
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

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

.method applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z
    .locals 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "IZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)Z"
        }
    .end annotation

    .line 4614
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    if-eqz v0, :cond_0

    .line 4615
    const/4 v0, 0x0

    return v0

    .line 4619
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4620
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    const/16 v1, 0x19

    if-ne p2, v1, :cond_2

    .line 4622
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_1

    .line 4623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use ALPHA anim if translucent and FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4625
    :cond_1
    const/16 p2, 0xf

    .line 4628
    :cond_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/wm/WindowToken;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 6859
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    .line 6860
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 6861
    return-void
.end method

.method applyOptionsLocked()V
    .locals 2

    .line 4167
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_2

    .line 4168
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 4169
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying options for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked(Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    .line 4171
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1

    .line 4172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    goto :goto_0

    .line 4175
    :cond_1
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ActivityRecord$QP-eHsXODaflS0pyRnr8fdoF6BU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$QP-eHsXODaflS0pyRnr8fdoF6BU;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 4180
    :cond_2
    :goto_0
    return-void
.end method

.method applyOptionsLocked(Landroid/app/ActivityOptions;Landroid/content/Intent;)V
    .locals 17
    .param p1, "pendingOptions"    # Landroid/app/ActivityOptions;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4186
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    .line 4187
    .local v1, "animationType":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4188
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 4275
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4268
    :pswitch_1
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4269
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v4

    .line 4268
    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 4270
    goto/16 :goto_3

    .line 4264
    :pswitch_2
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4265
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionStartCrossProfileApps()V

    .line 4266
    goto/16 :goto_3

    .line 4198
    :pswitch_3
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4199
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    .line 4200
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    .line 4198
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 4201
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_5

    .line 4202
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    .line 4203
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    .line 4204
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 4205
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4202
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4236
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v5

    .line 4237
    .local v5, "specs":[Landroid/view/AppTransitionAnimationSpec;
    nop

    .line 4238
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v6

    .line 4239
    .local v6, "specsFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/16 v7, 0x8

    if-eqz v6, :cond_1

    .line 4240
    iget-object v8, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4241
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v9

    if-ne v1, v7, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 4240
    :goto_0
    invoke-virtual {v8, v6, v9, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_3

    .line 4243
    :cond_1
    const/16 v8, 0x9

    if-ne v1, v8, :cond_2

    if-eqz v5, :cond_2

    .line 4245
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4246
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v7

    .line 4247
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v8

    .line 4245
    invoke-virtual {v3, v5, v7, v8, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_3

    .line 4249
    :cond_2
    iget-object v9, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4250
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v10

    .line 4251
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v12

    .line 4252
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v14

    .line 4253
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v15

    if-ne v1, v7, :cond_3

    move/from16 v16, v3

    goto :goto_1

    :cond_3
    move/from16 v16, v4

    .line 4249
    :goto_1
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 4255
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_5

    .line 4256
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    .line 4257
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    .line 4258
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 4259
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v3, v4, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4256
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4221
    .end local v5    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    .end local v6    # "specsFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :pswitch_5
    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    move v11, v3

    goto :goto_2

    :cond_4
    move v11, v4

    .line 4222
    .local v11, "scaleUp":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 4223
    .local v3, "buffer":Landroid/graphics/GraphicBuffer;
    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4224
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v9

    .line 4225
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v10

    .line 4223
    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 4227
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    .line 4228
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    .line 4229
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    .line 4230
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 4231
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4228
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 4209
    .end local v3    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v11    # "scaleUp":Z
    :pswitch_6
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4210
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    .line 4211
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    .line 4209
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    .line 4212
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_5

    .line 4213
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    .line 4214
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    .line 4215
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 4216
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4213
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 4190
    :pswitch_7
    iget-object v8, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4191
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4192
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v10

    .line 4193
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v11

    .line 4194
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v12

    .line 4195
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v13

    .line 4190
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 4196
    goto :goto_3

    .line 4273
    :pswitch_8
    nop

    .line 4278
    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method asActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1886
    return-object p0
.end method

.method attachCrossProfileAppsThumbnailAnimation()V
    .locals 10

    .line 6681
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6682
    return-void

    .line 6684
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    .line 6686
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6687
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_1

    .line 6688
    return-void

    .line 6690
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRelativeFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 6691
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_2

    .line 6692
    const v2, 0x108031a

    goto :goto_0

    .line 6693
    :cond_2
    const v2, 0x108036d

    :goto_0
    nop

    .line 6694
    .local v2, "thumbnailDrawableRes":I
    nop

    .line 6695
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 6696
    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 6697
    .local v3, "thumbnail":Landroid/graphics/GraphicBuffer;
    if-nez v3, :cond_3

    .line 6698
    return-void

    .line 6700
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 6701
    .local v4, "transaction":Landroid/view/SurfaceControl$Transaction;
    new-instance v5, Lcom/android/server/wm/WindowContainerThumbnail;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    .line 6702
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7, v3}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/graphics/GraphicBuffer;)V

    iput-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    .line 6703
    nop

    .line 6704
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v5

    .line 6706
    .local v5, "animation":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    new-instance v7, Landroid/graphics/Point;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v4, v5, v7}, Lcom/android/server/wm/WindowContainerThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 6707
    return-void
.end method

.method attachThumbnailAnimation()V
    .locals 7

    .line 6660
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6661
    return-void

    .line 6663
    :cond_0
    nop

    .line 6664
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 6665
    .local v0, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    if-nez v0, :cond_2

    .line 6666
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x5b1b7e7d

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6667
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    return-void

    .line 6669
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    .line 6670
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 6671
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    new-instance v2, Lcom/android/server/wm/WindowContainerThumbnail;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    .line 6672
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/graphics/GraphicBuffer;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    .line 6673
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowContainerThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    .line 6674
    return-void
.end method

.method attachedToProcess()Z
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V
    .locals 6
    .param p1, "state"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "early_notify"    # Z

    .line 4878
    const-string v0, "ActivityTaskManager"

    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;-><init>()V

    .line 4879
    .local v1, "aDetails":Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;
    new-instance v2, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;

    invoke-direct {v2}, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;-><init>()V

    .line 4880
    .local v2, "aStats":Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;
    const/16 v3, 0xb

    .line 4882
    .local v3, "aState":I
    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iput v4, v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;->launchedFromPid:I

    .line 4883
    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v4, v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;->launchedFromUid:I

    .line 4884
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v4, v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;->packageName:Ljava/lang/String;

    .line 4885
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "none"

    :goto_0
    iput-object v4, v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;->processName:Ljava/lang/String;

    .line 4886
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;->intent:Ljava/lang/String;

    .line 4887
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;->className:Ljava/lang/String;

    .line 4888
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v4, v1, Lvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;->versioncode:I

    .line 4890
    iget-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    iput-wide v4, v2, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;->createTime:J

    .line 4891
    iget-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v4, v2, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;->lastVisibleTime:J

    .line 4892
    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    iput v4, v2, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;->launchCount:I

    .line 4893
    iget-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    iput-wide v4, v2, Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;->lastLaunchTime:J

    .line 4895
    sget-object v4, Lcom/android/server/wm/ActivityRecord$5;->$SwitchMap$com$android$server$wm$ActivityStack$ActivityState:[I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 4927
    :pswitch_0
    const/16 v3, 0xa

    goto :goto_1

    .line 4924
    :pswitch_1
    const/16 v3, 0x9

    .line 4925
    goto :goto_1

    .line 4921
    :pswitch_2
    const/16 v3, 0x8

    .line 4922
    goto :goto_1

    .line 4918
    :pswitch_3
    const/4 v3, 0x7

    .line 4919
    goto :goto_1

    .line 4915
    :pswitch_4
    const/4 v3, 0x6

    .line 4916
    goto :goto_1

    .line 4900
    :pswitch_5
    const/4 v3, 0x1

    .line 4901
    goto :goto_1

    .line 4897
    :pswitch_6
    const/4 v3, 0x0

    .line 4898
    goto :goto_1

    .line 4912
    :pswitch_7
    const/4 v3, 0x5

    .line 4913
    goto :goto_1

    .line 4909
    :pswitch_8
    const/4 v3, 0x4

    .line 4910
    goto :goto_1

    .line 4906
    :pswitch_9
    const/4 v3, 0x3

    .line 4907
    goto :goto_1

    .line 4903
    :pswitch_a
    const/4 v3, 0x2

    .line 4904
    nop

    .line 4936
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getServicetrackerInstance()Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    move-result-object v4

    .line 4937
    .local v4, "mServicetracker":Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;
    if-eqz v4, :cond_1

    .line 4938
    invoke-interface {v4, v3, v1, v2, p2}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;->OnActivityStateChange(ILvendor/qti/hardware/servicetracker/V1_2/ActivityDetails;Lvendor/qti/hardware/servicetracker/V1_2/ActivityStats;Z)V

    goto :goto_2

    .line 4940
    :cond_1
    const-string v5, "Unable to get servicetracker HAL instance"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4944
    :goto_2
    goto :goto_3

    .line 4941
    .end local v4    # "mServicetracker":Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;
    :catch_0
    move-exception v4

    .line 4942
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to send activity state change details to servicetracker HAL"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4943
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->destroyServicetrackerInstance()V

    .line 4946
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method canBeLaunchedOnDisplay(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .line 2556
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canBeTopRunning()Z
    .locals 1

    .line 6205
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    .line 8594
    const/4 v0, 0x1

    return v0
.end method

.method canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 2299
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    .line 2305
    .local v0, "recentTasks":Lcom/android/server/wm/RecentTasks;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2306
    return v1

    .line 2309
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2301
    .end local v0    # "recentTasks":Lcom/android/server/wm/RecentTasks;
    :cond_3
    :goto_1
    return v1
.end method

.method canReceiveKeys()Z
    .locals 1

    .line 2479
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 2480
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2479
    :goto_0
    return v0
.end method

.method canResumeByCompat()Z
    .locals 1

    .line 8262
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

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

.method canShowWhenLocked()Z
    .locals 4

    .line 3919
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3920
    :cond_0
    return v1

    .line 3921
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3922
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3923
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v3, :cond_2

    .line 3924
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3923
    :goto_0
    return v1

    .line 3926
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    return v2
.end method

.method canShowWindows()Z
    .locals 1

    .line 3936
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->hasNonDefaultColorWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canTurnScreenOn()Z
    .locals 4

    .line 8223
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8224
    return v1

    .line 8226
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 8227
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 8229
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v3, p0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 8228
    :goto_0
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    nop

    .line 8227
    :goto_1
    return v1
.end method

.method cancelAnimation()V
    .locals 0

    .line 6815
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    .line 6816
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    .line 6817
    return-void
.end method

.method cancelInitializing()V
    .locals 3

    .line 6346
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6348
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found orphaned starting window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6349
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    .line 6350
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 6352
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6356
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 6358
    :cond_2
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .locals 12

    .line 5962
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    if-ne v0, v1, :cond_0

    .line 5963
    return-void

    .line 5966
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    .line 5967
    if-nez v0, :cond_1

    .line 5968
    return-void

    .line 5972
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-eqz v0, :cond_3

    .line 5973
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V

    .line 5974
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    .line 5975
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    int-to-long v3, v3

    .local v3, "protoLogParam1":J
    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    int-to-long v5, v5

    .local v5, "protoLogParam2":J
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x30183017

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v1

    const/4 v0, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5980
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":J
    .end local v5    # "protoLogParam2":J
    :cond_2
    const/4 v0, 0x4

    const-string v1, "checkAppWindowsReadyToShow: freezingScreen"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_0

    .line 5983
    :cond_3
    const/16 v0, 0x8

    const-string v1, "checkAppWindowsReadyToShow"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 5986
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5987
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V

    .line 5990
    :cond_4
    :goto_0
    return-void
.end method

.method checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "beforeStopping"    # Z

    .line 2567
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2568
    return v1

    .line 2572
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2573
    return v1

    .line 2577
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldDisableNonVrUiLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2578
    return v1

    .line 2584
    :cond_2
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyExiting()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 2591
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result v0

    .line 2592
    .local v0, "isKeyguardLocked":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2593
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    .line 2594
    .local v2, "isCurrentAppLocked":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2595
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v1

    .line 2598
    .local v5, "hasPinnedStack":Z
    :goto_1
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    move v6, v3

    goto :goto_2

    :cond_6
    move v6, v1

    .line 2601
    .local v6, "isNotLockedOrOnKeyguard":Z
    :goto_2
    if-eqz p2, :cond_7

    if-eqz v5, :cond_7

    .line 2602
    return v1

    .line 2605
    :cond_7
    sget-object v7, Lcom/android/server/wm/ActivityRecord$5;->$SwitchMap$com$android$server$wm$ActivityStack$ActivityState:[I

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v3, :cond_d

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_b

    const/4 v8, 0x4

    if-eq v7, v8, :cond_8

    goto :goto_3

    .line 2622
    :cond_8
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_a

    .line 2623
    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    move v1, v3

    :cond_9
    return v1

    .line 2626
    :cond_a
    :goto_3
    return v1

    .line 2616
    :cond_b
    if-eqz v6, :cond_c

    if-nez v5, :cond_c

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_c

    move v1, v3

    :cond_c
    return v1

    .line 2609
    :cond_d
    if-nez v2, :cond_f

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez v7, :cond_e

    if-nez p2, :cond_f

    :cond_e
    move v1, v3

    :cond_f
    return v1

    .line 2585
    .end local v0    # "isKeyguardLocked":Z
    .end local v2    # "isCurrentAppLocked":Z
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "hasPinnedStack":Z
    .end local v6    # "isNotLockedOrOnKeyguard":Z
    :cond_10
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickReply: skip support PIP due to QuickReply running="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " exiting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyExiting()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2585
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    return v1
.end method

.method checkKeyguardFlagsChanged()V
    .locals 5

    .line 3853
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v0

    .line 3854
    .local v0, "containsDismissKeyguard":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v1

    .line 3855
    .local v1, "containsShowWhenLocked":Z
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_1

    .line 3857
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 3858
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 3857
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 3860
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    .line 3861
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    .line 3862
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsTurnScreenOnWindow:Z

    .line 3863
    return-void
.end method

.method cleanUp(ZZ)V
    .locals 6
    .param p1, "cleanServices"    # Z
    .param p2, "setState"    # Z

    .line 3371
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 3373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 3374
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3376
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3377
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3378
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v3, "cleanUp"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3379
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing app during cleanUp for activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3384
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 3387
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v2, :cond_4

    .line 3388
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 3389
    .local v3, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 3390
    .local v4, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v4, :cond_2

    .line 3391
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 3394
    .end local v3    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_2
    goto :goto_0

    .line 3395
    :cond_3
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3398
    :cond_4
    if-eqz p1, :cond_5

    .line 3399
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpActivityServices()V

    .line 3403
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 3406
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearRelaunching()V

    .line 3407
    return-void
.end method

.method clearAllDrawn()V
    .locals 1

    .line 4281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 4282
    return-void
.end method

.method clearAnimatingFlags()V
    .locals 4

    .line 6803
    const/4 v0, 0x0

    .line 6804
    .local v0, "wallpaperMightChange":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 6805
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6806
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v3

    or-int/2addr v0, v3

    .line 6804
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6808
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 6809
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    .line 6811
    :cond_1
    return-void
.end method

.method clearOptionsLocked()V
    .locals 1

    .line 4343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    .line 4344
    return-void
.end method

.method clearOptionsLocked(Z)V
    .locals 1
    .param p1, "withAbort"    # Z

    .line 4347
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 4348
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 4350
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 4351
    return-void
.end method

.method clearRelaunching()V
    .locals 1

    .line 3481
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_0

    .line 3482
    return-void

    .line 3484
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->unfreezeBounds()V

    .line 3485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    .line 3486
    return-void
.end method

.method clearSizeCompatMode()V
    .locals 1

    .line 7121
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    .line 7122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 7123
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 7124
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7125
    return-void
.end method

.method clearVoiceSessionLocked()V
    .locals 1

    .line 6302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 6303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 6304
    return-void
.end method

.method clearWillReplaceWindows()V
    .locals 7

    .line 6429
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x6541dec8

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6432
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6433
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6434
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 6432
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6436
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->commitPendingTransaction()V

    return-void
.end method

.method commitVisibility(ZZ)V
    .locals 16
    .param p1, "visible"    # Z
    .param p2, "performLayout"    # Z

    .line 4646
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 4647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-ne v1, v3, :cond_0

    .line 4648
    return-void

    .line 4651
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 4652
    .local v3, "windowsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v3, :cond_1

    .line 4653
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v5

    invoke-virtual {v6, v1, v5}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)V

    .line 4652
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4655
    .end local v4    # "i":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 4656
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .line 4657
    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 4658
    invoke-virtual {v0, v4, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    goto :goto_1

    .line 4662
    :cond_2
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-nez v6, :cond_3

    .line 4663
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 4664
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v2, v6, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 4668
    :cond_3
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;

    invoke-direct {v7, v6}, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v7, v4}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4670
    :goto_1
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v7, 0x3

    if-eqz v6, :cond_4

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v8

    .local v8, "protoLogParam1":Z
    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .local v9, "protoLogParam2":Z
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v11, -0x5aaf25e4

    const/16 v12, 0x3c

    const/4 v13, 0x0

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v6, v14, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v14, v5

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4673
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Z
    .end local v9    # "protoLogParam2":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 4674
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4675
    if-eqz p2, :cond_5

    .line 4676
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v7, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4678
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4680
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4681
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    .line 4683
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->postApplyAnimation(Z)V

    .line 4684
    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 377
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 3013
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3019
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3021
    return-object p0

    .line 3024
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 3025
    .local v0, "isCurrentVisible":Z
    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 3026
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3032
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v4, :cond_3

    move-object v5, v3

    goto :goto_2

    :cond_3
    iget-object v5, v4, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3034
    .local v5, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    const/4 v6, 0x0

    .line 3035
    .local v6, "ensureVisibility":Z
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3038
    const/4 v6, 0x1

    goto :goto_3

    .line 3039
    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3040
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3045
    const/4 v6, 0x1

    .line 3048
    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 3049
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7, v3, v2, v2, v1}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 3054
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "ensureVisibility":Z
    :cond_6
    const/4 v4, 0x0

    .line 3064
    .local v4, "activityRemoved":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 3070
    .local v5, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_8

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_7

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v6, :cond_8

    :cond_7
    move v6, v1

    goto :goto_4

    :cond_8
    move v6, v2

    .line 3076
    .local v6, "isNextNotYetVisible":Z
    :goto_4
    if-eqz v0, :cond_a

    if-eqz v6, :cond_a

    if-eqz v5, :cond_9

    .line 3077
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/wm/ActivityRecord;->allowCompleteFinish(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 3081
    :cond_9
    const-string v7, "completeFinishing"

    invoke-virtual {p0, v2, v2, v7}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    .line 3083
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3084
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_5

    .line 3085
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 3092
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    move-result v4

    .line 3095
    :goto_5
    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    move-object v3, p0

    :goto_6
    return-object v3

    .line 3014
    .end local v0    # "isCurrentVisible":Z
    .end local v4    # "activityRemoved":Z
    .end local v5    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "isNextNotYetVisible":Z
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity must be finishing and not resumed to complete, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", finishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method completeResumeLocked()V
    .locals 6

    .line 5406
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .line 5407
    .local v0, "wasVisible":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 5408
    if-nez v0, :cond_0

    .line 5410
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 5412
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 5413
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 5414
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 5415
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastNewIntent:Landroid/content/Intent;

    .line 5417
    :cond_1
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 5418
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 5420
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5421
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 5423
    :try_start_0
    new-instance v1, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v4}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5426
    goto :goto_0

    .line 5424
    :catch_0
    move-exception v1

    .line 5425
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5429
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_3

    .line 5430
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 5434
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 5436
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 5438
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 5439
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 5440
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5445
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5446
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_1

    .line 5448
    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    .line 5451
    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 5453
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5454
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v3, "turnScreenOnFlag"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    goto :goto_2

    .line 5459
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 5461
    :goto_2
    return-void
.end method

.method containsDismissKeyguardWindow()Z
    .locals 4

    .line 3868
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3869
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    return v0

    .line 3872
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3873
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 3874
    return v1

    .line 3872
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3877
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method containsShowWhenLockedWindow()Z
    .locals 4

    .line 3884
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3885
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    return v0

    .line 3888
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3889
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 3890
    return v1

    .line 3888
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3894
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 21
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 8550
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 8551
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8555
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 8556
    .local v3, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 8557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8558
    new-instance v20, Landroid/view/RemoteAnimationTarget;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v6, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v7

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 8559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v5

    xor-int/lit8 v9, v5, 0x1

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 8561
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v12

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v13, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v14, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mLocalBounds:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v15, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 8562
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    const/16 v17, 0x0

    .line 8564
    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v5, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    :cond_1
    move-object/from16 v18, v4

    iget-object v4, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    move-object/from16 v5, v20

    move-object v11, v3

    move-object/from16 v19, v4

    invoke-direct/range {v5 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 8558
    return-object v20

    .line 8552
    .end local v3    # "insets":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createRemoteAnimationTarget "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " return null; task "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mainWindow "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8553
    return-object v4
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Z)Landroid/view/RemoteAnimationTarget;
    .locals 21
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .param p2, "isOpening"    # Z

    .line 8573
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 8574
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8577
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 8578
    .local v3, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 8579
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8580
    new-instance v20, Landroid/view/RemoteAnimationTarget;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v6, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 8581
    xor-int/lit8 v7, p2, 0x1

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 8582
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v5

    xor-int/lit8 v9, v5, 0x1

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 8584
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v12

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v13, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v14, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mLocalBounds:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v15, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 8585
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    const/16 v17, 0x0

    .line 8587
    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v5, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    :cond_1
    move-object/from16 v18, v4

    iget-object v4, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    move-object/from16 v5, v20

    move-object v11, v3

    move-object/from16 v19, v4

    invoke-direct/range {v5 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 8580
    return-object v20

    .line 8575
    .end local v3    # "insets":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-object v4
.end method

.method currentLaunchCanTurnScreenOn()Z
    .locals 1

    .line 4830
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    return v0
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V
    .locals 16
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p4, "referrer"    # Ljava/lang/String;

    .line 4124
    move-object/from16 v1, p0

    const-string v2, "Exception thrown sending new intent to "

    const-string v3, "ActivityTaskManager"

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v4

    .line 4124
    move-object/from16 v5, p3

    invoke-interface {v0, v5, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 4126
    new-instance v0, Lcom/android/internal/content/ReferrerIntent;

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    invoke-direct {v0, v4, v6}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    move-object v7, v0

    .line 4127
    .local v7, "rintent":Lcom/android/internal/content/ReferrerIntent;
    const/4 v8, 0x1

    .line 4128
    .local v8, "unsent":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 4134
    .local v11, "isTopActivityWhileSleeping":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v12, :cond_1

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v12, :cond_1

    if-eqz v11, :cond_3

    .line 4135
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4137
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 4138
    .local v0, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4142
    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v15, v9, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 4143
    :goto_1
    invoke-static {v0, v9}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v9

    .line 4142
    invoke-virtual {v12, v13, v14, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4144
    const/4 v8, 0x0

    .line 4149
    .end local v0    # "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :goto_2
    goto :goto_3

    .line 4147
    :catch_0
    move-exception v0

    .line 4148
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 4145
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 4151
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 4152
    invoke-direct {v1, v7}, Lcom/android/server/wm/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    .line 4154
    :cond_4
    return-void
.end method

.method destroyIfPossible(Ljava/lang/String;)Z
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .line 3104
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3105
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "destroyIfPossible"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3108
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3110
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3111
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 3116
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const-string v3, "ActivityTaskManager"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3117
    const-string v1, "getDisplayArea is null"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    return v4

    .line 3121
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 3122
    .local v5, "next":Lcom/android/server/wm/ActivityRecord;
    if-nez v5, :cond_1

    .line 3123
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3124
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v4

    .line 3125
    .local v6, "isLastStackOverEmptyHome":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 3130
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    .line 3131
    return v4

    .line 3133
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 3135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish-imm:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    move-result v7

    .line 3144
    .local v7, "activityRemoved":Z
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    if-eq v8, v9, :cond_4

    .line 3146
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v8

    invoke-static {v8}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3148
    :cond_3
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v8, v5, v9, v4, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 3151
    :cond_4
    if-eqz v7, :cond_5

    .line 3152
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3155
    :cond_5
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v1, :cond_6

    .line 3156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyIfPossible: r="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " destroy returned removed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    :cond_6
    return v7
.end method

.method destroyImmediately(ZLjava/lang/String;)Z
    .locals 11
    .param p1, "removeFromApp"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 3193
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_2

    .line 3194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing activity from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3195
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "(null)"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3194
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    :cond_2
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3199
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_3

    .line 3200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already destroying.skipping request with reason:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    :cond_3
    return v2

    .line 3206
    :cond_4
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5, p2}, Lcom/android/server/wm/EventLogTags;->writeWmDestroyActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 3209
    const/4 v0, 0x0

    .line 3211
    .local v0, "removedFromHistory":Z
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 3213
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    const-string v4, "Moving to DESTROYED: "

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    .line 3214
    if-eqz p1, :cond_5

    .line 3215
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 3216
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3217
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3221
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3, v5, v2, v5, v2}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 3227
    :cond_5
    const/4 v3, 0x0

    .line 3230
    .local v3, "skipDestroy":Z
    :try_start_0
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destroying: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_7

    .line 3234
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destroyActivityLocked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", reason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 3237
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v9, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v10, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3238
    invoke-static {v9, v10}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v9

    .line 3237
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3247
    goto :goto_1

    .line 3239
    :catch_0
    move-exception v6

    .line 3242
    .local v6, "e":Ljava/lang/Exception;
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_8

    .line 3243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " exceptionInScheduleDestroy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 3244
    const/4 v0, 0x1

    .line 3245
    const/4 v3, 0x1

    .line 3249
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 3256
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_a

    if-nez v3, :cond_a

    .line 3257
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_9

    .line 3258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to DESTROYING: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (destroy requested)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    :cond_9
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3261
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v4, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3263
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 3265
    :cond_a
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v6, :cond_b

    .line 3266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (destroy skipped)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_b
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3269
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3271
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing app during destroy for activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    :cond_c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3274
    .end local v3    # "skipDestroy":Z
    :goto_2
    goto :goto_3

    .line 3276
    :cond_d
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_e

    .line 3277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hadNoApp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 3278
    const/4 v0, 0x1

    goto :goto_3

    .line 3280
    :cond_e
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (no app)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    :cond_f
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3282
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v3, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3286
    :goto_3
    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3288
    return v0
.end method

.method destroySurfaces()V
    .locals 1

    .line 5000
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    .line 5001
    return-void
.end method

.method destroyed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3345
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeDestroyTimeout()V

    .line 3347
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activityDestroyedLocked: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3354
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3355
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 3356
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 3359
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3360
    return-void

    .line 3350
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reported destroyed for activity that is not destroying: r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method detachChildren()V
    .locals 3

    .line 3461
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 3462
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3463
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3464
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 3462
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3466
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 3467
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 870
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 871
    .local v0, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "packageName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 872
    const-string v2, " processName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchedFromUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 874
    const-string v2, " launchedFromPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    const-string v2, " launchedFromFeature="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    const-string v2, " userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 877
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "app="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 878
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootOfTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 880
    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 881
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskAffinity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 885
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 886
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "baseDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 888
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "resDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "dataDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 892
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "splitDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 893
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "stateNotNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 897
    const-string v2, " componentSpecified="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 898
    const-string v2, " mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 898
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_2

    .line 901
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootVoiceInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 903
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 904
    const-string v2, " labelRes=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    const-string v2, " icon=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    const-string v2, " theme=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedConfigurations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "CurrentConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 911
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RequestedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ResolvedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 916
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_5

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 923
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "resultTo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 924
    const-string v2, " resultWho="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    const-string v2, " resultCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 927
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const-string v3, "null"

    if-eqz v2, :cond_a

    .line 928
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "iconFilename":Ljava/lang/String;
    if-nez v2, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 930
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    if-eqz v4, :cond_a

    .line 931
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "taskDescription:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    const-string v4, " label=\""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    const-string v4, " icon="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 936
    :cond_9
    move-object v4, v3

    .line 934
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    const-string v4, " iconResource="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconResourcePackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 939
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 940
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 941
    const-string v4, " iconFilename="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    const-string v4, " primaryColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  backgroundColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    const-string v4, " statusBarColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    const-string v4, " navigationBarColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    .end local v2    # "iconFilename":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 953
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "results="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 955
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    const-string v4, "  - "

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 956
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Results:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 958
    .local v5, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    .line 959
    .local v6, "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    if-nez v6, :cond_d

    .line 961
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 963
    :cond_d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 964
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 966
    .end local v5    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v6    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_3
    goto :goto_1

    .line 968
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 969
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending New Intents:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_10

    .line 971
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 972
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 973
    if-nez v6, :cond_f

    .line 974
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 976
    :cond_f
    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 980
    .end local v2    # "i":I
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_11

    .line 981
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "pendingOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 983
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v2, :cond_12

    .line 984
    invoke-virtual {v2, p1, p2, v5}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 986
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v2, :cond_13

    .line 987
    invoke-virtual {v2, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 989
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchFailed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 990
    const-string v2, " launchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 991
    const-string v2, " lastLaunchTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "0"

    if-nez v6, :cond_14

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 993
    :cond_14
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 994
    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 995
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHaveState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 996
    const-string v2, " mIcicle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 997
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 998
    const-string v2, " stopped="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 999
    const-string v2, " delayedResume="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1000
    const-string v2, " finishing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1001
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "keysPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1002
    const-string v2, " inHistory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1003
    const-string v2, " setToSleep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mSetToSleep:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1004
    const-string v2, " idle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1005
    const-string v2, " mStartingWindowState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->startingWindowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "occludesParent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1008
    const-string v2, " noDisplay="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1009
    const-string v2, " immersive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1010
    const-string v2, " launchMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1011
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frozenBeforeDestroy="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1012
    const-string v2, " forceNewConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1013
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_15

    .line 1016
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    const-string v2, "requestedVrComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1020
    :cond_15
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1021
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v2, :cond_16

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mVoiceInteraction=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOccludesParent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1025
    const-string v2, " mOrientation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mVisibleRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mClientVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1028
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mDeferHidingClient="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_17
    const-string v3, ""

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reportedDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->reportedDrawn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reportedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->paused:Z

    if-eqz v2, :cond_18

    .line 1031
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "paused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->paused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1033
    :cond_18
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v2, :cond_19

    .line 1034
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAppStopped="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1036
    :cond_19
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    if-nez v2, :cond_1a

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    if-nez v2, :cond_1a

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v2, :cond_1a

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    if-eqz v2, :cond_1b

    .line 1038
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNumInterestingWindows="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1040
    const-string v2, " mNumDrawnWindows="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1041
    const-string v2, " allDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1042
    const-string v2, " lastAllDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1043
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_1c

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v2, :cond_1c

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v2, :cond_1d

    .line 1046
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "startingData="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1047
    const-string v2, " firstWindowDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1048
    const-string v2, " mIsExiting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1050
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    if-eqz v2, :cond_1f

    .line 1052
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "startingWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1053
    const-string v2, " startingSurface="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1054
    const-string v2, " startingDisplayed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1055
    const-string v2, " startingMoved="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mHiddenSetFromTransferredStartingWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1060
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFrozenBounds="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1061
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFrozenMergedConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1063
    :cond_20
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-eqz v2, :cond_21

    .line 1064
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mPendingRelaunchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1066
    :cond_21
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_23

    .line 1067
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mSizeCompatScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mSizeCompatBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    :cond_23
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    if-eqz v2, :cond_24

    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mRemovingFromDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    :cond_24
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_27

    .line 1074
    :cond_25
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "nowVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1075
    const-string v2, " lastVisibleTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_26

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 1077
    :cond_26
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1078
    :goto_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1080
    :cond_27
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v2, :cond_28

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mDeferHidingClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    :cond_28
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-nez v2, :cond_29

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    if-eqz v2, :cond_2a

    .line 1084
    :cond_29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "deferRelaunchUntilPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1086
    const-string v2, " configChangeFlags="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v2, :cond_2b

    .line 1090
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "connections="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1092
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2f

    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedMultiWindowMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLastReportedPictureInPictureMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "supportsPictureInPicture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    :cond_2c
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2d

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "maxAspectRatio="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2e

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "minAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    :cond_2e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz v2, :cond_2f

    .line 1108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "supportsSizeChanges=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    :cond_2f
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "logLevel"    # I

    .line 8340
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8341
    const-wide v0, 0x10b00000002L

    invoke-super {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowToken;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 8342
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8343
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isWaitingForTransitionStart()Z

    move-result v0

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8344
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8345
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    if-eqz v0, :cond_0

    .line 8346
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainerThumbnail;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8348
    :cond_0
    const-wide v0, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8349
    const-wide v0, 0x10800000008L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8350
    const-wide v0, 0x1080000001eL

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8351
    const-wide v0, 0x10800000018L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8352
    const-wide v0, 0x10800000009L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8353
    const-wide v0, 0x1080000000aL

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisible:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8354
    const-wide v0, 0x1080000000bL

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8355
    const-wide v0, 0x1080000000cL

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->reportedDrawn:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8356
    const-wide v0, 0x1080000000dL

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8357
    const-wide v0, 0x1050000000eL

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8358
    const-wide v0, 0x1050000000fL

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8359
    const-wide v0, 0x10800000010L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8360
    const-wide v0, 0x10800000011L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8361
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 8362
    const-wide v1, 0x10b00000013L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8364
    :cond_1
    const-wide v0, 0x10800000014L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8365
    const-wide v0, 0x108000000c9L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8366
    const-wide v0, 0x10800000016L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8368
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 8369
    .local v1, "bounds":Landroid/graphics/Rect;
    const-wide v2, 0x20b00000017L

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8370
    .end local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 8372
    :cond_2
    const-wide v0, 0x10b0000001aL

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8373
    const-wide v0, 0x1090000001bL

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack$ActivityState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8374
    const-wide v0, 0x1080000001cL

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8375
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8376
    const-wide v0, 0x1050000001dL

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8378
    :cond_3
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 8389
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8390
    return-void

    .line 8393
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 8394
    .local v0, "token":J
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/ActivityRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V

    .line 8395
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8396
    return-void
.end method

.method ensureActivityConfiguration(IZ)Z
    .locals 1
    .param p1, "globalChanges"    # I
    .param p2, "preserveWindow"    # Z

    .line 7602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    move-result v0

    return v0
.end method

.method ensureActivityConfiguration(IZZ)Z
    .locals 11
    .param p1, "globalChanges"    # I
    .param p2, "preserveWindow"    # Z
    .param p3, "ignoreVisibility"    # Z

    .line 7622
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 7625
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x1

    const-string v2, "ActivityTaskManager"

    if-nez v0, :cond_0

    .line 7626
    const-string v3, "ensureActivityConfiguration stack is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7627
    return v1

    .line 7630
    :cond_0
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    if-eqz v3, :cond_3

    .line 7631
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping config check (will change): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7633
    :cond_2
    return v1

    .line 7637
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 7638
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration doesn\'t matter in finishing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7640
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 7641
    return v1

    .line 7644
    :cond_6
    if-nez p3, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v3, v5, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v3, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v3

    if-nez v3, :cond_a

    .line 7645
    :cond_7
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_9

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping config check invisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7647
    :cond_9
    return v1

    .line 7650
    :cond_a
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_b

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_c

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ensuring correct configuration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7653
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    .line 7654
    .local v3, "newDisplayId":I
    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    if-eq v5, v3, :cond_d

    move v5, v1

    goto :goto_0

    :cond_d
    move v5, v4

    .line 7655
    .local v5, "displayChanged":Z
    :goto_0
    if-eqz v5, :cond_e

    .line 7656
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    .line 7659
    :cond_e
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateSizeCompatMode()V

    .line 7665
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v7}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 7666
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-nez v6, :cond_11

    if-nez v5, :cond_11

    .line 7667
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_f

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_10

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configuration & display unchanged in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7669
    :cond_10
    return v1

    .line 7677
    :cond_11
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v6}, Lcom/android/server/wm/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v6

    .line 7680
    .local v6, "changes":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 7682
    .local v7, "newMergedOverrideConfig":Landroid/content/res/Configuration;
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 7684
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_14

    .line 7688
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_12

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_13

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping config check for initializing activity: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7690
    :cond_13
    return v1

    .line 7693
    :cond_14
    if-nez v6, :cond_18

    iget-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-nez v8, :cond_18

    .line 7694
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_15

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_16

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration no differences in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7698
    :cond_16
    if-eqz v5, :cond_17

    .line 7699
    invoke-direct {p0, v3, v7}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_1

    .line 7701
    :cond_17
    invoke-direct {p0, v7}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7703
    :goto_1
    return v1

    .line 7706
    :cond_18
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v8, :cond_19

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_1a

    :cond_19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration changes for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", allChanges="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7708
    invoke-static {v6}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7706
    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7712
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 7713
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v8, :cond_1b

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_1c

    :cond_1b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration doesn\'t matter not running "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7715
    :cond_1c
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 7716
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 7717
    return v1

    .line 7721
    :cond_1d
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v8, :cond_1e

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_1f

    :cond_1e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking to restart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": changed=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7723
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", handles=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 7724
    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mLastReportedConfiguration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7721
    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7727
    :cond_1f
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v6, v8}, Lcom/android/server/wm/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_22

    iget-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-eqz v8, :cond_20

    goto :goto_3

    .line 7771
    :cond_20
    if-eqz v5, :cond_21

    .line 7772
    invoke-direct {p0, v3, v7}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_2

    .line 7774
    :cond_21
    invoke-direct {p0, v7}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7776
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 7778
    return v1

    .line 7729
    :cond_22
    :goto_3
    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int/2addr v8, v6

    iput v8, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 7730
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 7731
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 7732
    invoke-static {v6}, Lcom/android/server/wm/ActivityRecord;->isResizeOnlyChange(I)Z

    move-result v8

    and-int/2addr p2, v8

    .line 7733
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v8

    not-int v8, v8

    and-int/2addr v8, v6

    invoke-static {v8}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v8

    .line 7734
    .local v8, "hasResizeChange":Z
    if-eqz v8, :cond_24

    .line 7735
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v9

    .line 7736
    .local v9, "isDragResizing":Z
    if-eqz v9, :cond_23

    const/4 v10, 0x2

    goto :goto_4

    .line 7737
    :cond_23
    move v10, v1

    :goto_4
    iput v10, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 7738
    .end local v9    # "isDragResizing":Z
    goto :goto_5

    .line 7739
    :cond_24
    iput v4, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 7741
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v9

    if-nez v9, :cond_27

    .line 7742
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_25

    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_26

    :cond_25
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config is destroying non-running "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7744
    :cond_26
    const-string v2, "config"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    goto :goto_6

    .line 7745
    :cond_27
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_2a

    .line 7748
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_28

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_29

    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is skipping already pausing "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7750
    :cond_29
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 7751
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 7752
    return v1

    .line 7754
    :cond_2a
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_2b

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_2c

    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is relaunching "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7756
    :cond_2c
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_2d

    .line 7757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is relaunching invisible activity "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " called by "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    .line 7758
    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7757
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7760
    :cond_2d
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    .line 7764
    :goto_6
    return v4
.end method

.method fillsParent()Z
    .locals 1

    .line 2404
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    return v0
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 6460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .locals 6
    .param p1, "includeStartingApp"    # Z

    .line 6471
    const/4 v0, 0x0

    .line 6472
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_3

    .line 6473
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6474
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6477
    .local v4, "type":I
    if-eq v4, v2, :cond_0

    if-eqz p1, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 6482
    :cond_0
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v5, :cond_2

    .line 6483
    move-object v0, v3

    .line 6472
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "type":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6485
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v4    # "type":I
    :cond_2
    return-object v3

    .line 6489
    .end local v1    # "j":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "type":I
    :cond_3
    return-object v0
.end method

.method finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I
    .locals 16
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;
    .param p3, "resultGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 2827
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    move-object/from16 v5, p2

    goto :goto_1

    .line 2828
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing activity r="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", result="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", data="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", reason="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    :goto_1
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate finish request for r="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    return v6

    .line 2837
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finish request when not in stack for r="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    return v6

    .line 2842
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2843
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 2844
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    goto :goto_2

    :cond_5
    move v0, v6

    :goto_2
    move v9, v0

    .line 2845
    .local v9, "mayAdjustTop":Z
    if-eqz v9, :cond_6

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2848
    invoke-virtual {v0, v7}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    goto :goto_3

    :cond_6
    move v0, v6

    :goto_3
    move v10, v0

    .line 2850
    .local v10, "shouldAdjustGlobalFocus":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2852
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 2855
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2856
    .local v0, "task":Lcom/android/server/wm/Task;
    iget v11, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    iget v13, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v11, v12, v13, v14, v2}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 2859
    .local v11, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v11, :cond_7

    .line 2860
    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v12

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-eqz v12, :cond_7

    .line 2864
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2868
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 2872
    if-eqz v9, :cond_8

    move-object v12, v0

    check-cast v12, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v12, v8}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_8

    .line 2874
    const-string v12, "finish-top"

    invoke-virtual {v0, v12, v6, v10}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;

    .line 2878
    :cond_8
    invoke-direct/range {p0 .. p3}, Lcom/android/server/wm/ActivityRecord;->finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2880
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_9

    .line 2881
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v12

    if-nez v12, :cond_9

    move v12, v8

    goto :goto_4

    :cond_9
    move v12, v6

    .line 2882
    .local v12, "endTask":Z
    :goto_4
    if-eqz v12, :cond_a

    const/16 v13, 0x9

    goto :goto_5

    :cond_a
    const/4 v13, 0x7

    .line 2883
    .local v13, "transit":I
    :goto_5
    sget-object v14, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 2884
    if-eqz v12, :cond_b

    .line 2885
    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v14

    .line 2886
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    .line 2885
    invoke-virtual {v14, v15}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2892
    :cond_b
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v14, :cond_c

    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v14, :cond_d

    .line 2893
    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Prepare close transition: finishing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    :cond_d
    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14, v13, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2899
    sget-boolean v14, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v14, :cond_e

    .line 2900
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2901
    invoke-virtual {v15}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    .line 2900
    invoke-static {v14, v15, v6}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V

    .line 2907
    :cond_e
    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    if-eqz v14, :cond_f

    .line 2908
    new-array v14, v8, [Lcom/android/server/wm/Task;

    aput-object v0, v14, v6

    invoke-static {v14}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v14

    .line 2909
    .local v14, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v15, v14}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 2910
    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 2911
    invoke-virtual {v15, v14}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 2915
    .end local v14    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    :cond_f
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2917
    iget-object v14, v7, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v14, :cond_12

    .line 2918
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v14, :cond_10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Finish needs to pause: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_10
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v14, :cond_11

    .line 2920
    const-string v14, "finish() => pause with userLeaving=false"

    invoke-static {v3, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {v7, v6, v6, v3}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    .line 2926
    :cond_12
    if-eqz v12, :cond_1a

    .line 2927
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 2931
    if-eqz v9, :cond_1a

    .line 2932
    iput-boolean v8, v1, Lcom/android/server/wm/ActivityRecord;->mNeedsZBoost:Z

    .line 2933
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    goto :goto_7

    .line 2936
    :cond_13
    sget-object v14, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v14

    if-nez v14, :cond_19

    .line 2937
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_14

    .line 2939
    invoke-direct {v1, v13}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimation(I)V

    .line 2942
    :cond_14
    const-string v3, "finishIfPossible"

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v8

    goto :goto_6

    :cond_15
    move v3, v6

    .line 2945
    .local v3, "removedActivity":Z
    :goto_6
    if-eqz p5, :cond_16

    sget-object v14, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 2946
    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 2956
    :cond_16
    invoke-virtual {v0, v6}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2957
    sget-object v6, Lcom/android/server/wm/-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c;

    const-class v14, Lcom/android/server/wm/ActivityRecord;

    .line 2959
    invoke-static {v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 2957
    invoke-static {v6, v14, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v6

    .line 2960
    .local v6, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {v0, v6}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2961
    invoke-interface {v6}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2963
    .end local v6    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_17
    if-eqz v3, :cond_18

    const/4 v8, 0x2

    .line 2970
    :cond_18
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2963
    return v8

    .line 2965
    .end local v3    # "removedActivity":Z
    :cond_19
    :try_start_1
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Finish waiting for pause of: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2968
    :cond_1a
    :goto_7
    nop

    .line 2970
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2968
    return v8

    .line 2970
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "endTask":Z
    .end local v13    # "transit":I
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2971
    throw v0
.end method

.method finishIfPossible(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "oomAdj"    # Z

    .line 2810
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method finishIfSameAffinity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2738
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2740
    :cond_0
    const-string v0, "request-affinity"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2741
    const/4 v0, 0x0

    return v0
.end method

.method finishIfSubActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .locals 2
    .param p1, "parent"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "otherResultWho"    # Ljava/lang/String;
    .param p3, "otherRequestCode"    # I

    .line 2728
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 2730
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2732
    :cond_0
    const/4 v0, 0x0

    const-string v1, "request-sub"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2733
    return-void

    .line 2730
    :cond_1
    :goto_0
    return-void
.end method

.method finishLaunchTickingLocked()V
    .locals 2

    .line 5726
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 5727
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5728
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 5729
    return-void

    .line 5731
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->removeLaunchTickMessages()V

    .line 5732
    return-void
.end method

.method finishRelaunching()V
    .locals 1

    .line 3470
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->unfreezeBounds()V

    .line 3472
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    .line 3473
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    goto :goto_0

    .line 3476
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    .line 3478
    :goto_0
    return-void
.end method

.method forAllActivities(Ljava/util/function/Consumer;Z)V
    .locals 0
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 3995
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3996
    return-void
.end method

.method forAllActivities(Ljava/util/function/Function;Z)Z
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 3990
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/ActivityRecord;Ljava/lang/Boolean;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 3976
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3977
    const/4 v0, 0x0

    return v0

    .line 3979
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 3984
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .param p3, "boundary"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z",
            "Lcom/android/server/wm/ActivityRecord;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 4001
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "appStackClipMode"    # I

    .line 7395
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7397
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 7401
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outFrame"    # Landroid/graphics/Rect;
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"    # Landroid/graphics/Rect;

    .line 8600
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 8601
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 8602
    return-void

    .line 8604
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8605
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 6511
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6512
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 6513
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-eqz v0, :cond_1

    .line 6514
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 6516
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationPosition(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outPosition"    # Landroid/graphics/Point;

    .line 7408
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 7409
    return-void
.end method

.method getAppAnimationLayer()Landroid/view/SurfaceControl;
    .locals 1

    .line 6493
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 6494
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->needsZBoost()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 6495
    :cond_1
    const/4 v0, 0x0

    .line 6493
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .line 7377
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 7381
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    .line 7382
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 7383
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 7387
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    return-object v0

    .line 7389
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getDisplay()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 2392
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2393
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    .line 2399
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayId()I
    .locals 2

    .line 6251
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 6252
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 6253
    const/4 v1, -0x1

    return v1

    .line 6255
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v1

    return v1
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 4
    .param p1, "currentTarget"    # Lcom/android/server/wm/WindowState;

    .line 3957
    const/4 v0, 0x0

    .line 3958
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3959
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3960
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_0

    .line 3961
    goto :goto_1

    .line 3963
    :cond_0
    if-nez v0, :cond_1

    .line 3964
    move-object v0, v2

    .line 3958
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3967
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3948
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3949
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 3950
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$xoKZ5D123tFlyp3WJRk5AFtrB8A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$xoKZ5D123tFlyp3WJRk5AFtrB8A;

    .line 3951
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3950
    return-object v1

    .line 3953
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;
    .locals 5
    .param p1, "update"    # Z

    .line 1869
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-nez v0, :cond_0

    .line 1870
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutNanos:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    goto :goto_0

    .line 1872
    :cond_0
    if-eqz p1, :cond_2

    .line 1873
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1874
    .local v0, "name":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutNanos:J

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    iget-wide v3, v3, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    iget-object v1, v1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 1875
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1876
    :cond_1
    new-instance v1, Landroid/view/InputApplicationHandle;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutNanos:J

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 1880
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    return-object v0
.end method

.method getLastReportedConfiguration()Landroid/util/MergedConfiguration;
    .locals 1

    .line 8416
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 1514
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1517
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1519
    :goto_0
    return-void
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    .line 1506
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1508
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .locals 1

    .line 4339
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->forTargetActivity()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getOrientation(I)I
    .locals 1
    .param p1, "candidate"    # I

    .line 6925
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 6929
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    return v0

    .line 6935
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6936
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6937
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    return v0

    .line 6940
    :cond_2
    const/4 v0, -0x2

    return v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getPersistentSavedState()Landroid/os/PersistableBundle;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method getPid()I
    .locals 1

    .line 8212
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProcName()Ljava/lang/String;
    .locals 1

    .line 8615
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    .line 8382
    const-wide v0, 0x10b00000006L

    return-wide v0
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .locals 1

    .line 6853
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object v0
.end method

.method getRequestedOrientation()I
    .locals 1

    .line 6945
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    return v0
.end method

.method getRootTask()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getRootTaskId()I
    .locals 1

    .line 2388
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getSavedState()Landroid/os/Bundle;
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    return-object v0
.end method

.method getSizeCompatScale()F
    .locals 1

    .line 7142
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    :goto_0
    return v0
.end method

.method getStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getState()Lcom/android/server/wm/ActivityStack$ActivityState;
    .locals 1

    .line 4949
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    return-object v0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getThumbnail()Lcom/android/server/wm/WindowContainerThumbnail;
    .locals 1

    .line 6821
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    return-object v0
.end method

.method getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 6450
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6451
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6452
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6453
    return-object v1

    .line 6450
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6456
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransit()I
    .locals 1

    .line 6833
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransit:I

    return v0
.end method

.method getTransitFlags()I
    .locals 1

    .line 6837
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitFlags:I

    return v0
.end method

.method getTurnScreenOnFlag()Z
    .locals 1

    .line 8237
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

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

.method getUid()I
    .locals 1

    .line 8204
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;
    .locals 2

    .line 4043
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v0, :cond_0

    .line 4044
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v0, v1, p0}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 4046
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    return-object v0
.end method

.method getZoomStackOrientation(I)I
    .locals 2
    .param p1, "candidate"    # I

    .line 8622
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8624
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    return v0

    .line 8627
    :cond_0
    return p1
.end method

.method handleAlreadyVisible()V
    .locals 3

    .line 5373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 5375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 5376
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5379
    :cond_0
    goto :goto_0

    .line 5378
    :catch_0
    move-exception v0

    .line 5380
    :goto_0
    return-void
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 1

    .line 3534
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v0, :cond_0

    .line 3535
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeIfPossible()V

    .line 3537
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method hasActivity()Z
    .locals 1

    .line 1892
    const/4 v0, 0x1

    return v0
.end method

.method hasProcess()Z
    .locals 1

    .line 1905
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSavedState()Z
    .locals 1

    .line 1137
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    return v0
.end method

.method hasSizeCompatBounds()Z
    .locals 1

    .line 7078
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasStartingWindow()Z
    .locals 4

    .line 3669
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3672
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3673
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3674
    return v1

    .line 3672
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3677
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 3670
    :cond_3
    :goto_1
    return v1
.end method

.method hasWindowsAlive()Z
    .locals 3

    .line 6399
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6402
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v2, :cond_0

    .line 6403
    return v1

    .line 6399
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6406
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method inSizeCompatMode()Z
    .locals 13

    .line 6974
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6976
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 6979
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6980
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 6982
    return v1

    .line 6985
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6989
    .local v2, "parentConfig":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    .line 6990
    return v5

    .line 6993
    :cond_2
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 6994
    .local v3, "parentAppBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 6995
    .local v4, "appWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 6996
    .local v6, "appHeight":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 6997
    .local v7, "parentAppWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 6998
    .local v8, "parentAppHeight":I
    if-ne v7, v4, :cond_3

    if-ne v8, v6, :cond_3

    .line 7000
    return v1

    .line 7002
    :cond_3
    if-le v7, v4, :cond_4

    if-le v8, v6, :cond_4

    .line 7004
    return v5

    .line 7006
    :cond_4
    if-lt v7, v4, :cond_8

    if-ge v8, v6, :cond_5

    goto :goto_0

    .line 7013
    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const/high16 v11, 0x3f000000    # 0.5f

    if-lez v9, :cond_6

    .line 7014
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v11

    .line 7015
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v9, v12

    .line 7016
    .local v9, "aspectRatio":F
    iget-object v12, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v12, v9, v12

    if-ltz v12, :cond_6

    .line 7018
    return v1

    .line 7021
    .end local v9    # "aspectRatio":F
    :cond_6
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 7024
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v11

    .line 7025
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 7026
    .local v9, "parentAspectRatio":F
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_7

    .line 7028
    return v1

    .line 7031
    .end local v9    # "parentAspectRatio":F
    :cond_7
    return v5

    .line 7008
    :cond_8
    :goto_0
    return v5

    .line 6977
    .end local v0    # "appBounds":Landroid/graphics/Rect;
    .end local v2    # "parentConfig":Landroid/content/res/Configuration;
    .end local v3    # "parentAppBounds":Landroid/graphics/Rect;
    .end local v4    # "appWidth":I
    .end local v6    # "appHeight":I
    .end local v7    # "parentAppWidth":I
    .end local v8    # "parentAppHeight":I
    :cond_9
    :goto_1
    return v1
.end method

.method public isAppInfoGame()I
    .locals 3

    .line 6526
    const/4 v0, 0x0

    .line 6527
    .local v0, "isGame":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    .line 6528
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 6529
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 6531
    :cond_2
    return v0
.end method

.method isClientVisible()Z
    .locals 1

    .line 6052
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisible:Z

    return v0
.end method

.method isClosingOrEnteringPip()Z
    .locals 1

    .line 2644
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConfigurationCompatible(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 7477
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    .line 7478
    .local v0, "orientation":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_0

    .line 7480
    return v2

    .line 7482
    :cond_0
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 7484
    return v2

    .line 7486
    :cond_1
    return v3
.end method

.method final isDestroyable()Z
    .locals 3

    .line 6259
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6263
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 6264
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq p0, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 6269
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_2

    .line 6271
    return v1

    .line 6273
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 6267
    :cond_3
    :goto_0
    return v1

    .line 6261
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_1
    return v1
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "existingWindow"    # Lcom/android/server/wm/WindowState;

    .line 3644
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3645
    .local v0, "type1":I
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3648
    .local v1, "type2":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    .line 3649
    return v2

    .line 3650
    :cond_0
    if-eq v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    .line 3651
    return v3

    .line 3655
    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    if-eq v1, v4, :cond_2

    .line 3656
    return v3

    .line 3657
    :cond_2
    if-eq v0, v4, :cond_3

    if-ne v1, v4, :cond_3

    .line 3658
    return v2

    .line 3662
    :cond_3
    return v3
.end method

.method isFocusable()Z
    .locals 1

    .line 2474
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFreezingScreen()Z
    .locals 1

    .line 5816
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    return v0
.end method

.method isInHistory()Z
    .locals 1

    .line 2458
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    return v0
.end method

.method isInStackLocked()Z
    .locals 2

    .line 2462
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2463
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInterestingToUserLocked()Z
    .locals 2

    .line 6213
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

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

.method isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 3681
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method isLetterboxOverlappingWith(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1533
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->isOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNoHistory()Z
    .locals 2

    .line 8079
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

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

.method isNonResizableOrForcedResizable(I)Z
    .locals 4
    .param p1, "windowingMode"    # I

    .line 2500
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2501
    return v0

    .line 2503
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v1, v3, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method isPersistable()Z
    .locals 2

    .line 2467
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 2469
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2467
    :goto_1
    return v0
.end method

.method isProcessRunning()Z
    .locals 4

    .line 8019
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 8020
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    if-nez v0, :cond_0

    .line 8021
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    .line 8023
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isRelaunching()Z
    .locals 1

    .line 3410
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isResizeable()Z
    .locals 3

    .line 2486
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2487
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 2488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickReply: force resizable for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_0
    return v1

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2494
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2495
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 2493
    :goto_1
    return v1
.end method

.method isResolverOrChildActivity()Z
    .locals 4

    .line 1629
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1630
    return v1

    .line 1633
    :cond_0
    :try_start_0
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    const-class v2, Ljava/lang/Object;

    .line 1634
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1633
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method isResolverOrDelegateActivity()Z
    .locals 2

    .line 1624
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1625
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getSystemChooserActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 1624
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method isResumedActivityOnDisplay()Z
    .locals 6

    .line 8274
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 8275
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8276
    return v1

    .line 8278
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "tdaNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 8279
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 8280
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 8281
    .local v5, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_2

    .line 8282
    if-ne v5, p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 8278
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8285
    .end local v2    # "tdaNdx":I
    :cond_3
    return v1
.end method

.method isRootOfTask()Z
    .locals 3

    .line 8297
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8298
    return v1

    .line 8300
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 8301
    .local v0, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-ne p0, v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method final isSleeping()Z
    .locals 2

    .line 4113
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 4114
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method isSnapshotCompatible(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .locals 4
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2163
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2164
    return v0

    .line 2170
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2171
    return v0

    .line 2175
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    .line 2176
    .local v1, "rotation":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2178
    move v2, v1

    goto :goto_0

    .line 2180
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    :goto_0
    nop

    .line 2181
    .local v2, "targetRotation":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getRotation()I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4956
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .locals 1
    .param p1, "state1"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4963
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_0

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

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .locals 1
    .param p1, "state1"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "state3"    # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4970
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-ne p3, v0, :cond_0

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

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .locals 1
    .param p1, "state1"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "state3"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p4, "state4"    # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4978
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-eq p3, v0, :cond_1

    if-ne p4, v0, :cond_0

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

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .locals 1
    .param p1, "state1"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "state3"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p4, "state4"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p5, "state5"    # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4986
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-eq p3, v0, :cond_1

    if-eq p4, v0, :cond_1

    if-ne p5, v0, :cond_0

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

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .locals 1
    .param p1, "state1"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "state3"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p4, "state4"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p5, "state5"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p6, "state6"    # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4995
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-eq p3, v0, :cond_1

    if-eq p4, v0, :cond_1

    if-eq p5, v0, :cond_1

    if-ne p6, v0, :cond_0

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

.method isSurfaceShowing()Z
    .locals 1

    .line 6656
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    return v0
.end method

.method isTaskOverlay()Z
    .locals 1

    .line 8310
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    return v0
.end method

.method isTopRunningActivity()Z
    .locals 1

    .line 8266
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 8208
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 4420
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    return v0
.end method

.method isWaitingForTransitionStart()Z
    .locals 2

    .line 6557
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6558
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 6559
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 6560
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 6561
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6558
    :goto_0
    return v1
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "windowPid"    # I

    .line 6151
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6152
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 6153
    .local v1, "anrActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6154
    .local v2, "anrApp":Lcom/android/server/wm/WindowProcessController;
    nop

    .line 6155
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    if-eq v3, p2, :cond_1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    .line 6156
    .local v3, "windowFromSameProcessAsActivity":Z
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6158
    if-eqz v3, :cond_2

    .line 6159
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v10, 0x0

    move-object v11, p1

    invoke-virtual/range {v4 .. v11}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 6165
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p2, v5, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    return v4

    .line 6156
    .end local v1    # "anrActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "anrApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "windowFromSameProcessAsActivity":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$layoutLetterbox$2$ActivityRecord()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$ActivityRecord([F[F)V
    .locals 3
    .param p1, "matrix"    # [F
    .param p2, "translation"    # [F

    .line 770
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 771
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-nez v1, :cond_0

    .line 772
    new-instance v1, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;-><init>(Lcom/android/server/wm/ActivityRecord$1;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    .line 775
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->setSaturation([F[F)V

    .line 776
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateColorTransform()V

    .line 777
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$new$1$ActivityRecord([F[F)V
    .locals 2
    .param p1, "matrix"    # [F
    .param p2, "translation"    # [F

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY;-><init>(Lcom/android/server/wm/ActivityRecord;[F[F)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$restartProcessIfVisible$9$ActivityRecord()V
    .locals 5

    .line 7982
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7983
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 7984
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 7987
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 7990
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v3, "restartActivityProcess"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 7992
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7994
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v4, "resetConfig"

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 7995
    return-void

    .line 7985
    .end local v1    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7992
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1453
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_9

    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    goto/16 :goto_5

    .line 1456
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-nez v1, :cond_2

    .line 1458
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 1459
    .local v1, "surfaceReady":Z
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1460
    .local v2, "needsLetterbox":Z
    :cond_3
    if-eqz v2, :cond_7

    .line 1461
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez v3, :cond_4

    .line 1462
    new-instance v3, Lcom/android/server/wm/Letterbox;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$ActivityRecord$lyqdJlA4QOn1CXj7zglxNJxDy9o;

    invoke-direct {v4, p0}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$lyqdJlA4QOn1CXj7zglxNJxDy9o;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 1464
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Letterbox;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 1466
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->getPosition(Landroid/graphics/Point;)V

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1472
    .local v3, "transformedBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_5

    .line 1473
    move-object v4, v3

    goto :goto_2

    .line 1474
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1475
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_2

    .line 1476
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    :goto_2
    nop

    .line 1477
    .local v4, "spaceToFill":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .end local v3    # "transformedBounds":Landroid/graphics/Rect;
    .end local v4    # "spaceToFill":Landroid/graphics/Rect;
    goto :goto_3

    .line 1478
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v3, :cond_8

    .line 1479
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->hide()V

    goto :goto_4

    .line 1478
    :cond_8
    :goto_3
    nop

    .line 1481
    :goto_4
    return-void

    .line 1454
    .end local v1    # "surfaceReady":Z
    .end local v2    # "needsLetterbox":Z
    :cond_9
    :goto_5
    return-void
.end method

.method letterboxNotIntersectsOrFullyContains(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1525
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z

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

.method logStartActivity(ILcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 4026
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4028
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4031
    .local v1, "strData":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x80

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v3, :cond_1

    .line 4032
    const-string v1, "dat=xx"

    .line 4036
    :cond_1
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4037
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget v4, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4038
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4039
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x6

    aput-object v1, v3, v2

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 4036
    invoke-static {p1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4040
    return-void
.end method

.method makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 7
    .param p1, "activeActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 5243
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1

    .line 5244
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    .line 5245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume visible activity, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5247
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 5249
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const-string v2, "makeActiveIfNeeded"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 5250
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2

    .line 5251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pause visible activity, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    :cond_2
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 5256
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 5259
    invoke-static {v5, v4, v6, v4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v5

    .line 5258
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5261
    :catch_0
    move-exception v0

    .line 5262
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_2

    .line 5264
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->shouldStartActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5265
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_4

    .line 5266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start visible activity, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    :cond_4
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 5269
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5271
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 5272
    invoke-static {}, Landroid/app/servertransaction/StartActivityItem;->obtain()Landroid/app/servertransaction/StartActivityItem;

    move-result-object v5

    .line 5271
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5275
    goto :goto_1

    .line 5273
    :catch_1
    move-exception v0

    .line 5274
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5278
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5280
    :cond_5
    :goto_2
    return v4
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeFinishingLocked()V
    .locals 1

    .line 3331
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    .line 3332
    return-void

    .line 3334
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 3335
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_1

    .line 3336
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 3338
    :cond_1
    return-void
.end method

.method makeInvisible()V
    .locals 9

    .line 5180
    const-string v0, "makeInvisible"

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const-string v2, "ActivityTaskManager"

    if-nez v1, :cond_1

    .line 5181
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already invisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    :cond_0
    return-void

    .line 5186
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_2

    .line 5187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making invisible: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5190
    :cond_2
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    .line 5199
    .local v3, "canEnterPictureInPicture":Z
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 5200
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_0

    :cond_3
    move v5, v4

    .line 5201
    .local v5, "deferHidingClient":Z
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 5202
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 5204
    sget-object v6, Lcom/android/server/wm/ActivityRecord$5;->$SwitchMap$com$android$server$wm$ActivityStack$ActivityState:[I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 5209
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 5210
    goto :goto_1

    .line 5214
    :pswitch_1
    if-eqz v5, :cond_4

    .line 5215
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    .line 5218
    goto :goto_1

    .line 5224
    :cond_4
    :pswitch_2
    invoke-virtual {p0, v1, v3, v0}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5226
    nop

    .line 5234
    .end local v3    # "canEnterPictureInPicture":Z
    .end local v5    # "deferHidingClient":Z
    :goto_1
    goto :goto_2

    .line 5231
    :catch_0
    move-exception v0

    .line 5233
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown making hidden: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5235
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 5
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reportToClient"    # Z

    .line 5146
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "ActivityTaskManager"

    if-eq v0, v1, :cond_4

    if-ne p0, p1, :cond_0

    goto :goto_2

    .line 5153
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making visible and scheduling visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5157
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    .line 5158
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 5159
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5161
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 5162
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mSetToSleep:Z

    .line 5163
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowProcessController;->postPendingUiCleanMsg(Z)V

    .line 5164
    if-eqz p2, :cond_3

    .line 5165
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 5166
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_0

    .line 5168
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 5171
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5175
    goto :goto_1

    .line 5172
    :catch_0
    move-exception v1

    .line 5174
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown making visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5176
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    .line 5177
    return-void

    .line 5147
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not making visible, r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " starting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    :cond_5
    return-void
.end method

.method public matchParentBounds()Z
    .locals 4

    .line 7129
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7130
    .local v0, "overrideBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 7131
    return v2

    .line 7136
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 7137
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method mayFreezeScreenLocked()Z
    .locals 1

    .line 5735
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    return v0
.end method

.method moveFocusableActivityToTop(Ljava/lang/String;)Z
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 2693
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ActivityTaskManager"

    if-nez v0, :cond_1

    .line 2694
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v0, :cond_0

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveActivityStackToFront: unfocusable activity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :cond_0
    return v1

    .line 2700
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2701
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_2

    .line 2702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveActivityStackToFront: invalid task or stack: activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    return v1

    .line 2707
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v1, p0, :cond_4

    .line 2708
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_4

    .line 2709
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v1, :cond_3

    .line 2710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveActivityStackToFront: already on top, activity="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_3
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 2715
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v1, :cond_5

    .line 2716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveActivityStackToFront: activity="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2721
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v1, p0, :cond_6

    .line 2722
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2724
    :cond_6
    return v3
.end method

.method needsZBoost()Z
    .locals 1

    .line 6500
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mNeedsZBoost:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->needsZBoost()Z

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

.method notifyAppResumed(Z)V
    .locals 10
    .param p1, "wasStopped"    # Z

    .line 5035
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    return-void

    .line 5040
    :cond_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, p1

    .local v0, "protoLogParam0":Z
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x515498e7

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object v3, v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5042
    .end local v0    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 5044
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    .line 5045
    if-nez p1, :cond_2

    .line 5046
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    .line 5048
    :cond_2
    return-void
.end method

.method notifyAppStopped()V
    .locals 7

    .line 5055
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x7172dcb3

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5056
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 5058
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PinnedStackController;->onActivityHidden(Landroid/content/ComponentName;)V

    .line 5059
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces()V

    .line 5061
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 5062
    return-void
.end method

.method notifyUnknownVisibilityLaunchedForKeyguardTransition()V
    .locals 1

    .line 5072
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5076
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/ActivityRecord;)V

    .line 5077
    return-void

    .line 5073
    :cond_1
    :goto_0
    return-void
.end method

.method occludesParent()Z
    .locals 1

    .line 2410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    return v0
.end method

.method public okToShowLocked()Z
    .locals 3

    .line 6194
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6195
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEncryptionAware()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6196
    return v1

    .line 6199
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6200
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6201
    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 6199
    :goto_1
    return v1
.end method

.method protected onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 6740
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 6742
    const-wide/16 v0, 0x20

    const-string v2, "AR#onAnimationFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6743
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mTransit:I

    .line 6744
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mTransitFlags:I

    .line 6745
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mNeedsAnimationBoundsLayer:Z

    .line 6747
    const/16 v3, 0xc

    const-string v4, "ActivityRecord"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityRecord;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 6750
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    .line 6751
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    .line 6753
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->computeImeTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6755
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation done in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": reportedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " okToDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6757
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToDisplay()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " okToAnimate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6758
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToAnimate()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " startingDisplayed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6755
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6762
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    if-eqz v2, :cond_3

    .line 6763
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainerThumbnail;->destroy()V

    .line 6764
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    .line 6769
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6770
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    sget-object v3, Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 6772
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 6773
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAnimation()V

    .line 6775
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 6776
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6777
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6781
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdle()V

    goto :goto_0

    .line 6782
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6788
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleProcessStoppingAndFinishingActivities()V

    .line 6794
    :cond_6
    :goto_0
    sget-boolean v3, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v3, :cond_7

    .line 6795
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->onAnimationFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 6799
    :cond_7
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6800
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 6585
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getAnimationLayer()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 6586
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->assignStackOrdering()V

    .line 6587
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 6727
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 6728
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 6729
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    .line 6733
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    if-eqz v0, :cond_1

    .line 6734
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 6736
    :cond_1
    return-void
.end method

.method public onAppFreezeTimeout()V
    .locals 2

    .line 5821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing freeze: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5822
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    .line 5823
    return-void
.end method

.method onCancelFixedRotationTransform(I)V
    .locals 1
    .param p1, "originalDisplayRotation"    # I

    .line 6865
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 6866
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6872
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen(I)V

    .line 6875
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 6876
    return-void

    .line 6868
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 7414
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7415
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7419
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7420
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 7421
    .local v3, "wasFixedOrient":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v5

    .line 7422
    .local v5, "requestedOrient":I
    if-eqz v5, :cond_1

    .line 7423
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_1

    .line 7426
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_1

    iget-object v6, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7427
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 7428
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 7429
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7430
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 7429
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 7431
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7432
    return-void

    .line 7433
    :cond_1
    if-eqz v3, :cond_2

    if-nez v5, :cond_2

    iget-object v6, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7434
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 7436
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 7437
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7438
    return-void

    .line 7441
    .end local v0    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v3    # "wasFixedOrient":Z
    .end local v5    # "requestedOrient":I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7446
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->seq:I

    if-eq v0, v3, :cond_3

    .line 7447
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onMergedOverrideConfigurationChanged()V

    .line 7450
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7451
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_4

    .line 7452
    return-void

    .line 7454
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_5

    .line 7456
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_2

    .line 7457
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v3, :cond_8

    .line 7460
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getCurrentOverrideConfigurationChanges()I

    move-result v3

    .line 7461
    .local v3, "displayChanges":I
    const v4, 0x20000480

    .line 7463
    .local v4, "orientationChanges":I
    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x20000480

    and-int v6, v3, v5

    if-eq v6, v5, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    .line 7469
    .local v1, "hasNonOrienSizeChanged":Z
    :goto_1
    if-nez v1, :cond_7

    and-int/lit16 v2, v3, 0x1000

    if-eqz v2, :cond_8

    .line 7470
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 7473
    .end local v1    # "hasNonOrienSizeChanged":Z
    .end local v3    # "displayChanges":I
    .end local v4    # "orientationChanges":I
    :cond_8
    :goto_2
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1424
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1425
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1426
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1430
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1432
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1433
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 1434
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1437
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1439
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_2

    .line 1440
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1441
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 1442
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1446
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_3

    .line 1447
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->onMovedToDisplay(I)V

    .line 1449
    :cond_3
    return-void

    .line 1427
    :cond_4
    :goto_0
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 5875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 5878
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeDeadWindows()V

    .line 5880
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    .line 5881
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x63f8f64e

    const/4 v4, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    invoke-static {v2, v3, v5, v4, v0}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5886
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 5888
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 5889
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 5890
    return-void
.end method

.method public onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 6591
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    if-eqz v0, :cond_0

    .line 6592
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyStarting(Lcom/android/server/wm/ActivityRecord;)V

    .line 6597
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mNeedsAnimationBoundsLayer:Z

    if-eqz v0, :cond_5

    .line 6598
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6599
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 6600
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTransit()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 6599
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransitionController;->isTransitWithinTask(ILcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6601
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 6603
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 6604
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_2

    .line 6605
    return-void

    .line 6608
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 6610
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    .line 6614
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_3

    .line 6615
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->adjustWindowCropForLeash(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 6620
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-nez v0, :cond_4

    .line 6623
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 6625
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 6626
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getAnimationLayer()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 6629
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6631
    :cond_5
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 8
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1340
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/Task;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1341
    .local v1, "oldTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz p1, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/Task;

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 1342
    .local v2, "newTask":Lcom/android/server/wm/Task;
    :goto_1
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1344
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1347
    if-eqz v1, :cond_2

    .line 1348
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1350
    :cond_2
    if-eqz v2, :cond_3

    .line 1351
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1355
    :cond_3
    const/4 v3, 0x1

    if-nez p2, :cond_5

    if-eqz p1, :cond_5

    .line 1357
    iget-object v5, v2, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_4

    move v4, v3

    :cond_4
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    .line 1358
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutNanos:J

    .line 1362
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1365
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateSizeCompatMode()V

    .line 1369
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1376
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v4, :cond_6

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1382
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastParent:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1383
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1385
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1388
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    if-eqz v5, :cond_8

    .line 1389
    invoke-virtual {v5, p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 1391
    :cond_8
    if-eqz v4, :cond_9

    .line 1392
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;

    move-result-object v0

    goto :goto_3

    .line 1393
    :cond_9
    nop

    :goto_3
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 1395
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParent:Lcom/android/server/wm/Task;

    .line 1397
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateColorTransform()V

    .line 1399
    if-eqz v1, :cond_a

    .line 1400
    invoke-virtual {v1, p0}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 1402
    :cond_a
    if-eqz v2, :cond_b

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1403
    const-string v0, "onParentChanged"

    invoke-virtual {v2, p0, v0}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1406
    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_c

    .line 1408
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v0, :cond_c

    .line 1409
    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStack;->setHasBeenVisible(Z)V

    .line 1412
    :cond_c
    return-void
.end method

.method onRemovedFromDisplay()V
    .locals 17

    .line 3541
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    if-eqz v1, :cond_0

    .line 3542
    return-void

    .line 3544
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    .line 3546
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x50970dd7

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3548
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 3550
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 3552
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskSnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 3553
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 3554
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    .line 3560
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v2

    .line 3561
    .local v2, "delayed":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3562
    const/4 v2, 0x1

    goto :goto_0

    .line 3563
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3565
    const/4 v2, 0x1

    .line 3568
    :cond_3
    :goto_0
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eqz v5, :cond_4

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    move v9, v2

    .local v9, "protoLogParam1":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam2":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v11

    .local v11, "protoLogParam3":Z
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v13, 0x6289fdd7

    const/16 v14, 0xcc

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v5, v15, v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v1

    aput-object v10, v15, v6

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v12, v13, v14, v3, v15}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3572
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":Z
    .end local v10    # "protoLogParam2":Ljava/lang/String;
    .end local v11    # "protoLogParam3":Z
    :cond_4
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v5, :cond_5

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam0":Ljava/lang/String;
    move v9, v2

    .restart local v9    # "protoLogParam1":Z
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "protoLogParam2":Ljava/lang/String;
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v12, -0x5bca26db

    const/16 v13, 0xc

    new-array v14, v8, [Ljava/lang/Object;

    aput-object v5, v14, v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v1

    aput-object v10, v14, v6

    invoke-static {v11, v12, v13, v3, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3575
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":Z
    .end local v10    # "protoLogParam2":Ljava/lang/String;
    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_6

    .line 3576
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 3582
    :cond_6
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3583
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3586
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 3587
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 3589
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v8, :cond_8

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v10, -0x7dc31476

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-static {v9, v10, v4, v3, v11}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3591
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_9

    .line 3592
    iget-object v8, v5, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3594
    :cond_9
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    goto :goto_1

    .line 3598
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->cancelAnimation()V

    .line 3599
    if-eqz v5, :cond_b

    .line 3600
    iget-object v8, v5, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3602
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->removeIfPossible()V

    .line 3605
    :goto_1
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    .line 3607
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 3608
    .local v8, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v9, v8, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v9, v0, :cond_d

    .line 3609
    sget-boolean v9, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v9, :cond_c

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    int-to-long v10, v10

    .local v10, "protoLogParam1":J
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v13, -0x2df73d02

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v6, v1

    invoke-static {v12, v13, v7, v3, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3612
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":J
    :cond_c
    invoke-virtual {v8, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 3613
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v4, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3616
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v6, "com.imusic.iting"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeFocusedStacksTopActivities when "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " onRemovedFromDisplay"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3622
    :cond_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_e

    .line 3623
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->destroy()V

    .line 3624
    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 3627
    :cond_e
    if-nez v2, :cond_f

    .line 3628
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 3632
    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/PinnedStackController;->onActivityHidden(Landroid/content/ComponentName;)V

    .line 3633
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/EmbeddedWindowController;->onActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 3634
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    .line 3635
    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 377
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onStartingWindowDrawn()V
    .locals 2

    .line 5893
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 5894
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 5896
    :cond_0
    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .locals 0

    .line 377
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

.method onWindowReplacementTimeout()V
    .locals 2

    .line 3713
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3714
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 3713
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3716
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onWindowsDrawn(ZJ)V
    .locals 11
    .param p1, "drawn"    # Z
    .param p2, "timestampNs"    # J

    .line 5900
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    .line 5901
    if-nez p1, :cond_0

    .line 5902
    return-void

    .line 5907
    :cond_0
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_1

    .line 5908
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->onWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 5912
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 5913
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyWindowsDrawn(Lcom/android/server/wm/ActivityRecord;J)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    move-result-object v0

    .line 5914
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 5915
    .local v2, "validInfo":Z
    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_3

    iget v4, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    goto :goto_1

    :cond_3
    move v4, v3

    .line 5916
    .local v4, "windowsDrawnDelayMs":I
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getLaunchState()I

    move-result v3

    :cond_4
    move v10, v3

    .line 5920
    .local v10, "launchState":I
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne p0, v3, :cond_6

    .line 5921
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v6, 0x0

    int-to-long v8, v4

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 5923
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    int-to-long v5, v4

    invoke-virtual {v3, p0, v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;J)V

    .line 5925
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 5926
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_7

    .line 5927
    invoke-virtual {v3, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 5929
    :cond_7
    return-void
.end method

.method onWindowsGone()V
    .locals 2

    .line 5954
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting gone in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5955
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowsGone(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5956
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 5957
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 5958
    return-void
.end method

.method onWindowsVisible()V
    .locals 2

    .line 5933
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting visible in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5934
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 5938
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_1

    .line 5939
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->notifyZoomActivityShown(Lcom/android/server/wm/ActivityRecord;)V

    .line 5943
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowsVisibleLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5944
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_3

    .line 5945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 5946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 5947
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    .line 5948
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 5950
    :cond_3
    return-void
.end method

.method pauseKeyDispatchingLocked()V
    .locals 1

    .line 4381
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_0

    .line 4382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 4384
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4385
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 4388
    :cond_0
    return-void
.end method

.method postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 6362
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p1, :cond_1

    .line 6363
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x6e7ea420

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v3, v2, v1}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6364
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    goto :goto_0

    .line 6365
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 6368
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0x63a89c22

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6369
    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 6370
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_5

    .line 6374
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    goto :goto_0

    .line 6376
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6379
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x663cec08

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v3, v2, v1}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6380
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 6382
    :cond_5
    :goto_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 3

    .line 6635
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimatingExcluding(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6638
    .local v0, "show":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    .line 6639
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    if-nez v1, :cond_2

    .line 6640
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 6641
    :cond_2
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    if-eqz v1, :cond_3

    .line 6642
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6645
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    if-eqz v1, :cond_4

    .line 6646
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowContainerThumbnail;->setShowing(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 6648
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    .line 6649
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->prepareSurfaces()V

    .line 6650
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 1
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 6841
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 6842
    if-eqz p1, :cond_0

    .line 6843
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ju_KnYxEFekr6LzoWamCeaO5FHQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$ju_KnYxEFekr6LzoWamCeaO5FHQ;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1, v0}, Landroid/view/RemoteAnimationDefinition;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 6845
    :cond_0
    return-void
.end method

.method relaunchActivityLocked(Z)V
    .locals 10
    .param p1, "preserveWindow"    # Z

    .line 7874
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7875
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 7876
    return-void

    .line 7879
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    .line 7880
    .local v2, "andResume":Z
    const/4 v3, 0x0

    .line 7881
    .local v3, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v4, 0x0

    .line 7882
    .local v4, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz v2, :cond_1

    .line 7883
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 7884
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 7886
    :cond_1
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Relaunching: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with results="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " newIntents="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " andResume="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " preserveWindow="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7890
    :cond_2
    if-eqz v2, :cond_3

    .line 7891
    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v5, v7, v8, v9}, Lcom/android/server/wm/EventLogTags;->writeWmRelaunchResumeActivity(IIILjava/lang/String;)V

    goto :goto_0

    .line 7894
    :cond_3
    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v5, v7, v8, v9}, Lcom/android/server/wm/EventLogTags;->writeWmRelaunchActivity(IIILjava/lang/String;)V

    .line 7898
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 7901
    :try_start_0
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_6

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7902
    if-eqz v2, :cond_5

    const-string v7, "RESUMED"

    goto :goto_1

    :cond_5
    const-string v7, "PAUSED"

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Relaunching "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " callers="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    .line 7903
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7901
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7904
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 7905
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->startRelaunching()V

    .line 7906
    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    new-instance v7, Landroid/util/MergedConfiguration;

    .line 7908
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 7909
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 7906
    invoke-static {v3, v4, v5, v7, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v5

    .line 7912
    .local v5, "callbackItem":Landroid/app/servertransaction/ClientTransactionItem;
    if-eqz v2, :cond_7

    .line 7913
    nop

    .line 7914
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v7

    .line 7913
    invoke-static {v7}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v7

    .local v7, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_2

    .line 7916
    .end local v7    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_7
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v7

    .line 7918
    .restart local v7    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v8, v9}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v8

    .line 7919
    .local v8, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v8, v5}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 7920
    invoke-virtual {v8, v7}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 7921
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7927
    .end local v5    # "callbackItem":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v7    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v8    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    goto :goto_3

    .line 7925
    :catch_0
    move-exception v5

    .line 7926
    .local v5, "e":Landroid/os/RemoteException;
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v7, :cond_8

    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v7, :cond_9

    :cond_8
    const-string v7, "Relaunch failed"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7929
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_3
    if-eqz v2, :cond_b

    .line 7930
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_a

    .line 7931
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resumed after relaunch "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7933
    :cond_a
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 7934
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 7935
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_4

    .line 7937
    :cond_b
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 7938
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 7939
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "relaunchActivityLocked"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 7942
    :goto_4
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 7943
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 7944
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 7945
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 377
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/WindowState;

    .line 3703
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3705
    return-void

    .line 3707
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 3708
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    .line 3709
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 3710
    return-void
.end method

.method removeDeadWindows()V
    .locals 9

    .line 6385
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "winNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 6386
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6387
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v3, :cond_1

    .line 6388
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x5a4f8697

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6391
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 6393
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 6385
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6396
    .end local v0    # "winNdx":I
    :cond_2
    return-void
.end method

.method removeFromHistory(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 3307
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3309
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 3310
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_0

    .line 3311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing activity "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from stack callers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 3312
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3311
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 3316
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 3317
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    .line 3318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to DESTROYED: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (removed from history)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3321
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v3, "removeFromHistory"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3322
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing app during remove for activity "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3324
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeAppTokenFromDisplay()V

    .line 3326
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpActivityServices()V

    .line 3327
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeUriPermissionsLocked()V

    .line 3328
    return-void
.end method

.method removeIfPossible()V
    .locals 1

    .line 3527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    .line 3528
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeAllWindowsIfPossible()V

    .line 3529
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeImmediately()V

    .line 3530
    return-void
.end method

.method removeImmediately()V
    .locals 0

    .line 3521
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onRemovedFromDisplay()V

    .line 3522
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 3523
    return-void
.end method

.method removeLaunchTickRunnable()V
    .locals 2

    .line 5722
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5723
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "replacement"    # Lcom/android/server/wm/WindowState;

    .line 3729
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3730
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3731
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3732
    return-void

    .line 3729
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3735
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .locals 3
    .param p1, "from"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 4062
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 4063
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 4064
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityResult;

    .line 4065
    .local v1, "r":Lcom/android/server/wm/ActivityResult;
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_0

    goto :goto_1

    .line 4066
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 4067
    if-eqz p2, :cond_2

    goto :goto_1

    .line 4069
    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 4071
    :cond_2
    iget v2, v1, Lcom/android/server/wm/ActivityResult;->mRequestCode:I

    if-eq v2, p3, :cond_3

    goto :goto_1

    .line 4073
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4063
    .end local v1    # "r":Lcom/android/server/wm/ActivityResult;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4076
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method removeStartingWindow()V
    .locals 11

    .line 2185
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 2186
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_1

    .line 2189
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x7ed44c8d

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2190
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2192
    :cond_1
    return-void

    .line 2196
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_8

    .line 2197
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2198
    .local v0, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2199
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2200
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2201
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .line 2202
    if-nez v0, :cond_4

    .line 2203
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x2b3002b

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v2, v3, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2207
    :cond_3
    return-void

    .line 2216
    :cond_4
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v4, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam2":Ljava/lang/String;
    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam3":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x433c24a0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v2

    aput-object v5, v10, v1

    const/4 v1, 0x2

    aput-object v6, v10, v1

    const/4 v1, 0x3

    aput-object v7, v10, v1

    invoke-static {v8, v9, v2, v3, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2222
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    .end local v6    # "protoLogParam2":Ljava/lang/String;
    .end local v7    # "protoLogParam3":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->interceptRemoveStartingWindow(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2223
    return-void

    .line 2229
    :cond_6
    sget-boolean v1, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v1, :cond_7

    .line 2230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " WMS: REMOVE_STARTING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_LAUNCH"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityRecord$tt99EJHW_Nk5qgU9galJBIm5wXg;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$tt99EJHW_Nk5qgU9galJBIm5wXg;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2244
    return-void

    .line 2210
    .end local v0    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :cond_8
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x8c1140b

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2213
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method removeTimeouts()V
    .locals 1

    .line 5524
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 5525
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 5526
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    .line 5527
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeDestroyTimeout()V

    .line 5528
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 5529
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .line 4374
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v0, :cond_0

    .line 4375
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions()V

    .line 4376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 4378
    :cond_0
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V
    .locals 16
    .param p1, "newTask"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 2265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparent: Attempted to reparent non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    return-void

    .line 2269
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2270
    .local v2, "prevTask":Lcom/android/server/wm/Task;
    if-eq v2, v1, :cond_2

    .line 2275
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v4, v4

    move/from16 v6, p2

    .local v4, "protoLogParam1":J
    int-to-long v7, v6

    .local v7, "protoLogParam2":J
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v10, -0x12170093

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    .end local v7    # "protoLogParam2":J
    :cond_1
    move/from16 v6, p2

    .line 2277
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2278
    return-void

    .line 2271
    :cond_2
    move/from16 v6, p2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": task="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is already the parent of r="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 4020
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4021
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4023
    :cond_0
    return-void
.end method

.method reportDescendantOrientationChangeIfNeeded()V
    .locals 2

    .line 6911
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 6912
    return-void

    .line 6915
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6916
    .local v0, "freezeToken":Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0, v0, p0}, Lcom/android/server/wm/ActivityRecord;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    .line 6917
    return-void
.end method

.method reportFullyDrawnLocked(Z)V
    .locals 7
    .param p1, "restoredFromBundle"    # Z

    .line 5866
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 5867
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    move-result-object v0

    .line 5868
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    if-eqz v0, :cond_0

    .line 5869
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v4, v3

    .line 5870
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getLaunchState()I

    move-result v6

    .line 5869
    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 5872
    :cond_0
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 2

    .line 6439
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 6440
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6441
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 6439
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6443
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 7147
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 7148
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7149
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFixedRotationTransforming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7155
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 7156
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 7157
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 7165
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v1, :cond_2

    .line 7167
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 7169
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7172
    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 7175
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7176
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 7179
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->resolveFullscreenConfiguration(Landroid/content/res/Configuration;)V

    .line 7186
    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    .line 7187
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 7188
    return-void
.end method

.method restartProcessIfVisible()V
    .locals 5

    .line 7954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to restart process of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7958
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode()V

    .line 7959
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 7962
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateSizeCompatMode()V

    .line 7965
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7966
    return-void

    .line 7970
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 7976
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8001
    :cond_2
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "restartActivityProcess"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 8004
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8005
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen()V

    .line 8010
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v4, 0x0

    .line 8011
    invoke-static {v4}, Landroid/app/servertransaction/StopActivityItem;->obtain(I)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v4

    .line 8010
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8014
    goto :goto_0

    .line 8012
    :catch_0
    move-exception v0

    .line 8013
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during restart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8015
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 8016
    return-void

    .line 7980
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityRecord$ViqYcVmlHd9KpKtfJCaj-CATqDE;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$ViqYcVmlHd9KpKtfJCaj-CATqDE;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 7996
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .locals 1

    .line 4391
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_0

    .line 4392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 4394
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4395
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 4398
    :cond_0
    return-void
.end method

.method safelyDestroy(Ljava/lang/String;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3292
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3293
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 3294
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3295
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safely destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 3302
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 8084
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8085
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "launched_from_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8086
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8087
    const-string v2, "launched_from_package"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8089
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8090
    const-string v2, "launched_from_feature"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8092
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8093
    const-string v2, "resolved_type"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8095
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "component_specified"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8096
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8098
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_3

    .line 8099
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8102
    :cond_3
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8103
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8104
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8106
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_4

    .line 8107
    const-string v0, "persistable_bundle"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8108
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8109
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8111
    :cond_4
    return-void
.end method

.method scheduleAddStartingWindow()V
    .locals 5

    .line 2065
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2066
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0x547ee06d

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2069
    :cond_1
    return-void
.end method

.method schedulePauseTimeout()V
    .locals 4

    .line 5506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    .line 5507
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5508
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityTaskManager"

    const-string v1, "Waiting for pause to complete..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    :cond_0
    return-void
.end method

.method scheduleTopResumedActivityChanged(Z)Z
    .locals 5
    .param p1, "onTop"    # Z

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1240
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_0

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t report activity position update - client not running, activityRecord="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    return v2

    .line 1247
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_2

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending position change to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", onTop: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_2
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1254
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->topResumedActivityChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 1258
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 1259
    invoke-static {p1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;->obtain(Z)Landroid/app/servertransaction/TopResumedActivityChangeItem;

    move-result-object v4

    .line 1258
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    nop

    .line 1264
    const/4 v0, 0x1

    return v0

    .line 1260
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;
    .param p6, "dataGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 4080
    if-lez p1, :cond_0

    .line 4081
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4082
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v1

    .line 4081
    invoke-interface {v0, p6, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 4085
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1

    .line 4086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send activity result to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : who="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4092
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4093
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v2, Landroid/app/ResultInfo;

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4094
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 4095
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v5

    .line 4094
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4096
    return-void

    .line 4097
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_0
    move-exception v0

    .line 4098
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4103
    return-void
.end method

.method setAppLayoutChanges(ILjava/lang/String;)V
    .locals 3
    .param p1, "changes"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 3719
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3720
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3721
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3722
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_0

    .line 3723
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 3726
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_0
    return-void
.end method

.method setAppTimeTracker(Lcom/android/server/am/AppTimeTracker;)V
    .locals 0
    .param p1, "att"    # Lcom/android/server/am/AppTimeTracker;

    .line 1114
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1115
    return-void
.end method

.method setClientVisible(Z)V
    .locals 10
    .param p1, "clientVisible"    # Z

    .line 6056
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisible:Z

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6059
    :cond_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move v1, p1

    .local v1, "protoLogParam1":Z
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam2":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x779f9191

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6062
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Z
    .end local v2    # "protoLogParam2":Ljava/lang/String;
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisible:Z

    .line 6063
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->sendAppVisibilityToClients()V

    .line 6064
    return-void

    .line 6057
    :cond_2
    :goto_0
    return-void
.end method

.method setCurrentLaunchCanTurnScreenOn(Z)V
    .locals 0
    .param p1, "currentLaunchCanTurnScreenOn"    # Z

    .line 4816
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 4817
    return-void
.end method

.method setDeferHidingClient(Z)V
    .locals 1
    .param p1, "deferHidingClient"    # Z

    .line 4405
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-ne v0, p1, :cond_0

    .line 4406
    return-void

    .line 4408
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    .line 4409
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_1

    .line 4412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 4414
    :cond_1
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 4795
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDisablePreviewScreenshots:Z

    .line 4796
    return-void
.end method

.method setInheritShowWhenLocked(Z)V
    .locals 3
    .param p1, "inheritShowWhenLocked"    # Z

    .line 3904
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    .line 3905
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3907
    return-void
.end method

.method setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 6961
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6962
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 6961
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 6963
    return-void
.end method

.method setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 6953
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 6954
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 4006
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4007
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4009
    :cond_0
    return-void
.end method

.method setMainWindowOpaque(Z)V
    .locals 2
    .param p1, "isOpaque"    # Z

    .line 2439
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2440
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 2441
    return-void

    .line 2443
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr p1, v1

    .line 2444
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 2445
    return-void
.end method

.method setOccludesParent(Z)Z
    .locals 4
    .param p1, "occludesParent"    # Z

    .line 2421
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2422
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 2423
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setMainWindowOpaque(Z)V

    .line 2424
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2426
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 2427
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityStack;->convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2432
    :cond_1
    if-nez v0, :cond_2

    if-nez p1, :cond_3

    .line 2433
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2435
    :cond_3
    return v0
.end method

.method setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1
    .param p1, "p"    # Landroid/app/PictureInPictureParams;

    .line 8608
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, p1}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 8609
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onPictureInPictureParamsChanged()V

    .line 8610
    return-void
.end method

.method setProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 1896
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1897
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1898
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-ne v0, p0, :cond_1

    .line 1899
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setRootProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 1901
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 1902
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 4013
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4014
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4016
    :cond_0
    return-void
.end method

.method setRequestedOrientation(I)V
    .locals 2
    .param p1, "requestedOrientation"    # I

    .line 6879
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setOrientation(IZ)V

    .line 6880
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    .line 6882
    return-void
.end method

.method setSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 1119
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    .line 1120
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    .line 1121
    return-void
.end method

.method setShowWhenLocked(Z)V
    .locals 3
    .param p1, "showWhenLocked"    # Z

    .line 3898
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 3899
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3901
    return-void
.end method

.method setSizeConfigurations([I[I[I)V
    .locals 0
    .param p1, "horizontalSizeConfiguration"    # [I
    .param p2, "verticalSizeConfigurations"    # [I
    .param p3, "smallestSizeConfigurations"    # [I

    .line 1196
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mHorizontalSizeConfigurations:[I

    .line 1197
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mVerticalSizeConfigurations:[I

    .line 1198
    iput-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mSmallestSizeConfigurations:[I

    .line 1199
    return-void
.end method

.method setSleeping(Z)V
    .locals 0
    .param p1, "sleeping"    # Z

    .line 6217
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mSetToSleep:Z

    .line 6218
    return-void
.end method

.method setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4834
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State movement: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_2

    .line 4839
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State unchanged from:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    :cond_1
    return-void

    .line 4843
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 4847
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_3

    .line 4848
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/wm/Task;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4854
    :cond_3
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4855
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_4

    .line 4856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4858
    return-void

    .line 4860
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachChildren()V

    .line 4863
    :cond_5
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_6

    .line 4864
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 4865
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_0

    .line 4866
    :cond_6
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_7

    .line 4867
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 4868
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_0

    .line 4869
    :cond_7
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_8

    .line 4870
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v1, 0x17

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_0

    .line 4871
    :cond_8
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_9

    .line 4872
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v1, 0x18

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 4874
    :cond_9
    :goto_0
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 6283
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6284
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 6285
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v3, v0}, Lcom/android/server/wm/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v0

    .line 6286
    .local v0, "iconFilename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6288
    .local v2, "iconFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 6289
    .local v3, "iconFilePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 6290
    invoke-virtual {p1, v3}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 6292
    .end local v0    # "iconFilename":Ljava/lang/String;
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "iconFile":Ljava/io/File;
    .end local v3    # "iconFilePath":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 6293
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 6294
    return-void
.end method

.method setTaskForReuse(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1331
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1332
    return-void
.end method

.method setTaskOverlay(Z)V
    .locals 0
    .param p1, "taskOverlay"    # Z

    .line 8305
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 8306
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setAlwaysOnTop(Z)V

    .line 8307
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/wm/Task;

    .line 2377
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 2380
    :cond_0
    return-void
.end method

.method setTurnScreenOn(Z)V
    .locals 0
    .param p1, "turnScreenOn"    # Z

    .line 8233
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 8234
    return-void
.end method

.method setVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 4442
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    return-void

    .line 4449
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 4450
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "setVisible"

    invoke-static {v0, v1}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 4454
    :cond_1
    if-eqz p1, :cond_2

    .line 4455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    .line 4457
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(ZZ)V

    .line 4458
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    .line 4460
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 4461
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 4462
    return-void
.end method

.method setVisibility(ZZ)V
    .locals 18
    .param p1, "visible"    # Z
    .param p2, "deferHidingClient"    # Z

    .line 4466
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4475
    .local v3, "appTransition":Lcom/android/server/wm/AppTransition;
    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v5, :cond_1

    .line 4477
    if-nez v2, :cond_0

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    if-eqz v5, :cond_0

    .line 4480
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    .line 4481
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    .line 4483
    :cond_0
    return-void

    .line 4486
    :cond_1
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    move/from16 v8, p1

    .local v8, "protoLogParam1":Z
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v10

    .local v10, "protoLogParam3":Z
    iget-boolean v11, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .local v11, "protoLogParam4":Z
    const/4 v12, 0x6

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam5":Ljava/lang/String;
    sget-object v14, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v15, -0x165680dc

    const/16 v6, 0x3cc

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v12, v7

    const/16 v16, 0x2

    aput-object v9, v12, v16

    const/16 v16, 0x3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v12, v16

    const/16 v16, 0x4

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v12, v16

    const/16 v16, 0x5

    aput-object v13, v12, v16

    const/4 v7, 0x0

    invoke-static {v14, v15, v6, v7, v12}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4491
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Z
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    .end local v10    # "protoLogParam3":Z
    .end local v11    # "protoLogParam4":Z
    .end local v13    # "protoLogParam5":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->onChildVisibilityRequested(Z)V

    .line 4493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 4494
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4495
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4496
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    .line 4497
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .line 4498
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    .line 4500
    if-nez v1, :cond_3

    .line 4504
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->removeDeadWindows()V

    .line 4508
    sget-boolean v6, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v6, :cond_a

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_a

    .line 4509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_2

    .line 4514
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v6

    if-nez v6, :cond_4

    .line 4515
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4519
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4521
    :cond_4
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 4524
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    .line 4525
    :cond_6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 4528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-nez v6, :cond_7

    .line 4529
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    .line 4532
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v7

    if-nez v7, :cond_8

    .line 4535
    sget-object v7, Lcom/android/server/wm/-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_1

    .line 4528
    :cond_7
    const/4 v6, 0x1

    .line 4552
    :cond_8
    :goto_1
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    .line 4554
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    .line 4556
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v7, :cond_9

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v9, 0x48f79369

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v4

    const/4 v6, 0x0

    invoke-static {v8, v9, v4, v6, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4557
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    :cond_9
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 4559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 4567
    :cond_a
    :goto_2
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->okToAnimate(Z)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 4568
    if-eqz v1, :cond_d

    .line 4575
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mIsMakeFocusedStackVisible:Z

    if-eqz v6, :cond_b

    .line 4576
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mIsMakeFocusedStackVisible:Z

    .line 4577
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_c

    .line 4578
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip add opening apps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4581
    :cond_b
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4584
    :cond_c
    :goto_3
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    goto :goto_4

    .line 4586
    :cond_d
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4587
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 4589
    :goto_4
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_f

    .line 4591
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 4592
    .local v6, "win":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_f

    .line 4593
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4594
    .local v7, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_f

    .line 4595
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v8, :cond_e

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v10, -0x6e18503b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v4

    const/4 v12, 0x0

    invoke-static {v9, v10, v4, v12, v11}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4600
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    :cond_e
    iget-object v4, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4604
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    return-void

    .line 4607
    :cond_10
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 4608
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 4609
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 4424
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eq p1, v0, :cond_0

    .line 4425
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 4426
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAnimation()V

    .line 4428
    :cond_0
    return-void
.end method

.method setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 1
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 6297
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 6298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 6299
    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .locals 0
    .param p1, "willCloseOrEnterPip"    # Z

    .line 2635
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    .line 2636
    return-void
.end method

.method setWillReplaceChildWindows()V
    .locals 7

    .line 6420
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x57bc1dd0

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6422
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6423
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6424
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 6422
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6426
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method setWillReplaceWindows(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .line 6410
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x6ffcd294

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6413
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6414
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6415
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 6413
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6417
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method shouldAnimate()Z
    .locals 1

    .line 6522
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldAnimate()Z

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

.method shouldApplyAnimation(ZI)Z
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "transit"    # I

    .line 4782
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_4

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho;

    .line 4783
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    if-eqz p1, :cond_3

    .line 4784
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    new-array v0, v2, [I

    const/16 v3, 0x3c

    aput v3, v0, v1

    .line 4785
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4786
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x15

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    .line 4782
    :goto_1
    return v1
.end method

.method shouldBeVisible()Z
    .locals 3

    .line 5134
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5135
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5136
    return v1

    .line 5139
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/ActivityStack;->checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    move-result v2

    .line 5141
    .local v2, "behindFullscreenActivity":Z
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(ZZ)Z

    move-result v1

    return v1
.end method

.method shouldBeVisible(ZZ)Z
    .locals 6
    .param p1, "behindFullscreenActivity"    # Z
    .param p2, "ignoringKeyguard"    # Z

    .line 5082
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_1

    .line 5083
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 5085
    if-eqz p2, :cond_2

    .line 5086
    return v2

    .line 5089
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 5090
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_3

    .line 5091
    return v1

    .line 5099
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isForceHidden()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5100
    return v1

    .line 5105
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 5106
    invoke-virtual {v3, v1, v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eq p0, v3, :cond_5

    .line 5107
    return v1

    .line 5112
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5113
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mSetToSleep:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5114
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    :goto_1
    move v3, v0

    .line 5115
    .local v3, "canTurnScreenOn":Z
    :goto_2
    if-nez v3, :cond_8

    .line 5116
    return v1

    .line 5124
    .end local v3    # "canTurnScreenOn":Z
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne p0, v3, :cond_9

    move v3, v0

    goto :goto_3

    :cond_9
    move v3, v1

    .line 5125
    .local v3, "isTop":Z
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5126
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v0

    goto :goto_4

    :cond_a
    move v4, v1

    .line 5127
    .local v4, "isTopNotPinnedStack":Z
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    invoke-virtual {v2, p0, v5, v0}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0

    .line 5130
    .local v0, "visibleIgnoringDisplayStatus":Z
    return v0
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 6550
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    if-eqz v0, :cond_0

    .line 6551
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyAboutToFinish(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6550
    :goto_0
    return v0
.end method

.method shouldFreezeBounds()Z
    .locals 1

    .line 3416
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3424
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v0

    return v0

    .line 3417
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6
    .param p1, "activeActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 5345
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 5346
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5350
    :cond_0
    if-ne p0, p1, :cond_1

    .line 5351
    return v1

    .line 5354
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5356
    return v1

    .line 5359
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_3

    .line 5362
    return v1

    .line 5366
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5369
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 5367
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity not found in its task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5347
    :cond_6
    :goto_0
    return v1
.end method

.method shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "activeActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 5293
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activeActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 5307
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldUpdateConfigForDisplayChanged()Z
    .locals 2

    .line 7598
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldUseAppThemeSnapshot()Z
    .locals 2

    .line 4807
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisablePreviewScreenshots:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method shouldUseSizeCompatMode()Z
    .locals 4

    .line 7042
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7043
    return v1

    .line 7045
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7046
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7047
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7050
    return v1

    .line 7062
    .end local v0    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 7063
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->hasFixedAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7065
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7066
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    nop

    .line 7063
    :goto_1
    return v1

    .line 7069
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->hasFixedAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7071
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_8

    move v1, v2

    goto :goto_2

    :cond_8
    nop

    .line 7069
    :goto_2
    return v1
.end method

.method showAllWindowsLocked()V
    .locals 2

    .line 5996
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6000
    return-void
.end method

.method showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 18
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "taskSwitch"    # Z

    .line 6307
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-boolean v0, v15, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_0

    .line 6309
    return-void

    .line 6311
    :cond_0
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    .line 6312
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 6314
    return-void

    .line 6319
    :cond_1
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6320
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStack;->mWindowModeHide:Z

    if-eqz v0, :cond_2

    .line 6321
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mWindowModeHide:Z

    .line 6322
    return-void

    .line 6326
    :cond_2
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6327
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v16

    .line 6328
    .local v16, "compatInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/wm/ActivityRecord;->theme:I

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v5, v15, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    iget v6, v15, Lcom/android/server/wm/ActivityRecord;->icon:I

    iget v7, v15, Lcom/android/server/wm/ActivityRecord;->logo:I

    iget v8, v15, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    .line 6330
    if-eqz v14, :cond_3

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v12

    .line 6331
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->allowTaskSnapshot()Z

    move-result v13

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 6332
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v0

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v10

    const/4 v11, 0x1

    if-lt v0, v10, :cond_4

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v0

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v10

    if-gt v0, v10, :cond_4

    move/from16 v17, v11

    goto :goto_1

    :cond_4
    move/from16 v17, v1

    .line 6328
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object/from16 v3, v16

    move/from16 v10, p2

    move v15, v11

    move/from16 v11, p3

    move/from16 v14, v17

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/ActivityRecord;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZ)Z

    move-result v0

    .line 6333
    .local v0, "shown":Z
    if-eqz v0, :cond_5

    .line 6334
    move-object/from16 v1, p0

    move v2, v15

    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    goto :goto_2

    .line 6333
    :cond_5
    move-object/from16 v1, p0

    .line 6336
    :goto_2
    return-void
.end method

.method showToCurrentUser()Z
    .locals 2

    .line 8315
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

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

    :goto_1
    return v0
.end method

.method startFreezingScreen()V
    .locals 1

    .line 5770
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen(I)V

    .line 5771
    return-void
.end method

.method startFreezingScreen(I)V
    .locals 14
    .param p1, "overrideOriginalDisplayRotation"    # I

    .line 5774
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    .local v3, "protoLogParam1":Z
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .local v4, "protoLogParam2":Z
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .local v5, "protoLogParam3":Z
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam4":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x681db859

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v2

    const/4 v12, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    aput-object v6, v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5778
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Z
    .end local v4    # "protoLogParam2":Z
    .end local v5    # "protoLogParam3":Z
    .end local v6    # "protoLogParam4":Ljava/lang/String;
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_1

    .line 5779
    return-void

    .line 5785
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5786
    .local v0, "forceRotation":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-nez v3, :cond_4

    .line 5787
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .line 5788
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 5789
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 5790
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v2, :cond_4

    .line 5791
    if-eqz v0, :cond_3

    .line 5793
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    .line 5795
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1, v1, v3, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;I)V

    .line 5797
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5798
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5801
    :cond_4
    if-eqz v0, :cond_5

    .line 5806
    return-void

    .line 5808
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 5809
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 5810
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5811
    .local v3, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 5809
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5813
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method startFreezingScreenLocked(I)V
    .locals 1
    .param p1, "configChanges"    # I

    .line 5747
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 5748
    return-void
.end method

.method startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "configChanges"    # I

    .line 5751
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5752
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5755
    return-void

    .line 5759
    :cond_0
    const v0, -0x20000001

    and-int/2addr v0, p2

    .line 5760
    .local v0, "freezableConfigChanges":I
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5761
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x6d73cf97

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5762
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    return-void

    .line 5765
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen()V

    .line 5767
    .end local v0    # "freezableConfigChanges":I
    :cond_3
    return-void
.end method

.method startLaunchTickingLocked()V
    .locals 4

    .line 5697
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 5698
    return-void

    .line 5700
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 5701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 5702
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTicking()Z

    .line 5704
    :cond_1
    return-void
.end method

.method startRelaunching()V
    .locals 1

    .line 3428
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3429
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->freezeBounds()V

    .line 3436
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachChildren()V

    .line 3438
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    .line 3439
    return-void
.end method

.method stopFreezingScreen(ZZ)V
    .locals 10
    .param p1, "unfreezeSurfaceNow"    # Z
    .param p2, "force"    # Z

    .line 5839
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-nez v0, :cond_0

    .line 5840
    return-void

    .line 5842
    :cond_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move v4, p2

    .local v4, "protoLogParam1":Z
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x2021abc1

    const/16 v7, 0xc

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5844
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 5845
    .local v0, "count":I
    const/4 v4, 0x0

    .line 5846
    .local v4, "unfrozeWindows":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 5847
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 5848
    .local v6, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v7

    or-int/2addr v4, v7

    .line 5846
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5850
    .end local v5    # "i":I
    :cond_2
    if-nez p2, :cond_3

    if-eqz v4, :cond_5

    .line 5851
    :cond_3
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0xef9eb58

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v3

    invoke-static {v6, v7, v3, v1, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5852
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    .line 5853
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 5854
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 5855
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 5857
    :cond_5
    if-eqz p1, :cond_7

    .line 5858
    if-eqz v4, :cond_6

    .line 5859
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5861
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 5863
    :cond_7
    return-void
.end method

.method stopFreezingScreenLocked(Z)V
    .locals 11
    .param p1, "force"    # Z

    .line 5826
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_3

    .line 5827
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 5828
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5829
    return-void

    .line 5831
    :cond_1
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    .local v3, "protoLogParam1":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFreezingScreen()Z

    move-result v4

    .local v4, "protoLogParam2":Z
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x1bce5216

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v2

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5834
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Z
    .end local v4    # "protoLogParam2":Z
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    .line 5836
    :cond_3
    return-void
.end method

.method stopIfPossible()V
    .locals 9

    .line 5532
    const-string v0, "stopIfPossible"

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 5534
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 5538
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v4, 0x0

    .line 5539
    .local v4, "finishQuickPay":Z
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->isQuickPayNoHistory:Z

    if-eqz v5, :cond_2

    .line 5540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: Stopping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Resumming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5541
    iget-object v5, v3, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->isQuickPayNoHistory:Z

    if-nez v5, :cond_1

    iget-object v5, v3, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5542
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v5, v6, :cond_2

    .line 5543
    :cond_1
    const/4 v4, 0x1

    .line 5554
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_7

    .line 5556
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_7

    .line 5563
    sget-boolean v5, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppLocker: Not finishing noHistory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on stop because it\'s locked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5566
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v5

    if-nez v5, :cond_6

    .line 5568
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no-history finish of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5569
    :cond_5
    const-string v5, "stop-no-history"

    invoke-virtual {p0, v5, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    move-result v5

    if-eqz v5, :cond_7

    .line 5571
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 5572
    return-void

    .line 5575
    :cond_6
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_7

    .line 5576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not finishing noHistory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on stop because we\'re just sleeping"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5583
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-nez v5, :cond_8

    .line 5584
    return-void

    .line 5586
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 5588
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 5589
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_9

    .line 5590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to STOPPING: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (stop requested)"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5592
    :cond_9
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 5593
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5594
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStack;->onARStopTriggered(Lcom/android/server/wm/ActivityRecord;)V

    .line 5595
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_a

    .line 5596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5598
    :cond_a
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5599
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 5598
    invoke-static {v1, v6, v7}, Lcom/android/server/wm/EventLogTags;->writeWmStopActivity(IILjava/lang/String;)V

    .line 5600
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 5601
    invoke-static {v8}, Landroid/app/servertransaction/StopActivityItem;->obtain(I)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v8

    .line 5600
    invoke-virtual {v1, v6, v7, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 5603
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5604
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 5606
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x2af8

    invoke-virtual {v1, v6, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5619
    goto :goto_1

    .line 5607
    :catch_0
    move-exception v1

    .line 5610
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Exception thrown during pause"

    invoke-static {v2, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5612
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 5613
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stop failed; moving to STOPPED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    :cond_c
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 5615
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5616
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v0, :cond_d

    .line 5617
    const-string v0, "stop-except"

    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 5620
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_1
    return-void
.end method

.method supportsFreeform()Z
    .locals 1

    .line 2532
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method supportsPictureInPicture()Z
    .locals 1

    .line 2511
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2512
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2511
    :goto_0
    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 1

    .line 2523
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_0

    .line 2524
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2523
    :goto_0
    return v0
.end method

.method takeFromHistory()V
    .locals 1

    .line 2448
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1

    .line 2449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 2450
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 2451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2453
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 2455
    :cond_1
    return-void
.end method

.method takeOptionsLocked(Z)Landroid/app/ActivityOptions;
    .locals 2
    .param p1, "fromClient"    # Z

    .line 4354
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Taking options for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 4355
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4354
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 4363
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4364
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 4366
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 8320
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8322
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    const-string v1, " f}"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v1, :cond_2

    const-string v2, " isExiting"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8321
    return-object v0

    .line 8324
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8325
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8326
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8327
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8328
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8329
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8330
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    .line 8332
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method transferStartingWindow(Landroid/os/IBinder;)Z
    .locals 13
    .param p1, "transferFrom"    # Landroid/os/IBinder;

    .line 3738
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3739
    .local v0, "fromActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3740
    return v1

    .line 3743
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3744
    .local v2, "tStartingWindow":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_8

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v6, :cond_8

    .line 3747
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iput-boolean v5, v6, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 3749
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v7, 0x3

    if-eqz v6, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v11, -0x7386a871

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v6, v12, v1

    aput-object v8, v12, v5

    aput-object v9, v12, v3

    invoke-static {v10, v11, v1, v4, v12}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3752
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3756
    .local v8, "origId":J
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3757
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, p0, v1}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 3762
    :cond_2
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 3763
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v6, p0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 3764
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    iput-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .line 3765
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .line 3766
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3767
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    iput-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    .line 3768
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 3769
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 3770
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3771
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 3772
    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 3773
    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3775
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v6, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam1":Ljava/lang/String;
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v12, -0x595afbe3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    aput-object v10, v3, v5

    invoke-static {v11, v12, v1, v4, v3}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3777
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->removeChild(Lcom/android/server/wm/WindowState;)V

    .line 3778
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 3783
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v3, :cond_4

    .line 3784
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 3786
    :cond_4
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v3, :cond_5

    .line 3787
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 3789
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3790
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 3791
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .line 3792
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 3794
    :cond_6
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mClientVisible:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    .line 3796
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3797
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 3802
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    .line 3805
    :cond_7
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 3806
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 3808
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v7, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3810
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3811
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3813
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3814
    nop

    .line 3815
    return v5

    .line 3813
    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3814
    throw v1

    .line 3816
    .end local v8    # "origId":J
    :cond_8
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v6, :cond_a

    .line 3819
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v6, :cond_9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x1a6a4be1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    aput-object v7, v3, v5

    invoke-static {v8, v9, v1, v4, v3}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3821
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 3822
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 3823
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 3824
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    .line 3825
    return v5

    .line 3830
    :cond_a
    return v1
.end method

.method transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .locals 2

    .line 3840
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$prAsqx_JQJTqW1jNxmkuU3AV8AU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$prAsqx_JQJTqW1jNxmkuU3AV8AU;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3841
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3840
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 3842
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledFunction;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 3843
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 3844
    return-void
.end method

.method unregisterRemoteAnimations()V
    .locals 1

    .line 6848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 6849
    return-void
.end method

.method updateAllDrawn()V
    .locals 4

    .line 4308
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v0, :cond_3

    .line 4311
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 4316
    .local v0, "numInteresting":I
    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_3

    .line 4317
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4318
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allDrawn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " interesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " drawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    :cond_0
    sget-boolean v1, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 4324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " WMS: updateAllDrawn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_LAUNCH"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4327
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 4330
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2

    .line 4331
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4333
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4336
    .end local v0    # "numInteresting":I
    :cond_3
    return-void
.end method

.method updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1148
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1151
    return-void
.end method

.method updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .locals 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 6073
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 6075
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const-string v2, " freezingScreen="

    const-string v3, "ActivityTaskManager"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_0

    .line 6076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWindows: starting "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isOnScreen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " allDrawn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6080
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-nez v1, :cond_1

    .line 6081
    return v4

    .line 6084
    :cond_1
    iget-wide v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    .line 6085
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 6086
    iput v4, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 6087
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .line 6090
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 6093
    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 6095
    .local v1, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v5, 0x0

    .line 6097
    .local v5, "isInterestingAndDrawn":Z
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v6, :cond_a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 6098
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    invoke-virtual {v6}, Lcom/android/server/wm/ProtoLogGroup;->isLogToLogcat()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6099
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": isDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isAnimationSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6100
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6099
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6101
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-nez v6, :cond_5

    .line 6102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not displayed: s="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " pv="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6103
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mDrawState="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6104
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ph="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6105
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " th="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " a="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6106
    invoke-virtual {p0, v7}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6102
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6110
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v6, :cond_9

    .line 6111
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 6113
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eq v4, p1, :cond_6

    .line 6114
    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 6116
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6117
    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 6119
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    invoke-virtual {v0}, Lcom/android/server/wm/ProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6120
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tokenMayBeDrawn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " w="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " numInteresting="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppFreezing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    :cond_8
    const/4 v5, 0x1

    goto :goto_1

    .line 6129
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6131
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 6132
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .line 6136
    :cond_a
    :goto_1
    return v5
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1485
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1486
    return-void

    .line 1488
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 1491
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1492
    .local v1, "rootTask":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1493
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v2, :cond_2

    .line 1494
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox;->hide()V

    .line 1496
    :cond_2
    return-void

    .line 1499
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1500
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 1502
    :cond_4
    return-void
.end method

.method updateMultiWindowMode()V
    .locals 4

    .line 1268
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    .line 1274
    .local v0, "inMultiWindowMode":Z
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_2

    .line 1275
    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-eqz v2, :cond_1

    .line 1276
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 1278
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1279
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->computeConfigurationAfterMultiWindowModeChange()V

    .line 1283
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    .line 1284
    .local v2, "state":Lcom/android/server/wm/ActivityStack$ActivityState;
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_2

    .line 1285
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 1290
    .end local v2    # "state":Lcom/android/server/wm/ActivityStack$ActivityState;
    :cond_2
    :goto_0
    return-void

    .line 1269
    .end local v0    # "inMultiWindowMode":Z
    :cond_3
    :goto_1
    return-void
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 4157
    if-eqz p1, :cond_2

    .line 4158
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update options for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4159
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    .line 4160
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 4162
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 4164
    :cond_2
    return-void
.end method

.method updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .locals 4
    .param p1, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p2, "forceUpdate"    # Z

    .line 1293
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1297
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1298
    .local v0, "inPictureInPictureMode":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_4

    .line 1303
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1304
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1305
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1306
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->computeConfigurationAfterMultiWindowModeChange()V

    .line 1308
    :cond_3
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 1311
    :cond_4
    return-void

    .line 1294
    .end local v0    # "inPictureInPictureMode":Z
    :cond_5
    :goto_1
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .locals 11

    .line 6003
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-nez v0, :cond_0

    .line 6004
    return-void

    .line 6007
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update reported visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6008
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 6010
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    .line 6012
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6013
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6014
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 6012
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6017
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v2, v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 6018
    .local v2, "numInteresting":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v3, v3, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 6019
    .local v3, "numVisible":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v4, v4, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 6020
    .local v4, "numDrawn":I
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 6022
    .local v5, "nowGone":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v2, :cond_3

    if-lt v4, v2, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v6

    .line 6023
    .local v8, "nowDrawn":Z
    :goto_1
    if-lez v2, :cond_4

    if-lt v3, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_4

    move v6, v7

    .line 6024
    .local v6, "nowVisible":Z
    :cond_4
    if-nez v5, :cond_6

    .line 6026
    if-nez v8, :cond_5

    .line 6027
    iget-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->reportedDrawn:Z

    .line 6029
    :cond_5
    if-nez v6, :cond_6

    .line 6030
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    .line 6033
    :cond_6
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VIS "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": interesting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " visible="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6035
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->reportedDrawn:Z

    if-eq v8, v7, :cond_8

    .line 6036
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/wm/ActivityRecord;->onWindowsDrawn(ZJ)V

    .line 6037
    iput-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->reportedDrawn:Z

    .line 6039
    :cond_8
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    if-eq v6, v7, :cond_b

    .line 6040
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Visibility changed in "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": vis="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    :cond_9
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    .line 6043
    if-eqz v6, :cond_a

    .line 6044
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsVisible()V

    goto :goto_2

    .line 6046
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsGone()V

    .line 6049
    :cond_b
    :goto_2
    return-void
.end method

.method windowsAreFocusable()Z
    .locals 1

    .line 2665
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result v0

    return v0
.end method

.method windowsAreFocusable(Z)Z
    .locals 4
    .param p1, "fromUserTouch"    # Z

    .line 2672
    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 2673
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v1

    .line 2674
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 2675
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 2676
    .local v2, "topFocusedAppOfMyProcess":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    .line 2679
    return v0

    .line 2683
    .end local v1    # "pid":I
    .end local v2    # "topFocusedAppOfMyProcess":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canReceiveKeys()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 8406
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 8407
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8408
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8409
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8410
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8411
    return-void
.end method

.method writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 8399
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz v0, :cond_0

    .line 8400
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Token;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8402
    :cond_0
    return-void
.end method
