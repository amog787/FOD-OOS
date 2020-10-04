.class public Lcom/android/server/wm/DockedStackDividerController;
.super Ljava/lang/Object;
.source "DockedStackDividerController.java"


# static fields
.field private static final CLIP_REVEAL_MEET_EARLIEST:F = 0.6f

.field private static final CLIP_REVEAL_MEET_FRACTION_MAX:F = 0.8f

.field private static final CLIP_REVEAL_MEET_FRACTION_MIN:F = 0.4f

.field private static final CLIP_REVEAL_MEET_LAST:F = 1.0f

.field private static final DIVIDER_WIDTH_INACTIVE_DP:I = 0x4

.field private static final IME_ADJUST_ANIM_DURATION:J = 0x118L

.field private static final IME_ADJUST_DRAWN_TIMEOUT:J = 0xc8L

.field private static final IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAdjustedForDivider:Z

.field private mAdjustedForIme:Z

.field private mAnimatingForIme:Z

.field private mAnimatingForMinimizedDockedStack:Z

.field private mAnimationDuration:J

.field private mAnimationStart:F

.field private mAnimationStartDelayed:Z

.field private mAnimationStartTime:J

.field private mAnimationStarted:Z

.field private mAnimationTarget:F

.field private mDelayedImeWin:Lcom/android/server/wm/WindowState;

.field private mDimmedStack:Lcom/android/server/wm/TaskStack;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDividerAnimationStart:F

.field private mDividerAnimationTarget:F

.field private mDividerInsets:I

.field private mDividerWindowWidth:I

.field private mDividerWindowWidthInactive:I

.field private final mDockedStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDockedStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImeHeight:I

.field private mImeHideRequested:Z

.field mLastAnimationProgress:F

.field private mLastDimLayerAlpha:F

.field private final mLastDimLayerRect:Landroid/graphics/Rect;

.field mLastDividerProgress:F

.field private final mLastRect:Landroid/graphics/Rect;

.field private mLastVisibility:Z

.field private mMaximizeMeetFraction:F

.field private mMinimizedDock:Z

.field private final mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

.field private mOriginalDockedSide:I

.field private mResizing:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mTaskHeightInMinimizedMode:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTouchRegion:Landroid/graphics/Rect;

.field private mWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 96
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 118
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDimLayerRect:Landroid/graphics/Rect;

    .line 149
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 150
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 151
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 152
    .local v0, "context":Landroid/content/Context;
    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 155
    return-void
.end method

.method private adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F
    .param p3, "naturalAmount"    # F

    .line 981
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 982
    return p3

    .line 984
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v0

    .line 985
    .local v0, "minimizeDistance":I
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 987
    .local v2, "startPrime":F
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v3, p2

    sub-float v4, v1, p2

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 988
    .local v3, "amountPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    div-float v4, p2, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 989
    .local v4, "t2":F
    mul-float v5, v3, v4

    sub-float/2addr v1, v4

    mul-float/2addr v1, p3

    add-float/2addr v5, v1

    return v5
.end method

.method private animateForIme(J)Z
    .locals 6
    .param p1, "now"    # J

    .line 906
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_1

    .line 907
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 908
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 909
    const/high16 v0, 0x438c0000    # 280.0f

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 910
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 912
    :cond_1
    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v2, p1, v2

    long-to-float v0, v2

    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 913
    .local v0, "t":F
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 914
    :goto_0
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 915
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 916
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/DisplayContent;->animateForIme(FFF)Z

    move-result v3

    .line 917
    .local v3, "updated":Z
    if-eqz v3, :cond_3

    .line 918
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 920
    :cond_3
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    .line 921
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 922
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 923
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 924
    return v1

    .line 926
    :cond_4
    return v1
.end method

.method private animateForMinimizedDockedStack(J)Z
    .locals 5
    .param p1, "now"    # J

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 932
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 933
    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 934
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 935
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 936
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    .line 935
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 938
    :cond_0
    iget-wide v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v3, p1, v3

    long-to-float v1, v3

    iget-wide v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 939
    .local v1, "t":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 940
    :goto_0
    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 941
    if-eqz v0, :cond_2

    .line 942
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 943
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 946
    :cond_2
    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3

    .line 947
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 948
    return v2

    .line 950
    :cond_3
    return v2
.end method

.method private clearImeAdjustAnimation()Z
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->clearImeAdjustAnimation()Z

    move-result v0

    .line 794
    .local v0, "changed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 795
    return v0
.end method

.method private containsAppInDockedStack(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 696
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 697
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 698
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    return v1

    .line 696
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 702
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 997
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 998
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->hadClipRevealAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1001
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v0

    .line 1002
    .local v0, "minimizeDistance":I
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1003
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v2

    .line 1002
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 1004
    .local v2, "fraction":F
    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    sub-float v5, v2, v4

    div-float/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1006
    .local v3, "t":F
    const v4, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v3

    const v5, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    return v1

    .line 999
    .end local v0    # "minimizeDistance":I
    .end local v2    # "fraction":F
    .end local v3    # "t":F
    :cond_1
    :goto_0
    return v1
.end method

.method private getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F

    .line 966
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v0

    .line 967
    .local v0, "naturalAmount":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    move-result v1

    return v1

    .line 970
    :cond_0
    return v0
.end method

.method private getResizeDimLayer()I
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v1, v0, -0x1

    :cond_0
    return v1
.end method

.method private initSnapAlgorithmForRotations()V
    .locals 26

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 273
    .local v1, "baseConfig":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 274
    .local v2, "config":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    .local v3, "rotation":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_6

    .line 275
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v3, v11, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v10

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v11

    :goto_2
    move v12, v4

    .line 276
    .local v12, "rotated":Z
    if-eqz v12, :cond_2

    .line 277
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_3

    .line 278
    :cond_2
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_3
    move v15, v4

    .line 279
    .local v15, "dw":I
    if-eqz v12, :cond_3

    .line 280
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_4

    .line 281
    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_4
    move v14, v4

    .line 282
    .local v14, "dh":I
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 283
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v20

    .line 284
    .local v20, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v21

    .line 285
    .local v21, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v4, v21

    move v5, v3

    move v6, v15

    move v7, v14

    move-object/from16 v8, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 286
    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    .line 287
    if-gt v15, v14, :cond_4

    move v4, v11

    goto :goto_5

    :cond_4
    const/4 v4, 0x2

    :goto_5
    iput v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 289
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v4, v21

    move v5, v15

    move v6, v14

    move v7, v3

    move-object/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v22

    .line 291
    .local v22, "appWidth":I
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v23

    .line 293
    .local v23, "appHeight":I
    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v5, v3

    move v6, v15

    move v7, v14

    move-object/from16 v8, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 294
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->left:I

    .line 295
    .local v13, "leftInset":I
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 297
    .local v9, "topInset":I
    iget-object v4, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    add-int v5, v13, v22

    add-int v6, v9, v23

    invoke-virtual {v4, v13, v9, v5, v6}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 300
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v8, v4, Landroid/util/DisplayMetrics;->density:F

    .line 301
    .local v8, "density":F
    iget v7, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v4, v21

    move v5, v15

    move v6, v14

    move/from16 v16, v7

    move v7, v3

    move/from16 v24, v8

    .end local v8    # "density":F
    .local v24, "density":F
    move/from16 v8, v16

    move/from16 v25, v9

    .end local v9    # "topInset":I
    .local v25, "topInset":I
    move-object/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v24

    float-to-int v4, v4

    iput v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 303
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v4, v21

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v24

    float-to-int v4, v4

    iput v4, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 305
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    .line 306
    .local v4, "rotationContext":Landroid/content/Context;
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 307
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v17

    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_5

    move/from16 v18, v11

    goto :goto_6

    :cond_5
    move/from16 v18, v10

    :goto_6
    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v9, v13

    .end local v13    # "leftInset":I
    .local v9, "leftInset":I
    move-object v13, v6

    move v10, v14

    .end local v14    # "dh":I
    .local v10, "dh":I
    move-object v14, v7

    move v7, v15

    .end local v15    # "dw":I
    .local v7, "dw":I
    move/from16 v16, v10

    move-object/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    aput-object v6, v5, v3

    .line 274
    .end local v4    # "rotationContext":Landroid/content/Context;
    .end local v7    # "dw":I
    .end local v9    # "leftInset":I
    .end local v10    # "dh":I
    .end local v12    # "rotated":Z
    .end local v20    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v21    # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v22    # "appWidth":I
    .end local v23    # "appHeight":I
    .end local v24    # "density":F
    .end local v25    # "topInset":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 310
    .end local v3    # "rotation":I
    :cond_6
    return-void
.end method

.method private isAnimationMaximizing()Z
    .locals 2

    .line 887
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isDockSideAllowed(IIIZ)Z
    .locals 3
    .param p0, "dockSide"    # I
    .param p1, "originalDockSide"    # I
    .param p2, "navBarPosition"    # I
    .param p3, "navigationBarCanMove"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 483
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 484
    return v1

    .line 487
    :cond_0
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 489
    if-ne p0, v1, :cond_1

    if-eq p2, v0, :cond_3

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    .line 494
    :cond_4
    if-ne p0, p1, :cond_5

    .line 495
    return v1

    .line 499
    :cond_5
    if-ne p0, v1, :cond_6

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1
.end method

.method private isWithinDisplay(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private loadDimens()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 314
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    .line 316
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    .line 318
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 319
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 318
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    .line 320
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050218

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    .line 322
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    .line 323
    return-void
.end method

.method private notifyAdjustedForImeChanged(ZJ)V
    .locals 6
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 601
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 602
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 604
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    goto :goto_1

    .line 605
    :catch_0
    move-exception v3

    .line 606
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering adjusted for ime changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 610
    return-void
.end method

.method private notifyDockedDividerVisibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 455
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 458
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_1

    .line 459
    :catch_0
    move-exception v3

    .line 460
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering divider visibility changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 464
    return-void
.end method

.method private notifyDockedStackMinimizedChanged(ZZZ)V
    .locals 8
    .param p1, "minimizedDock"    # Z
    .param p2, "animate"    # Z
    .param p3, "isHomeStackResizable"    # Z

    .line 560
    const-wide/16 v0, 0x0

    .line 561
    .local v0, "animDuration":J
    if-eqz p2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 563
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 564
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    move-result-wide v3

    goto :goto_0

    .line 566
    :cond_0
    const-wide/16 v3, 0x150

    :goto_0
    nop

    .line 567
    .local v3, "transitionDuration":J
    long-to-float v5, v3

    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 568
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 569
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    .line 570
    iget-wide v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    mul-float/2addr v5, v6

    float-to-long v0, v5

    .line 572
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "transitionDuration":J
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    .line 573
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 574
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 575
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/IDockedStackListener;

    .line 577
    .local v4, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v4, p1, v0, v1, p3}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    goto :goto_2

    .line 579
    :catch_0
    move-exception v5

    .line 580
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "Error delivering minimized dock changed event."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v4    # "listener":Landroid/view/IDockedStackListener;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 583
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 584
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 364
    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .locals 6
    .param p1, "minimizedDock"    # Z
    .param p2, "animate"    # Z

    .line 755
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 756
    .local v0, "wasMinimized":Z
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 757
    if-ne p1, v0, :cond_0

    .line 758
    return-void

    .line 761
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()Z

    move-result v1

    .line 762
    .local v1, "imeChanged":Z
    const/4 v2, 0x0

    .line 763
    .local v2, "minimizedChange":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 764
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 766
    const/4 v2, 0x1

    goto :goto_0

    .line 768
    :cond_1
    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 769
    if-eqz p2, :cond_2

    .line 770
    invoke-direct {p0, v3, v5}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_0

    .line 772
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 775
    :cond_3
    if-eqz p2, :cond_4

    .line 776
    invoke-direct {p0, v5, v3}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_0

    .line 778
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 782
    :goto_0
    if-nez v1, :cond_5

    if-eqz v2, :cond_7

    .line 783
    :cond_5
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " minimizedChange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 790
    :cond_7
    return-void
.end method

.method private setMinimizedDockedStack(Z)Z
    .locals 3
    .param p1, "minimized"    # Z

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 882
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 883
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private startAdjustAnimation(FF)V
    .locals 1
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 801
    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 802
    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 803
    return-void
.end method

.method private startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "imeWin"    # Lcom/android/server/wm/WindowState;

    .line 811
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 812
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 813
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 814
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 815
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    goto :goto_2

    .line 817
    :cond_2
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 818
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 820
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 821
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 822
    if-eqz p1, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 823
    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 825
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->beginImeAdjustAnimation()V

    .line 829
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 830
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 831
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 833
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 834
    if-eqz p3, :cond_6

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    .line 838
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->endDelayingAnimationStart()V

    .line 840
    :cond_5
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    .line 841
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->startDelayingAnimationStart()V

    .line 848
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 849
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 851
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DockedStackDividerController$5bA1vUPZ2WAWRKwBSEsFIfWUu9o;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DockedStackDividerController$5bA1vUPZ2WAWRKwBSEsFIfWUu9o;-><init>(Lcom/android/server/wm/DockedStackDividerController;ZZ)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    goto :goto_6

    .line 875
    :cond_8
    if-nez p1, :cond_a

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    move v0, v3

    :cond_a
    :goto_5
    const-wide/16 v1, 0x118

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 878
    :goto_6
    return-void
.end method

.method private wasVisible()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    return v0
.end method


# virtual methods
.method public animate(J)Z
    .locals 2
    .param p1, "now"    # J

    .line 891
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 892
    return v1

    .line 894
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_1

    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    move-result v0

    return v0

    .line 896
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 900
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    move-result v0

    return v0

    .line 902
    :cond_2
    return v1
.end method

.method canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "dockSide"    # I
    .param p2, "parentRect"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 475
    .local v0, "policy":Lcom/android/server/wm/DisplayPolicy;
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 476
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v2

    .line 477
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v3

    .line 475
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->isDockSideAllowed(IIIZ)Z

    move-result v1

    return v1
.end method

.method checkMinimizeChanged(Z)V
    .locals 9
    .param p1, "animate"    # Z

    .line 710
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 711
    return-void

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 714
    .local v0, "homeStack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_1

    .line 715
    return-void

    .line 717
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 718
    .local v1, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_a

    invoke-direct {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_4

    .line 724
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    if-eqz v2, :cond_3

    .line 725
    return-void

    .line 727
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 729
    .local v2, "topSecondaryStack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    .line 730
    .local v3, "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 731
    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController;->isSplitScreenMinimized()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_0

    :cond_4
    move v6, v5

    .line 732
    .local v6, "minimizedForRecentsAnimation":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_1

    :cond_5
    move v7, v5

    .line 733
    .local v7, "homeVisible":Z
    :goto_1
    if-eqz v7, :cond_7

    if-eqz v2, :cond_7

    .line 736
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v8

    if-ltz v8, :cond_6

    move v8, v4

    goto :goto_2

    :cond_6
    move v8, v5

    :goto_2
    move v7, v8

    .line 738
    :cond_7
    if-nez v7, :cond_9

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :cond_9
    :goto_3
    invoke-direct {p0, v4, p1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 739
    return-void

    .line 719
    .end local v2    # "topSecondaryStack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    .end local v6    # "minimizedForRecentsAnimation":Z
    .end local v7    # "homeVisible":Z
    :cond_a
    :goto_4
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DockedStackDividerController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinimizedDock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAdjustedForIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAdjustedForDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method getContentInsets()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    return v0
.end method

.method getContentWidth()I
    .locals 2

    .line 334
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method getContentWidthInactive()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    return v0
.end method

.method getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "displayRect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I
    .param p4, "rotation"    # I

    .line 208
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 210
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 211
    .local v1, "diff":I
    if-lez v1, :cond_0

    .line 212
    return v0

    .line 213
    :cond_0
    const/4 v2, 0x4

    if-gez v1, :cond_1

    .line 214
    return v2

    .line 216
    :cond_1
    invoke-virtual {p0, v0, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    goto :goto_0

    :cond_2
    move v0, v2

    .line 216
    :goto_0
    return v0

    .line 218
    .end local v1    # "diff":I
    :cond_3
    if-ne p3, v0, :cond_7

    .line 220
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 221
    .local v0, "diff":I
    if-lez v0, :cond_4

    .line 222
    return v1

    .line 223
    :cond_4
    const/4 v2, 0x3

    if-gez v0, :cond_5

    .line 224
    return v2

    .line 226
    :cond_5
    invoke-virtual {p0, v1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 227
    goto :goto_1

    :cond_6
    move v1, v2

    .line 226
    :goto_1
    return v1

    .line 229
    .end local v0    # "diff":I
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method getHomeStackBoundsInDockedMode(Landroid/content/res/Configuration;ILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "parentConfig"    # Landroid/content/res/Configuration;
    .param p2, "dockSide"    # I
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 234
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 235
    .local v7, "displayWidth":I
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 236
    .local v8, "displayHeight":I
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 237
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 236
    move v3, v7

    move v4, v8

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 239
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 242
    .local v1, "dividerSize":I
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 243
    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    invoke-virtual {p3, v3, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 248
    :cond_0
    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr v2, v1

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    .line 249
    .local v2, "primaryTaskWidth":I
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 250
    .local v5, "left":I
    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v6, v7, v6

    .line 251
    .local v6, "right":I
    if-ne p2, v4, :cond_1

    .line 252
    add-int/2addr v5, v2

    goto :goto_0

    .line 253
    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_2

    .line 254
    sub-int/2addr v6, v2

    .line 256
    :cond_2
    :goto_0
    invoke-virtual {p3, v5, v3, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    .end local v2    # "primaryTaskWidth":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    :goto_1
    return-void
.end method

.method getImeHeightAdjustedFor()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    return v0
.end method

.method getInterpolatedAnimationValue(F)F
    .locals 3
    .param p1, "t"    # F

    .line 955
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method getInterpolatedDividerValue(F)F
    .locals 3
    .param p1, "t"    # F

    .line 959
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .locals 22
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 160
    .local v1, "di":Landroid/view/DisplayInfo;
    iget-object v2, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 161
    .local v2, "baseDisplayWidth":I
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 162
    .local v3, "baseDisplayHeight":I
    const v4, 0x7fffffff

    .line 166
    .local v4, "minWidth":I
    const/4 v5, 0x0

    .local v5, "rotation":I
    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    .line 167
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 169
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    const/4 v8, 0x3

    if-ne v5, v8, :cond_0

    goto :goto_1

    :cond_0
    move v8, v6

    goto :goto_2

    :cond_1
    :goto_1
    move v8, v7

    :goto_2
    move v13, v8

    .line 170
    .local v13, "rotated":Z
    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 171
    if-eqz v13, :cond_2

    move v9, v3

    goto :goto_3

    :cond_2
    move v9, v2

    .line 172
    :goto_3
    if-eqz v13, :cond_3

    move v10, v2

    goto :goto_4

    :cond_3
    move v10, v3

    .line 170
    :goto_4
    invoke-virtual {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gt v6, v8, :cond_4

    .line 174
    goto :goto_5

    .line 175
    :cond_4
    const/4 v7, 0x2

    :goto_5
    move v14, v7

    .line 176
    .local v14, "orientation":I
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v7, v14, v5}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result v11

    .line 177
    .local v11, "dockSide":I
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v7

    .line 177
    invoke-static {v6, v11, v7}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v10

    .line 180
    .local v10, "position":I
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v6

    .line 181
    invoke-virtual {v6}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v21

    .line 185
    .local v21, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    aget-object v6, v6, v5

    .line 186
    invoke-virtual {v6, v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v6

    iget v9, v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 187
    .local v9, "snappedPosition":I
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v18

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v20

    .line 187
    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v6

    invoke-static/range {v15 .. v20}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 189
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 189
    move-object/from16 v16, v7

    move v7, v5

    move/from16 v17, v9

    .end local v9    # "snappedPosition":I
    .local v17, "snappedPosition":I
    move v9, v15

    move v15, v10

    .end local v10    # "position":I
    .local v15, "position":I
    move-object/from16 v10, v21

    move/from16 v18, v11

    .end local v11    # "dockSide":I
    .local v18, "dockSide":I
    move-object/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 191
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 192
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 166
    .end local v13    # "rotated":Z
    .end local v14    # "orientation":I
    .end local v15    # "position":I
    .end local v17    # "snappedPosition":I
    .end local v18    # "dockSide":I
    .end local v21    # "displayCutout":Landroid/view/DisplayCutout;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v12, p1

    .line 194
    .end local v5    # "rotation":I
    int-to-float v5, v4

    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    return v5
.end method

.method getTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRegion"    # Landroid/graphics/Rect;

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 359
    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method isHomeStackResizable()Z
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 262
    .local v0, "homeStack":Lcom/android/server/wm/TaskStack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 263
    return v1

    .line 265
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 266
    .local v2, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isImeHideRequested()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    return v0
.end method

.method isMinimizedDock()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    return v0
.end method

.method isResizing()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    return v0
.end method

.method public synthetic lambda$startImeAdjustAnimation$0$DockedStackDividerController(ZZ)V
    .locals 7
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 853
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 854
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->endDelayingAnimationStart()V

    .line 859
    :cond_0
    const-wide/16 v2, 0x0

    .line 860
    .local v2, "duration":J
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v4, p1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-ne v4, p2, :cond_1

    .line 862
    const-wide/16 v2, 0x118

    goto :goto_0

    .line 864
    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IME adjust changed while waiting for drawn: adjustedForIme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " adjustedForDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mAdjustedForIme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mAdjustedForDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 872
    .end local v2    # "duration":J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 873
    return-void

    .line 872
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyAppTransitionStarting(Landroid/util/ArraySet;I)V
    .locals 3
    .param p2, "appTransition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    .line 671
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 672
    .local v0, "wasMinimized":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 680
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->containsAppInDockedStack(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 682
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 683
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isRecentsComponentHomeActivity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 690
    :cond_1
    :goto_0
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .locals 1

    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 668
    return-void
.end method

.method notifyDockSideChanged(I)V
    .locals 6
    .param p1, "newDockSide"    # I

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 588
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 589
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 591
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    goto :goto_1

    .line 592
    :catch_0
    move-exception v3

    .line 593
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering dock side changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 597
    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .locals 6
    .param p1, "exists"    # Z

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 505
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 508
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    goto :goto_1

    .line 509
    :catch_0
    move-exception v3

    .line 510
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering docked stack exists changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 514
    if-eqz p1, :cond_2

    .line 515
    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 516
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 517
    .local v1, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v1, :cond_1

    .line 521
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 522
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 528
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 529
    return-void

    .line 531
    .end local v1    # "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 532
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 534
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_3

    .line 535
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 538
    :cond_3
    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 327
    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 420
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 427
    return-void

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 431
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    .line 432
    .local v1, "side":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 446
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    goto :goto_0

    .line 438
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 439
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v5, v6

    .line 438
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 440
    goto :goto_0

    .line 434
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 434
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 436
    nop

    .line 450
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 451
    return-void
.end method

.method reevaluateVisibility(Z)V
    .locals 4
    .param p1, "force"    # Z

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    .line 373
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 378
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 379
    .local v2, "visible":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    if-ne v3, v2, :cond_2

    if-nez p1, :cond_2

    .line 380
    return-void

    .line 382
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 383
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 384
    if-nez v2, :cond_3

    .line 385
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v1, v3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 387
    :cond_3
    return-void
.end method

.method registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 614
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 615
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 616
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 615
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 617
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 618
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v2

    .line 617
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 619
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 621
    return-void
.end method

.method resetImeHideRequested()V
    .locals 1

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 545
    return-void
.end method

.method setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "animate"    # Z
    .param p4, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p5, "imeHeight"    # I

    .line 396
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    if-ne v0, p5, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eq v0, p2, :cond_5

    .line 398
    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-nez v1, :cond_2

    .line 401
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v2

    .line 401
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 403
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    goto :goto_0

    .line 406
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 408
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    .line 409
    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    .line 410
    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 412
    :cond_5
    return-void
.end method

.method setResizeDimLayer(ZIF)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "targetWindowingMode"    # I
    .param p3, "alpha"    # F

    .line 631
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_0

    .line 633
    :cond_0
    move-object v1, v0

    :goto_0
    nop

    .line 634
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 635
    .local v2, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 639
    .local v3, "visibleAndValid":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_2

    if-eq v4, v1, :cond_2

    .line 640
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 641
    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 644
    :cond_2
    if-eqz v3, :cond_3

    .line 645
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 646
    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->dim(F)V

    .line 648
    :cond_3
    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    .line 649
    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 650
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 652
    :cond_4
    return-void
.end method

.method setResizing(Z)V
    .locals 1
    .param p1, "resizing"    # Z

    .line 346
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    if-eq v0, p1, :cond_0

    .line 347
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    .line 348
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    .line 350
    :cond_0
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 354
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .line 367
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 369
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .line 1011
    const-string v0, "WindowManager"

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1027
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1028
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1029
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1030
    return-void
.end method
