.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$AppFreezeListener;
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;
    }
.end annotation


# static fields
.field private static final STARTING_WINDOW_TYPE_NONE:I = 0x0

.field private static final STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x1

.field private static final STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field static final Z_BOOST_BASE:I = 0x2fb7ba90
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field allDrawn:Z

.field final appToken:Landroid/view/IApplicationToken;

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field final mActivityComponent:Landroid/content/ComponentName;

.field mActivityName:Ljava/lang/String;

.field mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private final mAddStartingWindow:Ljava/lang/Runnable;

.field private mAlwaysFocusable:Z

.field private mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

.field mAnimationBoundsLayer:Landroid/view/SurfaceControl;

.field mAppCompat:I

.field mAppStopped:Z

.field private mCanTurnScreenOn:Z

.field private mClientHidden:Z

.field private final mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

.field mDeferHidingClient:Z

.field private mDisablePreviewScreenshots:Z

.field mEnteringAnimation:Z

.field private mFillsParent:Z

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

.field private mHiddenSetFromTransferredStartingWindow:Z

.field final mInputApplicationHandle:Landroid/view/InputApplicationHandle;

.field mInputDispatchingTimeoutNanos:J

.field mIsExiting:Z

.field mIsQuickReplyApp:Z

.field mIsReallyAnimationDone:Z

.field private mLastAllDrawn:Z

.field private mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

.field private mLastContainsDismissKeyguardWindow:Z

.field private mLastContainsShowWhenLockedWindow:Z

.field private mLastParent:Lcom/android/server/wm/Task;

.field private mLastSurfaceShowing:Z

.field private mLastTransactionSequence:J

.field mLaunchTaskBehind:Z

.field private mLetterbox:Lcom/android/server/wm/Letterbox;

.field mNeedsAnimationBoundsLayer:Z

.field mNeedsZBoost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNumDrawnWindows:I

.field private mNumInterestingWindows:I

.field mPackageName:Ljava/lang/String;

.field private mPendingRelaunchCount:I

.field mRawRefreshRate:I

.field mRefreshRate:I

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private mRemovingFromDisplay:Z

.field private mReparenting:Z

.field private final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field mRotationAnimationHint:I

.field mShowForAllUsers:Z

.field private mSizeCompatBounds:Landroid/graphics/Rect;

.field private mSizeCompatScale:F

.field mStartingData:Lcom/android/server/wm/StartingData;

.field mTargetSdk:I

.field private mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpPrevBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field mTmpRefreshRate:I

.field private mTransit:I

.field private mTransitChangeLeash:Landroid/view/SurfaceControl;

.field private mTransitFlags:I

.field private final mTransitStartRect:Landroid/graphics/Rect;

.field private mUseTransferredAnimation:Z

.field final mVoiceInteraction:Z

.field private mWillCloseOrEnterPip:Z

.field removed:Z

.field private reportedDrawn:Z

.field reportedVisible:Z

.field startingDisplayed:Z

.field startingMoved:Z

.field startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field startingWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;JZZIIIZZLcom/android/server/wm/ActivityRecord;)V
    .locals 15
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "activityComponent"    # Landroid/content/ComponentName;
    .param p4, "voiceInteraction"    # Z
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "inputDispatchingTimeoutNanos"    # J
    .param p8, "fullscreen"    # Z
    .param p9, "showForAllUsers"    # Z
    .param p10, "targetSdk"    # I
    .param p11, "orientation"    # I
    .param p12, "rotationAnimationHint"    # I
    .param p13, "launchTaskBehind"    # Z
    .param p14, "alwaysFocusable"    # Z
    .param p15, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 385
    move-object v7, p0

    move-object/from16 v8, p15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;Z)V

    .line 387
    iput-object v8, v7, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 388
    iget-object v0, v7, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 389
    move-wide/from16 v0, p6

    iput-wide v0, v7, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    .line 390
    move/from16 v2, p9

    iput-boolean v2, v7, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    .line 391
    move/from16 v3, p10

    iput v3, v7, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    .line 392
    move/from16 v4, p11

    iput v4, v7, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    .line 393
    move/from16 v5, p13

    iput-boolean v5, v7, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    .line 394
    move/from16 v6, p14

    iput-boolean v6, v7, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    .line 395
    move/from16 v9, p12

    iput v9, v7, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    .line 398
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 399
    iput-boolean v10, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 402
    iput-boolean v10, v7, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    .line 407
    iget-object v10, v7, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v10, v7, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    .line 408
    iget-object v10, v7, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    .line 409
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    .line 413
    :cond_0
    const-class v10, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 415
    .local v10, "cds":Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    iget-object v11, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v12, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    new-instance v13, Ljava/lang/ref/WeakReference;

    iget-object v14, v7, Lcom/android/server/wm/AppWindowToken;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    .line 417
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;Z)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "activityComponent"    # Landroid/content/ComponentName;
    .param p4, "voiceInteraction"    # Z
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "fillsParent"    # Z

    .line 422
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 190
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    .line 235
    new-instance v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v2}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 261
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 262
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    .line 268
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 285
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    .line 307
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    .line 313
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 322
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    .line 323
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 349
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mRefreshRate:I

    .line 350
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRefreshRate:I

    .line 351
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mRawRefreshRate:I

    .line 364
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mIsReallyAnimationDone:Z

    .line 367
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cwsF3cyeJjO4UiuaM07w8TBc698;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cwsF3cyeJjO4UiuaM07w8TBc698;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 2277
    new-instance v0, Lcom/android/server/wm/AppWindowToken$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowToken$1;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    .line 424
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 425
    iput-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    .line 426
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    .line 427
    iput-boolean p6, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    .line 428
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 429
    return-void
.end method

.method private allDrawnStatesConsidered()Z
    .locals 4

    .line 1943
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1944
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1945
    .local v2, "child":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1946
    const/4 v1, 0x0

    return v1

    .line 1943
    .end local v2    # "child":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1949
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method private calculateCompatBoundsTransformation(Landroid/content/res/Configuration;)V
    .locals 13
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1854
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1855
    .local v0, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1856
    .local v1, "parentBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1857
    .local v2, "viewportBounds":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1858
    .local v3, "appBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1859
    .local v4, "contentBounds":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1860
    .local v5, "contentW":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1861
    .local v6, "contentH":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 1862
    .local v7, "viewportW":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    .line 1864
    .local v8, "viewportH":F
    cmpg-float v9, v5, v7

    const/high16 v10, 0x3f800000    # 1.0f

    if-gtz v9, :cond_2

    cmpg-float v9, v6, v8

    if-gtz v9, :cond_2

    .line 1865
    move v9, v10

    goto :goto_2

    :cond_2
    div-float v9, v7, v5

    div-float v11, v8, v6

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :goto_2
    iput v9, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 1866
    iget v9, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    mul-float/2addr v9, v5

    sub-float v9, v7, v9

    add-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    .line 1869
    .local v9, "offsetX":I
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v10, :cond_3

    .line 1870
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 1872
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1873
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1874
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->scale(F)V

    .line 1876
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 1878
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 1879
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 1880
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v9

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 1881
    return-void
.end method

.method private clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "cancel"    # Z

    .line 3064
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 3065
    return-void

    .line 3067
    :cond_0
    if-eqz p2, :cond_1

    .line 3068
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3069
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 3070
    .local v0, "sc":Landroid/view/SurfaceControl;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 3072
    .local v1, "parentSc":Landroid/view/SurfaceControl;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3073
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3076
    .end local v0    # "sc":Landroid/view/SurfaceControl;
    .end local v1    # "parentSc":Landroid/view/SurfaceControl;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3077
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 3079
    if-eqz p2, :cond_2

    .line 3080
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 3082
    :cond_2
    return-void
.end method

.method private clearThumbnail()V
    .locals 1

    .line 3181
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-nez v0, :cond_0

    .line 3182
    return-void

    .line 3184
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowThumbnail;->destroy()V

    .line 3185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 3186
    return-void
.end method

.method private createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2625
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "Creating animation bounds layer"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2627
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2628
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - animation-bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2629
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2630
    .local v1, "boundsLayer":Landroid/view/SurfaceControl;
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2631
    return-object v1
.end method

.method private createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .locals 2
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2257
    if-nez p1, :cond_0

    .line 2258
    const/4 v0, 0x0

    return v0

    .line 2261
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "Creating SnapshotStartingData"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_1
    new-instance v0, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2263
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 2264
    const/4 v0, 0x1

    return v0
.end method

.method private destroySurfaces(Z)V
    .locals 7
    .param p1, "cleanupOnResume"    # Z

    .line 1033
    const/4 v0, 0x0

    .line 1036
    .local v0, "destroyedSomething":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1037
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1038
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1042
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v5, v6}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->handleDestroySurfaces(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1043
    goto :goto_1

    .line 1047
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1037
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1049
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1051
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 1052
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 1054
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_2
    return-void
.end method

.method private freezeBounds()V
    .locals 4

    .line 1444
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1445
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1447
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1449
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1451
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1454
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 1455
    return-void
.end method

.method private getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I
    .locals 3
    .param p1, "newTask"    # Z
    .param p2, "taskSwitch"    # Z
    .param p3, "processRunning"    # Z
    .param p4, "allowTaskSnapshot"    # Z
    .param p5, "activityCreated"    # Z
    .param p6, "fromRecents"    # Z
    .param p7, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2349
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 2354
    return v1

    .line 2355
    :cond_0
    const/4 v0, 0x2

    if-nez p1, :cond_7

    if-eqz p3, :cond_7

    if-eqz p2, :cond_1

    if-nez p5, :cond_1

    goto :goto_1

    .line 2357
    :cond_1
    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    .line 2358
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mLowRamTaskSnapshotsAndRecents:Z

    if-eqz v2, :cond_2

    .line 2361
    return v0

    .line 2363
    :cond_2
    if-nez p7, :cond_3

    goto :goto_0

    .line 2371
    :cond_3
    invoke-direct {p0, p7}, Lcom/android/server/wm/AppWindowToken;->snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2372
    const/4 v1, 0x1

    goto :goto_0

    .line 2373
    :cond_4
    if-eqz p6, :cond_5

    goto :goto_0

    :cond_5
    move v1, v0

    .line 2363
    :goto_0
    return v1

    .line 2376
    :cond_6
    return v1

    .line 2356
    :cond_7
    :goto_1
    return v0
.end method

.method private hasNonDefaultColorWindow()Z
    .locals 2

    .line 3430
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$q4coBLJ_h6za5tXaFxh-mXEdx0M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$q4coBLJ_h6za5tXaFxh-mXEdx0M;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 1801
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 1803
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1804
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1806
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1808
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - interim-change-leash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1809
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 1810
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 1811
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1812
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1813
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1815
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/AppWindowToken;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 1819
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1820
    .local v3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1821
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 1822
    invoke-virtual {v4, p0, v1, v3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 1824
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1825
    return-void

    .line 1828
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1829
    .local v4, "task":Lcom/android/server/wm/Task;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1830
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1831
    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v5

    .line 1833
    .local v5, "snapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v5, :cond_1

    .line 1834
    new-instance v6, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v2, p0, v7, v8}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;Z)V

    iput-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 1838
    .end local v5    # "snapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :cond_1
    return-void
.end method

.method private isReallyAnimating()Z
    .locals 1

    .line 3056
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$hasNonDefaultColorWindow$6(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 3430
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

.method static synthetic lambda$removeStartingWindow$3(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .locals 3
    .param p0, "surface"    # Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2455
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing startingView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2460
    goto :goto_0

    .line 2458
    :catch_0
    move-exception v0

    .line 2459
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception when removing starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2461
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$shouldUseAppThemeSnapshot$4(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 2576
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$showAllWindowsLocked$5(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 2982
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performing show on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 2984
    return-void
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;
    .locals 31
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z

    .line 2782
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 2783
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 2784
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    iget v9, v8, Landroid/view/DisplayInfo;->appWidth:I

    .line 2785
    .local v9, "width":I
    iget v10, v8, Landroid/view/DisplayInfo;->appHeight:I

    .line 2786
    .local v10, "height":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v11, "WindowManager"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyAnimation: atoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    .line 2791
    .local v12, "win":Lcom/android/server/wm/WindowState;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v15, v0

    .line 2792
    .local v15, "frame":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v20, v0

    .line 2794
    .local v20, "displayFrame":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v14, v0

    .line 2795
    .local v14, "insets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v0

    .line 2796
    .local v13, "stableInsets":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 2797
    .local v0, "surfaceInsets":Landroid/graphics/Rect;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    move/from16 v27, v1

    .line 2798
    .local v27, "freeform":Z
    if-eqz v12, :cond_6

    .line 2803
    if-eqz v27, :cond_3

    .line 2804
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2805
    :cond_3
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2806
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2807
    :cond_4
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2810
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2812
    :cond_5
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2814
    :goto_0
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2817
    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 2818
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowState;->getStableInsets(Landroid/graphics/Rect;)V

    move-object v5, v0

    goto :goto_1

    .line 2798
    :cond_6
    move-object v5, v0

    .line 2821
    .end local v0    # "surfaceInsets":Landroid/graphics/Rect;
    .local v5, "surfaceInsets":Landroid/graphics/Rect;
    :goto_1
    iget-boolean v0, v6, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_7

    .line 2825
    const/4 v0, 0x0

    move v4, v0

    .end local p3    # "enter":Z
    .local v0, "enter":Z
    goto :goto_2

    .line 2821
    .end local v0    # "enter":Z
    .restart local p3    # "enter":Z
    :cond_7
    move/from16 v4, p3

    .line 2827
    .end local p3    # "enter":Z
    .local v4, "enter":Z
    :goto_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading animation for app transition. transit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " surfaceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2827
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_8
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_e

    iget-boolean v0, v6, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    if-eqz v0, :cond_9

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object v5, v13

    move-object v1, v14

    move-object/from16 v30, v15

    goto/16 :goto_3

    .line 2839
    :cond_9
    iget-object v0, v6, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 2840
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2839
    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move/from16 v2, p2

    move/from16 v18, v3

    move v3, v4

    move/from16 v28, v4

    .end local v4    # "enter":Z
    .local v28, "enter":Z
    move/from16 v4, v18

    move-object/from16 v29, v5

    .end local v5    # "surfaceInsets":Landroid/graphics/Rect;
    .local v29, "surfaceInsets":Landroid/graphics/Rect;
    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->canSkipAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/AppWindowToken;IZILcom/android/server/wm/AppTransition;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2841
    return-object v16

    .line 2844
    :cond_a
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2850
    .local v0, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2853
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2850
    move-object v5, v13

    .end local v13    # "stableInsets":Landroid/graphics/Rect;
    .local v5, "stableInsets":Landroid/graphics/Rect;
    move-object v13, v1

    move-object v1, v14

    .end local v14    # "insets":Landroid/graphics/Rect;
    .local v1, "insets":Landroid/graphics/Rect;
    move-object/from16 v14, p1

    move-object/from16 v30, v15

    .end local v15    # "frame":Landroid/graphics/Rect;
    .local v30, "frame":Landroid/graphics/Rect;
    move/from16 v15, p2

    move/from16 v16, v28

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v30

    move-object/from16 v21, v1

    move-object/from16 v22, v29

    move-object/from16 v23, v5

    move/from16 v24, p4

    move/from16 v25, v27

    move/from16 v26, v4

    invoke-virtual/range {v13 .. v26}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;

    move-result-object v2

    .line 2857
    .local v2, "a":Landroid/view/animation/Animation;
    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v3

    invoke-static {v6, v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkActivityTypeHome(Lcom/android/server/wm/AppWindowToken;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v28, :cond_b

    iget-object v3, v6, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v3, :cond_b

    .line 2859
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->createAnimationForLauncherExit()Landroid/view/animation/Animation;

    move-result-object v2

    .line 2863
    :cond_b
    if-eqz v2, :cond_d

    .line 2864
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded animation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    :cond_c
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2866
    .local v3, "containingWidth":I
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2867
    .local v4, "containingHeight":I
    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2868
    iget-object v11, v6, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v11

    invoke-virtual {v2, v11}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2870
    .end local v3    # "containingWidth":I
    .end local v4    # "containingHeight":I
    :cond_d
    return-object v2

    .line 2833
    .end local v0    # "displayConfig":Landroid/content/res/Configuration;
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "a":Landroid/view/animation/Animation;
    .end local v28    # "enter":Z
    .end local v29    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v30    # "frame":Landroid/graphics/Rect;
    .local v4, "enter":Z
    .local v5, "surfaceInsets":Landroid/graphics/Rect;
    .restart local v13    # "stableInsets":Landroid/graphics/Rect;
    .restart local v14    # "insets":Landroid/graphics/Rect;
    .restart local v15    # "frame":Landroid/graphics/Rect;
    :cond_e
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object v5, v13

    move-object v1, v14

    move-object/from16 v30, v15

    .line 2834
    .end local v4    # "enter":Z
    .end local v13    # "stableInsets":Landroid/graphics/Rect;
    .end local v14    # "insets":Landroid/graphics/Rect;
    .end local v15    # "frame":Landroid/graphics/Rect;
    .restart local v1    # "insets":Landroid/graphics/Rect;
    .local v5, "stableInsets":Landroid/graphics/Rect;
    .restart local v28    # "enter":Z
    .restart local v29    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v30    # "frame":Landroid/graphics/Rect;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickReply: disable anim for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    return-object v16
.end method

.method private loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;

    .line 3165
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 3170
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3171
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    .line 3172
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    :goto_0
    nop

    .line 3173
    .local v7, "appRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v8, v2

    .line 3174
    .local v8, "insets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 3175
    .local v2, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v6, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3176
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v10, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget v11, v2, Landroid/content/res/Configuration;->uiMode:I

    iget v12, v2, Landroid/content/res/Configuration;->orientation:I

    .line 3175
    move-object v9, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3
.end method

.method private onWindowsGone()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting gone in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->onWindowsGone()V

    .line 510
    return-void
.end method

.method private onWindowsVisible()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 514
    return-void

    .line 516
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting visible in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->onWindowsVisible()V

    .line 520
    return-void
.end method

.method private reportDescendantOrientationChangeIfNeeded()V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 825
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 832
    .local v0, "freezeToken":Landroid/os/IBinder;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    .line 833
    return-void

    .line 826
    .end local v0    # "freezeToken":Landroid/os/IBinder;
    :cond_2
    :goto_1
    return-void
.end method

.method private shouldStartChangeTransition(II)Z
    .locals 4
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I

    .line 1776
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1784
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

    .line 1780
    :cond_4
    :goto_2
    return v1
.end method

.method private snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .locals 3
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2382
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2383
    return v0

    .line 2388
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2389
    return v0

    .line 2393
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private unfreezeBounds()V
    .locals 2

    .line 1461
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    return-void

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1469
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1470
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 1468
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1472
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1473
    return-void
.end method

.method private updateColorTransform()V
    .locals 4

    .line 3435
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    if-eqz v0, :cond_0

    .line 3436
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mMatrix:[F

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mTranslation:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    .line 3438
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 3440
    :cond_0
    return-void
.end method

.method private waitingForReplacement()Z
    .locals 4

    .line 1339
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1340
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1341
    .local v2, "candidate":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1342
    return v1

    .line 1339
    .end local v2    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1345
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z
    .locals 20
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
    .param p15, "fromRecents"    # Z

    .line 2140
    move-object/from16 v8, p0

    move/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 2141
    return v9

    .line 2144
    :cond_0
    iget-object v0, v8, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_1

    .line 2145
    return v9

    .line 2148
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v14

    .line 2149
    .local v14, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_2

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2151
    return v9

    .line 2154
    :cond_2
    iget-object v0, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 2156
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 2155
    invoke-virtual {v0, v1, v2, v9, v9}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v13

    .line 2164
    .local v13, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    const/4 v10, 0x0

    .line 2165
    .local v10, "type":I
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkSplashWindowFlag()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2166
    const/4 v0, 0x2

    .end local v10    # "type":I
    .local v0, "type":I
    goto :goto_0

    .line 2168
    .end local v0    # "type":I
    .restart local v10    # "type":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p15

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/AppWindowToken;->getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I

    move-result v0

    .line 2173
    .end local v10    # "type":I
    .restart local v0    # "type":I
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2174
    invoke-direct {v8, v13}, Lcom/android/server/wm/AppWindowToken;->createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v1

    return v1

    .line 2180
    :cond_4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_5

    .line 2181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking theme of starting window: 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_5
    if-eqz v15, :cond_c

    .line 2184
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    iget-object v5, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    move-object/from16 v6, p1

    invoke-virtual {v2, v6, v15, v4, v5}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2187
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-nez v2, :cond_6

    .line 2190
    return v9

    .line 2192
    :cond_6
    iget-object v4, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 2194
    .local v4, "windowIsTranslucent":Z
    iget-object v5, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 2196
    .local v5, "windowIsFloating":Z
    iget-object v7, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v10, 0xe

    invoke-virtual {v7, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 2198
    .local v7, "windowShowWallpaper":Z
    iget-object v10, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v11, 0xc

    invoke-virtual {v10, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 2200
    .local v10, "windowDisableStarting":Z
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v11, :cond_7

    .line 2201
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Translucent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " Floating="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " ShowWallpaper="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_7
    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkSplashWindowFlag()Z

    move-result v11

    if-nez v11, :cond_8

    .line 2212
    return v9

    .line 2218
    :cond_8
    if-nez v5, :cond_b

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkSplashWindowFlag()Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_1

    .line 2222
    :cond_9
    if-eqz v7, :cond_d

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 2224
    invoke-virtual {v11}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-nez v11, :cond_a

    .line 2230
    const/high16 v11, 0x100000

    or-int v11, p8, v11

    move v2, v11

    .end local p8    # "windowFlags":I
    .local v11, "windowFlags":I
    goto :goto_2

    .line 2232
    .end local v11    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :cond_a
    return v9

    .line 2220
    :cond_b
    :goto_1
    return v9

    .line 2183
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v4    # "windowIsTranslucent":Z
    .end local v5    # "windowIsFloating":Z
    .end local v7    # "windowShowWallpaper":Z
    .end local v10    # "windowDisableStarting":Z
    :cond_c
    move-object/from16 v6, p1

    .line 2237
    :cond_d
    move/from16 v2, p8

    .end local p8    # "windowFlags":I
    .local v2, "windowFlags":I
    :goto_2
    move-object/from16 v4, p9

    invoke-virtual {v8, v4}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2238
    return v1

    .line 2243
    :cond_e
    const/4 v5, 0x2

    if-eq v0, v5, :cond_f

    .line 2244
    return v9

    .line 2247
    :cond_f
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v5, :cond_10

    const-string v5, "Creating SplashScreenStartingData"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_10
    new-instance v3, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v10, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2250
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object v9, v3

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v5, v13

    .end local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v5, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object/from16 v13, p3

    move-object v7, v14

    .end local v14    # "mainWin":Lcom/android/server/wm/WindowState;
    .local v7, "mainWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v2

    invoke-direct/range {v9 .. v19}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V

    iput-object v3, v8, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 2252
    return v1
.end method

.method addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1312
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1314
    const/4 v0, 0x0

    .line 1315
    .local v0, "gotReplacementWindow":Z
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1316
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1317
    .local v2, "candidate":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1315
    .end local v2    # "candidate":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1321
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    .line 1324
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1325
    return-void
.end method

.method applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z
    .locals 19
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z

    .line 2660
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v4, 0x0

    if-nez v3, :cond_e

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->shouldAnimate(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 2672
    :cond_0
    const-wide/16 v5, 0x20

    const-string v3, "AWT#applyAnimationLocked"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2673
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2675
    const/4 v3, 0x0

    .line 2677
    .local v3, "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    nop

    .line 2678
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->getAppStackClipMode()I

    move-result v7

    .line 2681
    .local v7, "appStackClipMode":I
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/AppWindowToken;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2682
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 2683
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2685
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v2, :cond_1

    .line 2686
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    move/from16 v16, v8

    .line 2689
    .local v16, "isChanging":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v8

    if-eqz v8, :cond_3

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sIsKeyguardDone:Z

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2694
    invoke-virtual {v8}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2695
    nop

    .line 2696
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v4

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2698
    if-eqz v16, :cond_2

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 2697
    :goto_1
    invoke-virtual {v4, v0, v8, v9, v10}, Lcom/android/server/wm/RemoteAnimationController;->createRemoteAnimationRecord(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-result-object v4

    .line 2699
    .local v4, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v8, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 2700
    .local v8, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v3, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 2701
    .end local v4    # "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    move-object v2, v3

    const/4 v3, 0x1

    goto/16 :goto_3

    .end local v8    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_3
    if-eqz v16, :cond_5

    .line 2702
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v4

    .line 2703
    .local v4, "durationScale":F
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2704
    new-instance v14, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v13, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2706
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v8, v13

    move v12, v4

    move-object v15, v13

    move/from16 v13, v17

    move-object v5, v14

    move/from16 v14, v18

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v5, v15, v6}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2709
    .local v5, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v6, :cond_4

    .line 2710
    new-instance v6, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v15, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2712
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v8, v15

    move v12, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v6, v15, v8}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v3, v6

    .line 2716
    :cond_4
    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2717
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v6

    iput v6, v0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2718
    .end local v4    # "durationScale":F
    move-object v2, v3

    move-object v8, v5

    const/4 v3, 0x1

    goto/16 :goto_3

    .line 2719
    .end local v5    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_5
    if-nez v7, :cond_6

    const/4 v4, 0x1

    :cond_6
    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    .line 2721
    invoke-direct/range {p0 .. p4}, Lcom/android/server/wm/AppWindowToken;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 2722
    .local v4, "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_a

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->inMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2734
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v5

    goto :goto_2

    .line 2735
    :cond_7
    const/4 v5, 0x0

    :goto_2
    nop

    .line 2740
    .local v5, "windowCornerRadius":F
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2741
    invoke-static {v4, v1, v2, v5}, Lcom/android/server/wm/OpOneHandModeInjector;->resetCornerRadiusAndAnimationIfNeeded(Landroid/view/animation/Animation;IZF)F

    move-result v5

    .line 2746
    :cond_8
    new-instance v6, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v15, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v11, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2748
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v12

    const/4 v14, 0x1

    move-object v8, v15

    move-object v9, v4

    move v13, v7

    move-object/from16 v17, v3

    move-object v2, v15

    const/4 v3, 0x1

    .end local v3    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .local v17, "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    move v15, v5

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v6, v2, v8}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v8, v6

    .line 2753
    .restart local v8    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 2754
    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    .line 2756
    :cond_9
    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2757
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2758
    .end local v5    # "windowCornerRadius":F
    move-object/from16 v2, v17

    goto :goto_3

    .line 2759
    .end local v8    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v17    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .restart local v3    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_a
    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .restart local v17    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    const/4 v8, 0x0

    move-object/from16 v2, v17

    .line 2762
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v17    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .local v2, "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .restart local v8    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :goto_3
    if-eqz v8, :cond_c

    .line 2763
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v5

    xor-int/2addr v5, v3

    invoke-virtual {v0, v4, v8, v5}, Lcom/android/server/wm/AppWindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 2764
    invoke-interface {v8}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2765
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2767
    :cond_b
    if-eqz v2, :cond_c

    .line 2768
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2769
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v6

    .line 2768
    xor-int/2addr v3, v6

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 2772
    .end local v2    # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v7    # "appStackClipMode":I
    .end local v8    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v16    # "isChanging":Z
    :cond_c
    goto :goto_4

    .line 2773
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 2775
    :goto_4
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2777
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v2

    return v2

    .line 2661
    :cond_e
    :goto_5
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_f

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_10

    .line 2662
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: transition animation is disabled or skipped. atoken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 2666
    return v4
.end method

.method asAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .locals 0

    .line 2131
    return-object p0
.end method

.method attachCrossProfileAppsThumbnailAnimation()V
    .locals 10

    .line 3137
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3138
    return-void

    .line 3140
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3142
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3143
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_1

    .line 3144
    return-void

    .line 3146
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 3147
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_2

    .line 3148
    const v2, 0x1080309

    goto :goto_0

    .line 3149
    :cond_2
    const v2, 0x1080359

    :goto_0
    nop

    .line 3150
    .local v2, "thumbnailDrawableRes":I
    nop

    .line 3151
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3152
    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 3153
    .local v3, "thumbnail":Landroid/graphics/GraphicBuffer;
    if-nez v3, :cond_3

    .line 3154
    return-void

    .line 3156
    :cond_3
    new-instance v4, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 3157
    nop

    .line 3158
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3159
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    .line 3158
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v4

    .line 3160
    .local v4, "animation":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 3162
    return-void
.end method

.method attachThumbnailAnimation()V
    .locals 5

    .line 3117
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3118
    return-void

    .line 3120
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 3121
    .local v0, "taskId":I
    nop

    .line 3122
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 3123
    .local v1, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    if-nez v1, :cond_2

    .line 3124
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No thumbnail header bitmap for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_1
    return-void

    .line 3127
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3128
    new-instance v2, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 3129
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/wm/AppWindowToken;->loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    .line 3130
    return-void
.end method

.method canShowWindows()Z
    .locals 1

    .line 3423
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->hasNonDefaultColorWindow()Z

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
    .locals 1

    .line 2564
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    return v0
.end method

.method cancelAnimation()V
    .locals 2

    .line 3086
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimationOnly()V

    .line 3087
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3088
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 3089
    return-void
.end method

.method cancelAnimationOnly()V
    .locals 0

    .line 3098
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    .line 3099
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .locals 2

    .line 1904
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-ne v0, v1, :cond_0

    .line 1905
    return-void

    .line 1908
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    .line 1909
    if-nez v0, :cond_1

    .line 1910
    return-void

    .line 1914
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-eqz v0, :cond_3

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 1916
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 1917
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " numInteresting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_2
    const/4 v0, 0x4

    const-string v1, "checkAppWindowsReadyToShow: freezingScreen"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_0

    .line 1924
    :cond_3
    const/16 v0, 0x8

    const-string v1, "checkAppWindowsReadyToShow"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1928
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 1931
    :cond_4
    :goto_0
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 925
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method checkKeyguardFlagsChanged()V
    .locals 5

    .line 2506
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v0

    .line 2507
    .local v0, "containsDismissKeyguard":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v1

    .line 2508
    .local v1, "containsShowWhenLocked":Z
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_1

    .line 2510
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 2510
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 2513
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    .line 2514
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    .line 2515
    return-void
.end method

.method clearAllDrawn()V
    .locals 1

    .line 1084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1085
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1086
    return-void
.end method

.method clearAnimatingFlags()V
    .locals 4

    .line 1009
    const/4 v0, 0x0

    .line 1010
    .local v0, "wallpaperMightChange":Z
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1011
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1012
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v3

    or-int/2addr v0, v3

    .line 1010
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1014
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 1017
    :cond_1
    return-void
.end method

.method clearRelaunching()V
    .locals 1

    .line 1275
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-nez v0, :cond_0

    .line 1276
    return-void

    .line 1278
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 1279
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 1280
    return-void
.end method

.method clearWillReplaceWindows()V
    .locals 2

    .line 1204
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resetting app token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of replacing window marks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1208
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1209
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 1207
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1211
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z
    .locals 19
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "visible"    # Z
    .param p3, "transit"    # I
    .param p4, "performLayout"    # Z
    .param p5, "isVoiceInteraction"    # Z

    .line 654
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    .line 655
    .local v4, "delayed":Z
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 658
    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 665
    const/4 v6, 0x0

    .line 672
    .local v6, "visibilityChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    .line 673
    .local v7, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v8, :cond_4

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v7, :cond_3

    new-array v8, v9, [I

    const/16 v10, 0x50

    aput v10, v8, v5

    .line 675
    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/16 v8, 0x15

    if-ne v2, v8, :cond_3

    goto :goto_0

    .line 739
    :cond_3
    move-object/from16 v13, p1

    move/from16 v14, p5

    move v12, v5

    goto/16 :goto_6

    .line 678
    :cond_4
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 680
    .local v8, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    const/4 v10, 0x0

    .line 681
    .local v10, "changed":Z
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v12, "WindowManager"

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Changing app "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " hidden="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " performLayout="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 681
    invoke-static {v12, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_5
    const/4 v11, 0x0

    .line 686
    .local v11, "runningAppAnimation":Z
    const/4 v13, -0x1

    if-eq v2, v13, :cond_9

    .line 687
    iget-boolean v13, v0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    if-eqz v13, :cond_6

    .line 688
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v11

    move-object/from16 v13, p1

    move/from16 v14, p5

    goto :goto_1

    .line 689
    :cond_6
    move-object/from16 v13, p1

    move/from16 v14, p5

    invoke-virtual {v0, v13, v2, v1, v14}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 690
    const/4 v11, 0x1

    .line 692
    :cond_7
    :goto_1
    move v4, v11

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v15

    .line 694
    .local v15, "window":Lcom/android/server/wm/WindowState;
    if-eqz v15, :cond_8

    if-eqz v8, :cond_8

    .line 695
    invoke-virtual {v8, v15, v2}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 697
    :cond_8
    const/4 v10, 0x1

    goto :goto_2

    .line 686
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    :cond_9
    move-object/from16 v13, p1

    move/from16 v14, p5

    .line 700
    :goto_2
    iget-object v15, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    .line 701
    .local v15, "windowsCount":I
    const/16 v16, 0x0

    move/from16 v18, v16

    move/from16 v16, v10

    move/from16 v10, v18

    .local v10, "i":I
    .local v16, "changed":Z
    :goto_3
    if-ge v10, v15, :cond_a

    .line 702
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 703
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5, v1, v11}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v17

    or-int v16, v16, v17

    .line 701
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_3

    .line 706
    .end local v10    # "i":I
    :cond_a
    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 707
    xor-int/lit8 v5, v1, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 708
    const/4 v6, 0x1

    .line 709
    if-nez v1, :cond_b

    .line 710
    invoke-virtual {v0, v9, v9}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    goto :goto_4

    .line 714
    :cond_b
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-nez v5, :cond_c

    .line 715
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 716
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 721
    :cond_c
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;

    invoke-direct {v10, v5}, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v10, v9}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 724
    :goto_4
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_d

    .line 725
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "commitVisibility: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": hidden="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " hiddenRequested="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 725
    invoke-static {v12, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_d
    if-eqz v16, :cond_f

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 731
    if-eqz v3, :cond_e

    .line 732
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x3

    const/4 v12, 0x0

    invoke-virtual {v5, v10, v12}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 734
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    goto :goto_5

    .line 731
    :cond_e
    const/4 v12, 0x0

    .line 736
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto :goto_6

    .line 729
    :cond_f
    const/4 v12, 0x0

    .line 739
    .end local v8    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v11    # "runningAppAnimation":Z
    .end local v15    # "windowsCount":I
    .end local v16    # "changed":Z
    :goto_6
    iput-boolean v12, v0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 742
    const/4 v4, 0x1

    goto :goto_7

    .line 746
    :cond_10
    iput-boolean v12, v0, Lcom/android/server/wm/AppWindowToken;->mIsReallyAnimationDone:Z

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->onAnimationFinished()V

    .line 755
    :goto_7
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    .local v5, "i":I
    :goto_8
    if-ltz v5, :cond_12

    if-nez v4, :cond_12

    .line 756
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isSelfOrChildAnimating()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 757
    const/4 v4, 0x1

    .line 755
    :cond_11
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 761
    .end local v5    # "i":I
    :cond_12
    if-eqz v6, :cond_19

    .line 762
    if-eqz v1, :cond_13

    if-nez v4, :cond_13

    .line 765
    iput-boolean v9, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 766
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 775
    :cond_13
    if-nez v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v5

    if-nez v5, :cond_15

    .line 776
    :cond_14
    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 779
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppVisibilityChanged()V

    .line 790
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 803
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_18

    if-nez v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-nez v5, :cond_18

    .line 804
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 805
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    .restart local v5    # "i":I
    :goto_9
    if-ltz v5, :cond_17

    .line 806
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v9, "immediately hidden"

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 805
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 808
    .end local v5    # "i":I
    :cond_17
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 812
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->reportDescendantOrientationChangeIfNeeded()V

    .line 815
    :cond_19
    return v4
.end method

.method containsDismissKeyguardWindow()Z
    .locals 4

    .line 2476
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2477
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    return v0

    .line 2480
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2481
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2482
    return v1

    .line 2480
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2485
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method containsShowWhenLockedWindow()Z
    .locals 4

    .line 2492
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2493
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    return v0

    .line 2496
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2497
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2498
    return v1

    .line 2496
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2502
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method destroySurfaces()V
    .locals 1

    .line 1020
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 1021
    return-void
.end method

.method detachChildren()V
    .locals 3

    .line 1255
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1256
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1258
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 1256
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1260
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1261
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3198
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3199
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_0

    .line 3200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app=true mVoiceInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3204
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mFillsParent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3205
    const-string v0, " mOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hiddenRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClientHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3207
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDeferHidingClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reportedDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reportedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3206
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3209
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    if-eqz v0, :cond_2

    .line 3210
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3212
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v0, :cond_3

    .line 3213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppStopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3215
    :cond_3
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-eqz v0, :cond_5

    .line 3217
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3218
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3219
    const-string v0, " mNumDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3220
    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3221
    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3222
    const-string v0, " lastAllDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3223
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_6

    .line 3226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3227
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3229
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_8

    .line 3230
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3231
    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3232
    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3233
    const-string v0, " mIsExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3235
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_a

    .line 3237
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3238
    const-string v0, " startingSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3239
    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3240
    const-string v0, " startingMoved="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHiddenSetFromTransferredStartingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3245
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrozenBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3246
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrozenMergedConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3248
    :cond_b
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-eqz v0, :cond_c

    .line 3249
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingRelaunchCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3251
    :cond_c
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_e

    .line 3252
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSizeCompatScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mSizeCompatBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_f

    .line 3256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRemovingFromDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    :cond_f
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 2466
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    return v0
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .locals 6
    .param p1, "includeStartingApp"    # Z

    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_3

    .line 863
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 864
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 867
    .local v4, "type":I
    if-eq v4, v2, :cond_0

    if-eqz p1, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 872
    :cond_0
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v5, :cond_2

    .line 873
    move-object v0, v3

    .line 862
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "type":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 875
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v4    # "type":I
    :cond_2
    return-object v3

    .line 879
    .end local v1    # "j":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "type":I
    :cond_3
    return-object v0
.end method

.method finishRelaunching()V
    .locals 1

    .line 1264
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 1266
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    .line 1267
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    goto :goto_0

    .line 1270
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1272
    :goto_0
    return-void
.end method

.method forAllAppWindows(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 2120
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2121
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
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

    .line 2112
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2113
    const/4 v0, 0x0

    return v0

    .line 2115
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

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

    .line 2125
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "appStackClipMode"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2648
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2650
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2654
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 2592
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 2595
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAppAnimationLayer()Landroid/view/SurfaceControl;
    .locals 1

    .line 2581
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 2582
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->needsZBoost()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 2583
    :cond_1
    const/4 v0, 0x0

    .line 2581
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1886
    return-object v0

    .line 1888
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getDisplayedBounds()Landroid/graphics/Rect;
    .locals 3

    .line 2636
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2637
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 2638
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOverrideDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2639
    .local v1, "overrideDisplayedBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2640
    return-object v1

    .line 2643
    .end local v1    # "overrideDisplayedBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 4
    .param p1, "currentTarget"    # Lcom/android/server/wm/WindowState;

    .line 2529
    const/4 v0, 0x0

    .line 2530
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2531
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2532
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_0

    .line 2533
    goto :goto_1

    .line 2535
    :cond_0
    if-nez v0, :cond_1

    .line 2536
    move-object v0, v2

    .line 2530
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2539
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2518
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2519
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 2520
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2521
    .local v1, "target":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2522
    return-object v1

    .line 2525
    .end local v1    # "target":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 3385
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    .line 3386
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3388
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3390
    :goto_0
    return-void
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .locals 1

    .line 3376
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_0

    .line 3377
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3379
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method getOrientation(I)I
    .locals 1
    .param p1, "candidate"    # I

    .line 1670
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1674
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0

    .line 1680
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1681
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1682
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0

    .line 1685
    :cond_2
    const/4 v0, -0x2

    return v0
.end method

.method getOrientationIgnoreVisibility()I
    .locals 1

    .line 1690
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .locals 1

    .line 3193
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object v0
.end method

.method getResolvedOverrideBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSizeCompatScale()F
    .locals 1

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    :goto_0
    return v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .locals 2

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1094
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1095
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v1

    .line 1097
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getThumbnail()Lcom/android/server/wm/AppWindowThumbnail;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1846
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    return-object v0
.end method

.method getTopFullscreenWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 840
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 841
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 842
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    return-object v1

    .line 840
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 846
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransit()I
    .locals 1

    .line 3109
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    return v0
.end method

.method getTransitFlags()I
    .locals 1

    .line 3113
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    return v0
.end method

.method hasWindowsAlive()Z
    .locals 3

    .line 1174
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1177
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v2, :cond_0

    .line 1178
    return v1

    .line 1174
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1181
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method inSizeCompatMode()Z
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAppAnimating()Z
    .locals 1

    .line 3041
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method isClientHidden()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    return v0
.end method

.method isClosingOrEnteringPip()Z
    .locals 1

    .line 3414
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "existingWindow"    # Lcom/android/server/wm/WindowState;

    .line 1289
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1290
    .local v0, "type1":I
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1293
    .local v1, "type2":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    .line 1294
    return v2

    .line 1295
    :cond_0
    if-eq v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    .line 1296
    return v3

    .line 1300
    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    if-eq v1, v4, :cond_2

    .line 1301
    return v3

    .line 1302
    :cond_2
    if-eq v0, v4, :cond_3

    if-ne v1, v4, :cond_3

    .line 1303
    return v2

    .line 1307
    :cond_3
    return v3
.end method

.method isFreezingScreen()Z
    .locals 1

    .line 3300
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    return v0
.end method

.method isInChangeTransition()Z
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

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

.method isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1656
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

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

    .line 3397
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

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

.method isRelaunching()Z
    .locals 1

    .line 1221
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSelfAnimating()Z
    .locals 1

    .line 3047
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

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

.method isSurfaceShowing()Z
    .locals 1

    .line 3296
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 901
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isWaitingForTransitionStart()Z
    .locals 1

    .line 3102
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3103
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3104
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3105
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3102
    :goto_0
    return v0
.end method

.method keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "windowPid"    # I

    .line 1994
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$layoutLetterbox$2$AppWindowToken()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 2080
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$AppWindowToken([F[F)V
    .locals 3
    .param p1, "matrix"    # [F
    .param p2, "translation"    # [F

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 370
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    if-nez v1, :cond_0

    .line 371
    new-instance v1, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;-><init>(Lcom/android/server/wm/AppWindowToken$1;)V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->setSaturation([F[F)V

    .line 375
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->updateColorTransform()V

    .line 376
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$new$1$AppWindowToken([F[F)V
    .locals 2
    .param p1, "matrix"    # [F
    .param p2, "translation"    # [F

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;-><init>(Lcom/android/server/wm/AppWindowToken;[F[F)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;

    .line 2070
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2071
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_9

    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    goto/16 :goto_6

    .line 2074
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-nez v1, :cond_2

    .line 2076
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

    .line 2077
    .local v1, "surfaceReady":Z
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2078
    .local v2, "needsLetterbox":Z
    :cond_3
    if-eqz v2, :cond_7

    .line 2079
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez v3, :cond_4

    .line 2080
    new-instance v3, Lcom/android/server/wm/Letterbox;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$AppWindowToken$nF85SgNnIhRmVDk5ZRCmd3hL2jU;

    invoke-direct {v4, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$nF85SgNnIhRmVDk5ZRCmd3hL2jU;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    invoke-direct {v3, v4}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;)V

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 2081
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Letterbox;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 2083
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->getPosition(Landroid/graphics/Point;)V

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 2088
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2089
    .local v3, "spaceToFill":Landroid/graphics/Rect;
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .end local v3    # "spaceToFill":Landroid/graphics/Rect;
    goto :goto_4

    .line 2090
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v3, :cond_8

    .line 2091
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->hide()V

    goto :goto_5

    .line 2090
    :cond_8
    :goto_4
    nop

    .line 2093
    :goto_5
    return-void

    .line 2072
    .end local v1    # "surfaceReady":Z
    .end local v2    # "needsLetterbox":Z
    :cond_9
    :goto_6
    return-void
.end method

.method public matchParentBounds()Z
    .locals 4

    .line 1893
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->matchParentBounds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1894
    return v1

    .line 1898
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1899
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method needsZBoost()Z
    .locals 1

    .line 3305
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

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
    .locals 2
    .param p1, "wasStopped"    # Z

    .line 1061
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppResumed: wasStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 1065
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    .line 1066
    if-nez p1, :cond_1

    .line 1067
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 1069
    :cond_1
    return-void
.end method

.method notifyAppStopped()V
    .locals 2

    .line 1076
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    .line 1080
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 1081
    return-void
.end method

.method protected onAnimationFinished()V
    .locals 5

    .line 2989
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onAnimationFinished()V

    .line 2991
    const-wide/16 v0, 0x20

    const-string v2, "AWT#onAnimationFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2992
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2993
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2994
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    .line 2995
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    .line 2997
    const/16 v3, 0xc

    const-string v4, "AppWindowToken"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 3000
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3001
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_0

    move v2, v4

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 3003
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->computeImeTargetIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    .line 3005
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation done in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": reportedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " okToDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " okToAnimate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " startingDisplayed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3005
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mIsReallyAnimationDone:Z

    if-eqz v2, :cond_3

    .line 3016
    :cond_2
    const-string v2, "app transition animation done"

    invoke-static {v2}, Lcom/android/server/wm/OpOneHandModeInjector;->forceCancelOneHandMode(Ljava/lang/String;)V

    .line 3018
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mIsReallyAnimationDone:Z

    .line 3022
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_4

    .line 3023
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowThumbnail;->destroy()V

    .line 3024
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 3029
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3030
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    sget-object v3, Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 3032
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 3033
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    .line 3035
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->onAnimationFinished()V

    .line 3036
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3037
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 2918
    const/4 v0, 0x0

    .line 2919
    .local v0, "layer":I
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2920
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v0

    goto :goto_0

    .line 2925
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v0

    .line 2928
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-eqz v1, :cond_1

    .line 2929
    const v1, 0x2fb7ba90

    add-int/2addr v0, v1

    .line 2931
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    if-nez v1, :cond_2

    .line 2932
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 2935
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2936
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->assignStackOrdering()V

    .line 2938
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    if-ne p2, v2, :cond_3

    .line 2940
    return-void

    .line 2941
    :cond_3
    if-eqz v2, :cond_4

    .line 2943
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2946
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_5

    .line 2947
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyStarting(Lcom/android/server/wm/AppWindowToken;)V

    .line 2952
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    if-eqz v2, :cond_8

    .line 2953
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2954
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2955
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 2956
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTransit()I

    move-result v4

    .line 2955
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/AppTransitionController;->isTransitWithinTask(ILcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2957
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2959
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 2960
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v3, :cond_7

    .line 2961
    return-void

    .line 2964
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2966
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWindowToken;->createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    .line 2969
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2970
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2973
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2975
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_8
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2882
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2883
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 2884
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    .line 2888
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_1

    .line 2889
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 2891
    :cond_1
    return-void
.end method

.method public onAppFreezeTimeout()V
    .locals 2

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing freeze: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 1547
    return-void
.end method

.method onAppTransitionDone()V
    .locals 1

    .line 1661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 1662
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    .line 1715
    .local v0, "prevWinMode":I
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1716
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1718
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1719
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1720
    .local v2, "overrideBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    .line 1725
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    .line 1726
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1729
    .local v3, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1730
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_1

    goto :goto_0

    .line 1733
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    .line 1734
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 1735
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 1736
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfacePosition()V

    goto :goto_1

    .line 1731
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWindowToken;->calculateCompatBoundsTransformation(Landroid/content/res/Configuration;)V

    .line 1732
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfacePosition()V

    .line 1740
    .end local v3    # "taskBounds":Landroid/graphics/Rect;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v3

    .line 1742
    .local v3, "winMode":I
    if-ne v0, v3, :cond_4

    .line 1743
    return-void

    .line 1746
    :cond_4
    const/4 v4, 0x2

    if-eqz v0, :cond_5

    if-ne v3, v4, :cond_5

    .line 1748
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_4

    .line 1749
    :cond_5
    if-ne v0, v4, :cond_7

    if-eqz v3, :cond_7

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1753
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 1754
    .local v4, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_8

    .line 1756
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1759
    iget-object v5, v4, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .local v5, "stackBounds":Landroid/graphics/Rect;
    goto :goto_2

    .line 1764
    .end local v5    # "stackBounds":Landroid/graphics/Rect;
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 1765
    .restart local v5    # "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1767
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v6, p0, v5}, Lcom/android/server/wm/PinnedStackController;->saveReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 1770
    .end local v4    # "pinnedStack":Lcom/android/server/wm/TaskStack;
    .end local v5    # "stackBounds":Landroid/graphics/Rect;
    :cond_7
    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/AppWindowToken;->shouldStartChangeTransition(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1771
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/AppWindowToken;->initializeChangeTransition(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1770
    :cond_8
    :goto_3
    nop

    .line 1773
    :goto_4
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1397
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1398
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1399
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1403
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1405
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1406
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 1407
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1410
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1419
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1421
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, p0, :cond_3

    .line 1422
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 1423
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1424
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_3

    .line 1425
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1426
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, p0, :cond_3

    .line 1427
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 1432
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_4

    .line 1433
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->onMovedToDisplay(I)V

    .line 1435
    :cond_4
    return-void

    .line 1400
    :cond_5
    :goto_0
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 435
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 438
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": first real window is shown, no animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 446
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 447
    return-void
.end method

.method onParentChanged()V
    .locals 3

    .line 1103
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onParentChanged()V

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1110
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    if-nez v1, :cond_1

    .line 1111
    if-nez v0, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    .line 1116
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 1119
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1122
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_2

    .line 1123
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 1125
    :cond_2
    if-eqz v1, :cond_3

    .line 1126
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    move-result-object v2

    goto :goto_1

    .line 1127
    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 1129
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    .line 1131
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->updateColorTransform()V

    .line 1132
    return-void
.end method

.method onRemovedFromDisplay()V
    .locals 9

    .line 929
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_0

    .line 930
    return-void

    .line 932
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 934
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v1

    .line 938
    .local v1, "delayed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 940
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    .line 941
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskSnapshotController;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 942
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 943
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 944
    const/4 v1, 0x1

    goto :goto_0

    .line 945
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 946
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 947
    const/4 v1, 0x1

    .line 950
    :cond_3
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v5, " delayed="

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing app "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " animation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " animating="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 950
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_4
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v4, :cond_6

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAppToken: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    .line 954
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 953
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_7

    .line 957
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 963
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 964
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 968
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 970
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v5, :cond_a

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAppToken make exiting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_a
    if-eqz v4, :cond_b

    .line 973
    iget-object v5, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_b
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    goto :goto_1

    .line 979
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 980
    if-eqz v4, :cond_d

    .line 981
    iget-object v5, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 983
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 986
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 987
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 989
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 990
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v7, 0x0

    if-ne v6, p0, :cond_f

    .line 991
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing focused app token:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " displayId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 991
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_e
    invoke-virtual {v5, v7}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 994
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 996
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_10

    .line 997
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->destroy()V

    .line 998
    iput-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 1001
    :cond_10
    if-nez v1, :cond_11

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1005
    :cond_11
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 1006
    return-void
.end method

.method onWindowReplacementTimeout()V
    .locals 2

    .line 1349
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 1349
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1352
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "WindowManager"

    if-ne v0, p1, :cond_1

    .line 1137
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify removed startingWindow "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1142
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_2

    const-string v0, "Nulling last startingData"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1144
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_5

    .line 1148
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    goto :goto_0

    .line 1150
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1153
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last window, removing starting window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 1157
    :cond_5
    :goto_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 4

    .line 3275
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    .line 3276
    .local v0, "reallyAnimating":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 3278
    .local v1, "show":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    .line 3279
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-nez v2, :cond_2

    .line 3280
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 3281
    :cond_2
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-eqz v2, :cond_3

    .line 3282
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3285
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_4

    .line 3286
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/AppWindowThumbnail;->setShowing(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 3288
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    .line 3289
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->prepareSurfaces()V

    .line 3290
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 0
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 3189
    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 3190
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 157
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/WindowState;

    .line 1329
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1331
    return-void

    .line 1333
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1334
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1335
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 1336
    return-void
.end method

.method removeDeadWindows()V
    .locals 5

    .line 1160
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "winNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1161
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1162
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v3, :cond_2

    .line 1163
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeDeadWindows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_1
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 1168
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 1160
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1171
    .end local v0    # "winNdx":I
    :cond_3
    return-void
.end method

.method removeIfPossible()V
    .locals 1

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 916
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindowsIfPossible()V

    .line 917
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeImmediately()V

    .line 918
    return-void
.end method

.method removeImmediately()V
    .locals 1

    .line 906
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 907
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 910
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 911
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "replacement"    # Lcom/android/server/wm/WindowState;

    .line 1486
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1488
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1489
    return-void

    .line 1486
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1492
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method removeStartingWindow()V
    .locals 4

    .line 2397
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2398
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_1

    .line 2401
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_0

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing startingData for token="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2406
    :cond_1
    return-void

    .line 2410
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_8

    .line 2411
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2412
    .local v0, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2413
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2414
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2415
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 2416
    if-nez v0, :cond_4

    .line 2417
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_3

    .line 2418
    const-string v2, "startingWindow was set but startingSurface==null, couldn\'t remove"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_3
    return-void

    .line 2431
    :cond_4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_5

    .line 2432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule remove starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " startingWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " startingView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 2435
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2432
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :cond_5
    sget-boolean v1, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v1, :cond_6

    .line 2441
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

    .line 2447
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->interceptRemoveStartingWindow(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2448
    return-void

    .line 2454
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppWindowToken$JR7Cr936i7DlrzcjMaXdnVHq3NU;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$JR7Cr936i7DlrzcjMaXdnVHq3NU;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2462
    return-void

    .line 2424
    .end local v0    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :cond_8
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_9

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to remove starting window but startingWindow was null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_9
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;I)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I

    .line 1355
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reparent: moving app token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_0
    if-eqz p1, :cond_5

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1363
    .local v0, "currentTask":Lcom/android/server/wm/Task;
    const-string v2, "window token="

    if-eq p1, v0, :cond_4

    .line 1368
    iget-object v3, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne v3, v4, :cond_3

    .line 1374
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reParentWindowToken: removing window token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1378
    .local v1, "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1381
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1383
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    .line 1386
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1387
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1388
    if-eq v1, v2, :cond_2

    .line 1389
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1390
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1392
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 1393
    return-void

    .line 1369
    .end local v1    # "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current task="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " belongs to a different stack than "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1364
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already child of task="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1360
    .end local v0    # "currentTask":Lcom/android/server/wm/Task;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reparent: could not find task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 2909
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2912
    :cond_0
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1215
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1216
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 1214
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1218
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method scheduleAddStartingWindow()V
    .locals 2

    .line 2271
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2272
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Enqueueing ADD_STARTING"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2275
    :cond_1
    return-void
.end method

.method setAppLayoutChanges(ILjava/lang/String;)V
    .locals 3
    .param p1, "changes"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1476
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1478
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1479
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_0

    .line 1480
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1483
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_0
    return-void
.end method

.method setCanTurnScreenOn(Z)V
    .locals 0
    .param p1, "canTurnScreenOn"    # Z

    .line 2553
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    .line 2554
    return-void
.end method

.method setClientHidden(Z)V
    .locals 2
    .param p1, "hideClient"    # Z

    .line 527
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClientHidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " clientHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 531
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    .line 533
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 534
    return-void

    .line 528
    :cond_2
    :goto_0
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 2546
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    .line 2547
    return-void
.end method

.method setFillsParent(Z)V
    .locals 0
    .param p1, "fillsParent"    # Z

    .line 2470
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    .line 2471
    return-void
.end method

.method setHidden(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .line 3262
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setHidden(Z)V

    .line 3264
    if-eqz p1, :cond_0

    .line 3266
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    .line 3268
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    .line 3269
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 2895
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2896
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2898
    :cond_0
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 2902
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2903
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2905
    :cond_0
    return-void
.end method

.method setVisibility(ZZ)V
    .locals 12
    .param p1, "visible"    # Z
    .param p2, "deferHidingClient"    # Z

    .line 537
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 546
    .local v0, "appTransition":Lcom/android/server/wm/AppTransition;
    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v2, :cond_1

    .line 548
    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v2, :cond_0

    .line 551
    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 552
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 554
    :cond_0
    return-void

    .line 557
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v3, "WindowManager"

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_3

    .line 558
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppVisibility("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", visible="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " hidden="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hiddenRequested="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    .line 561
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 565
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 566
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 567
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isInChangeTransition()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 570
    :cond_4
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 571
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 572
    xor-int/lit8 v5, p1, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 573
    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 575
    if-nez p1, :cond_5

    .line 579
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    goto :goto_0

    .line 581
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-nez v5, :cond_6

    .line 582
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 586
    iget-object v5, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 591
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v5, :cond_8

    .line 592
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 595
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 596
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 604
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 606
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 608
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No longer Stopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_9
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 611
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 616
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 617
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 618
    if-eqz p1, :cond_a

    .line 619
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 620
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    goto :goto_1

    .line 622
    :cond_a
    iget-object v5, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 623
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 625
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_c

    .line 628
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 629
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_c

    .line 630
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 631
    .local v5, "focusedToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_c

    .line 632
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_b

    .line 633
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TRANSIT_TASK_OPEN_BEHIND,  adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to mOpeningApps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_b
    invoke-virtual {v5, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 638
    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 643
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "focusedToken":Lcom/android/server/wm/AppWindowToken;
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->reportDescendantOrientationChangeIfNeeded()V

    .line 644
    return-void

    .line 647
    :cond_d
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v6, p0

    move v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 648
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 649
    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .locals 0
    .param p1, "willCloseOrEnterPip"    # Z

    .line 3405
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    .line 3406
    return-void
.end method

.method setWillReplaceChildWindows()V
    .locals 2

    .line 1195
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marking app token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with replacing child windows."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1199
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 1197
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1201
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method setWillReplaceWindows(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1185
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marking app token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with replacing windows."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1189
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1190
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 1188
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1192
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method shouldAnimate(I)Z
    .locals 6
    .param p1, "transit"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2602
    nop

    .line 2603
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2604
    .local v0, "isSplitScreenPrimary":Z
    :goto_0
    const/16 v3, 0xd

    if-eq p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2609
    .local v3, "allowSplitScreenPrimaryAnimation":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v4

    .line 2610
    .local v4, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2611
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController;->shouldCancelWithDeferredScreenshot()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2612
    return v2

    .line 2618
    :cond_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 2875
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_0

    .line 2876
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyAboutToFinish(Lcom/android/server/wm/AppWindowToken;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2875
    :goto_0
    return v0
.end method

.method shouldFreezeBounds()Z
    .locals 2

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1229
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v1

    return v1

    .line 1230
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method shouldUseAppThemeSnapshot()Z
    .locals 2

    .line 2576
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$NwyjcPHhaxqkEKaJxeRVkzuWYXc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$NwyjcPHhaxqkEKaJxeRVkzuWYXc;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method showAllWindowsLocked()V
    .locals 2

    .line 2981
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$jUUD3GIacKfmiVanGs_Dyy3FFqI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$jUUD3GIacKfmiVanGs_Dyy3FFqI;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2985
    return-void
.end method

.method startFreezingScreen()V
    .locals 4

    .line 1495
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set freezing of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " freezing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hiddenRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1495
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_2

    .line 1499
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v0, :cond_1

    .line 1500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    .line 1501
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 1502
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 1503
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v1, v0, :cond_1

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 1505
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1506
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1510
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1511
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1512
    .local v2, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 1510
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1515
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method startRelaunching()V
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->shouldFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 1251
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 1252
    return-void
.end method

.method stopFreezingScreen(ZZ)V
    .locals 6
    .param p1, "unfreezeSurfaceNow"    # Z
    .param p2, "force"    # Z

    .line 1518
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v0, :cond_0

    .line 1519
    return-void

    .line 1521
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear freezing of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " force="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1523
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1524
    .local v2, "unfrozeWindows":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1525
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1526
    .local v4, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v5

    or-int/2addr v2, v5

    .line 1524
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1528
    .end local v3    # "i":I
    :cond_2
    if-nez p2, :cond_3

    if-eqz v2, :cond_5

    .line 1529
    :cond_3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No longer freezing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    .line 1531
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 1532
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 1533
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1535
    :cond_5
    if-eqz p1, :cond_7

    .line 1536
    if-eqz v2, :cond_6

    .line 1537
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1539
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 1541
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3365
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3367
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    .line 3372
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v1, :cond_1

    const-string v1, " mIsExiting="

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transferStartingWindow(Landroid/os/IBinder;)Z
    .locals 11
    .param p1, "transferFrom"    # Landroid/os/IBinder;

    .line 1569
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1570
    .local v0, "fromToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1571
    return v1

    .line 1574
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1575
    .local v2, "tStartingWindow":Lcom/android/server/wm/WindowState;
    const-string v3, " to "

    const-string v4, "WindowManager"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v7, :cond_7

    .line 1578
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iput-boolean v6, v7, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 1580
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    const-string v8, " from "

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Moving existing starting "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1586
    .local v9, "origId":J
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1587
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 1588
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1589
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1590
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1591
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 1592
    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1593
    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 1594
    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1595
    iput-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1596
    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1597
    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1599
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing starting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    .line 1602
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 1603
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 1604
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1609
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v3, :cond_4

    .line 1610
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1611
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1613
    :cond_4
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_5

    .line 1614
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1616
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1617
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 1618
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1619
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 1621
    :cond_6
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 1623
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 1628
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    .line 1630
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1633
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1636
    nop

    .line 1637
    return v6

    .line 1635
    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1638
    .end local v9    # "origId":J
    :cond_7
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v7, :cond_9

    .line 1641
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving pending starting from "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1644
    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1645
    iput-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1646
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 1647
    return v6

    .line 1652
    :cond_9
    return v1
.end method

.method transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .locals 4

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1557
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v1, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1558
    iget-object v2, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1559
    .local v2, "fromToken":Lcom/android/server/wm/AppWindowToken;
    if-ne v2, p0, :cond_0

    .line 1560
    return-void

    .line 1562
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1563
    return-void

    .line 1557
    .end local v2    # "fromToken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1566
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method updateAllDrawn()V
    .locals 4

    .line 1957
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_3

    .line 1960
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 1965
    .local v0, "numInteresting":I
    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_3

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1967
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

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

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_0
    sget-boolean v1, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 1972
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

    .line 1975
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1978
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2

    .line 1979
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1981
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1985
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1986
    .local v1, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_3

    .line 1987
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->onAllWindowsDrawn()V

    .line 1991
    .end local v0    # "numInteresting":I
    .end local v1    # "pinnedStack":Lcom/android/server/wm/TaskStack;
    :cond_3
    return-void
.end method

.method updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .locals 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2004
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 2006
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const-string v2, " freezingScreen="

    const-string v3, "WindowManager"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_0

    .line 2007
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

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v1, :cond_1

    .line 2012
    return v4

    .line 2015
    :cond_1
    iget-wide v5, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    .line 2016
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    .line 2017
    iput v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    .line 2018
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 2021
    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 2024
    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2026
    .local v1, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v5, 0x0

    .line 2028
    .local v5, "isInterestingAndDrawn":Z
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2029
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_5

    .line 2030
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

    .line 2031
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2030
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2033
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not displayed: s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " pv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mDrawState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ph="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " th="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " a="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2033
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v6, :cond_9

    .line 2042
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2044
    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eq v4, p1, :cond_6

    .line 2045
    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 2047
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2048
    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    .line 2050
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_8

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

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppFreezing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_8
    const/4 v5, 0x1

    goto :goto_1

    .line 2058
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2059
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_a

    .line 2060
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->onStartingWindowDrawn(J)V

    .line 2062
    :cond_a
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 2066
    :cond_b
    :goto_1
    return v5
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;

    .line 2096
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2097
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2098
    return-void

    .line 2100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 2101
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2102
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 2104
    :cond_1
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .locals 11

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_0

    .line 451
    return-void

    .line 454
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update reported visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 457
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    .line 459
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 460
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 461
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 459
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v2, v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 465
    .local v2, "numInteresting":I
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v3, v3, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 466
    .local v3, "numVisible":I
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v4, v4, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 467
    .local v4, "numDrawn":I
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 469
    .local v5, "nowGone":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v2, :cond_3

    if-lt v4, v2, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v6

    .line 470
    .local v8, "nowDrawn":Z
    :goto_1
    if-lez v2, :cond_4

    if-lt v3, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v9

    if-nez v9, :cond_4

    move v6, v7

    .line 471
    .local v6, "nowVisible":Z
    :cond_4
    if-nez v5, :cond_6

    .line 473
    if-nez v8, :cond_5

    .line 474
    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 476
    :cond_5
    if-nez v6, :cond_6

    .line 477
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 480
    :cond_6
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

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

    .line 482
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v8, v7, :cond_9

    .line 483
    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_8

    .line 484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wm/ActivityRecord;->onWindowsDrawn(ZJ)V

    .line 486
    :cond_8
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 488
    :cond_9
    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v6, v7, :cond_c

    .line 489
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v7, :cond_a

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

    .line 491
    :cond_a
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 492
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_c

    .line 493
    if-eqz v6, :cond_b

    .line 494
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->onWindowsVisible()V

    goto :goto_2

    .line 496
    :cond_b
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->onWindowsGone()V

    .line 500
    :cond_c
    :goto_2
    return-void
.end method

.method windowsAreFocusable()Z
    .locals 4

    .line 883
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 886
    .local v0, "pid":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 887
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 888
    .local v2, "topFocusedAppOfMyProcess":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    .line 891
    return v1

    .line 894
    .end local v0    # "pid":I
    .end local v2    # "topFocusedAppOfMyProcess":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3352
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_0

    .line 3353
    return-void

    .line 3356
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/view/IApplicationToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3360
    goto :goto_0

    .line 3357
    :catch_0
    move-exception v0

    .line 3359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 3313
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3314
    return-void

    .line 3317
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3318
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3319
    const-wide v2, 0x10b00000002L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3320
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3321
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3322
    const-wide v2, 0x10800000005L

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3323
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_1

    .line 3324
    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/AppWindowThumbnail;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3326
    :cond_1
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3327
    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3328
    const-wide v2, 0x10800000009L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3329
    const-wide v2, 0x1080000000aL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3330
    const-wide v2, 0x1080000000bL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3331
    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3332
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3333
    const-wide v2, 0x1050000000eL

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3334
    const-wide v2, 0x1050000000fL

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3335
    const-wide v2, 0x10800000010L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3336
    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3337
    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3338
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    .line 3339
    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3341
    :cond_2
    const-wide v2, 0x10800000014L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3342
    const-wide v2, 0x10800000015L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3343
    const-wide v2, 0x10800000016L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3345
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 3346
    .local v3, "bounds":Landroid/graphics/Rect;
    const-wide v4, 0x20b00000017L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3347
    .end local v3    # "bounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 3348
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3349
    return-void
.end method
