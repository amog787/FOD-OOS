.class public Lcom/android/server/wm/TaskStack;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/server/wm/BoundsAnimationTarget;
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/Task;",
        ">;",
        "Lcom/android/server/wm/BoundsAnimationTarget;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_STACK_FRACTION_MIN:F = 0.3f

.field private static final IME_ADJUST_DIM_AMOUNT:F = 0.25f


# instance fields
.field mActivityStack:Lcom/android/server/wm/ActivityStack;

.field private mAdjustDividerAmount:F

.field private mAdjustImeAmount:F

.field private final mAdjustedBounds:Landroid/graphics/Rect;

.field private mAdjustedForIme:Z

.field private final mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

.field private mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

.field private mAnimationBackgroundSurfaceIsShown:Z

.field private mAnimationType:I
    .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
    .end annotation
.end field

.field private mBoundsAnimating:Z

.field private mBoundsAnimatingRequested:Z

.field private mBoundsAnimatingToFullscreen:Z

.field private mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

.field private mBoundsAnimationTarget:Landroid/graphics/Rect;

.field private mCancelCurrentBoundsAnimation:Z

.field mDeferRemoval:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mDockedStackMinimizeThickness:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field private mMinimizeAmount:F

.field mPreAnimationBounds:Landroid/graphics/Rect;

.field final mStackId:I

.field private final mTmpAdjustedBounds:Landroid/graphics/Rect;

.field final mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private mTmpFromBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRect3:Landroid/graphics/Rect;

.field private mTmpToBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I
    .param p3, "activityStack"    # Lcom/android/server/wm/ActivityStack;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 121
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 122
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 140
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .line 152
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 161
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 163
    new-instance v0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 168
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 169
    iput-object p3, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    .line 170
    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActivityStack;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 171
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    .line 173
    const/16 v0, 0x791c

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 174
    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .locals 18
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;

    .line 1190
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1191
    return v2

    .line 1194
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    .line 1195
    .local v1, "dockedSide":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 1196
    .local v5, "dockedTopOrBottom":Z
    :goto_1
    if-eqz p1, :cond_6

    if-nez v5, :cond_3

    move/from16 v16, v1

    goto/16 :goto_3

    .line 1200
    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 1201
    .local v2, "displayStableRect":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 1204
    .local v6, "contentBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 1205
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1206
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1208
    .local v7, "imeTop":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    .line 1209
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    if-le v8, v7, :cond_4

    .line 1210
    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1213
    :cond_4
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 1215
    .local v8, "yOffset":I
    nop

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v9}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v9

    .line 1217
    .local v9, "dividerWidth":I
    nop

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v10}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    move-result v10

    .line 1220
    .local v10, "dividerWidthInactive":I
    if-ne v1, v4, :cond_5

    .line 1224
    nop

    .line 1225
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v4

    .line 1226
    .local v4, "minTopStackBottom":I
    nop

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v8

    add-int/2addr v11, v9

    sub-int/2addr v11, v10

    .line 1226
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1229
    .local v11, "bottom":I
    iget-object v12, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1230
    iget-object v12, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v13, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    int-to-float v14, v11

    mul-float/2addr v14, v13

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v13

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    mul-float/2addr v15, v13

    add-float/2addr v14, v15

    float-to-int v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 1232
    iget-object v12, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1233
    .end local v4    # "minTopStackBottom":I
    .end local v11    # "bottom":I
    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_2

    .line 1235
    :cond_5
    sub-int v4, v10, v9

    .line 1242
    .local v4, "dividerWidthDelta":I
    nop

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v9

    add-int/2addr v11, v10

    .line 1244
    .local v11, "topBeforeImeAdjust":I
    nop

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v9

    .line 1245
    invoke-virtual {v0, v2, v12}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v12

    .line 1247
    .local v12, "minTopStackBottom":I
    nop

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int v14, v12, v10

    .line 1247
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1250
    .local v13, "top":I
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1254
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v16, v1

    .end local v1    # "dockedSide":I
    .local v16, "dockedSide":I
    sub-int v1, v13, v11

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    move-object/from16 v17, v2

    .end local v2    # "displayStableRect":Landroid/graphics/Rect;
    .local v17, "displayStableRect":Landroid/graphics/Rect;
    int-to-float v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    add-int/2addr v15, v1

    iput v15, v14, Landroid/graphics/Rect;->top:I

    .line 1257
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1258
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v13

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1261
    .end local v4    # "dividerWidthDelta":I
    .end local v11    # "topBeforeImeAdjust":I
    .end local v12    # "minTopStackBottom":I
    .end local v13    # "top":I
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 1196
    .end local v6    # "contentBounds":Landroid/graphics/Rect;
    .end local v7    # "imeTop":I
    .end local v8    # "yOffset":I
    .end local v9    # "dividerWidth":I
    .end local v10    # "dividerWidthInactive":I
    .end local v16    # "dockedSide":I
    .end local v17    # "displayStableRect":Landroid/graphics/Rect;
    .restart local v1    # "dockedSide":I
    :cond_6
    move/from16 v16, v1

    .line 1197
    .end local v1    # "dockedSide":I
    .restart local v16    # "dockedSide":I
    :goto_3
    return v2
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .locals 7
    .param p1, "minimizeAmount"    # F

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1266
    .local v0, "dockSide":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1267
    return v1

    .line 1270
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_1

    .line 1271
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v5}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1272
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1273
    .local v1, "topInset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1274
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v4, p1

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 1276
    .end local v1    # "topInset":I
    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 1277
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1279
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, p1

    .line 1281
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 1282
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .end local v1    # "width":I
    goto :goto_0

    .line 1283
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1284
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1285
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v4, p1

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1283
    :cond_3
    :goto_0
    nop

    .line 1289
    :goto_1
    return v3
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "adjustedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"    # Landroid/graphics/Rect;

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 227
    .local v0, "alignBottom":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "taskNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 229
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 227
    .end local v1    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 231
    .end local v2    # "taskNdx":I
    :cond_2
    return-void
.end method

.method private canSpecifyOrientation()Z
    .locals 4

    .line 1923
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 1924
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getActivityType()I

    move-result v1

    .line 1925
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

.method private computeMaxPosition(I)I
    .locals 3
    .param p1, "maxPosition"    # I

    .line 690
    :goto_0
    if-lez p1, :cond_3

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 692
    .local v0, "tmpTask":Lcom/android/server/wm/Task;
    nop

    .line 693
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 694
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 695
    .local v1, "canShowTmpTask":Z
    :goto_2
    if-nez v1, :cond_2

    .line 696
    goto :goto_3

    .line 698
    :cond_2
    nop

    .end local v0    # "tmpTask":Lcom/android/server/wm/Task;
    .end local v1    # "canShowTmpTask":Z
    add-int/lit8 p1, p1, -0x1

    .line 699
    goto :goto_0

    .line 700
    :cond_3
    :goto_3
    return p1
.end method

.method private computeMinPosition(II)I
    .locals 3
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .line 671
    :goto_0
    if-ge p1, p2, :cond_3

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 673
    .local v0, "tmpTask":Lcom/android/server/wm/Task;
    nop

    .line 674
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 675
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 676
    .local v1, "canShowTmpTask":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 677
    goto :goto_3

    .line 679
    :cond_2
    nop

    .end local v0    # "tmpTask":Lcom/android/server/wm/Task;
    .end local v1    # "canShowTmpTask":Z
    add-int/lit8 p1, p1, 0x1

    .line 680
    goto :goto_0

    .line 681
    :cond_3
    :goto_3
    return p1
.end method

.method private findPositionForTask(Lcom/android/server/wm/Task;IZZ)I
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "targetPosition"    # I
    .param p3, "showForAllUsers"    # Z
    .param p4, "addingNew"    # Z

    .line 640
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 641
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 643
    .local v0, "canShowTask":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 644
    .local v1, "stackSize":I
    const/4 v2, 0x0

    .line 645
    .local v2, "minPosition":I
    if-eqz p4, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v1, -0x1

    .line 647
    .local v3, "maxPosition":I
    :goto_2
    if-eqz v0, :cond_3

    .line 648
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    move-result v2

    goto :goto_3

    .line 650
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    move-result v3

    .line 654
    :goto_3
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_4

    if-nez v2, :cond_4

    .line 655
    return v4

    .line 656
    :cond_4
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_6

    .line 657
    if-eqz p4, :cond_5

    move v5, v1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v1, -0x1

    :goto_4
    if-ne v3, v5, :cond_6

    .line 658
    return v4

    .line 661
    :cond_6
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 1470
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1471
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1472
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 1470
    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result v0

    return v0
.end method

.method private getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .locals 19
    .param p1, "parentConfig"    # Landroid/content/res/Configuration;
    .param p2, "primary"    # Z
    .param p3, "outBounds"    # Landroid/graphics/Rect;
    .param p4, "dockedBounds"    # Landroid/graphics/Rect;
    .param p5, "dockDividerWidth"    # I
    .param p6, "dockOnTopOrLeft"    # Z

    .line 913
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 914
    .local v11, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    move v12, v4

    .line 916
    .local v12, "splitHorizontally":Z
    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 917
    if-eqz p2, :cond_6

    .line 918
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    .line 919
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 920
    return-void

    .line 926
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget-object v10, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 927
    .local v10, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 928
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v14

    .line 929
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v16

    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 927
    move-object/from16 v17, v10

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 930
    new-instance v13, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 931
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 932
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_2

    move v14, v7

    goto :goto_1

    :cond_2
    move v14, v6

    :goto_1
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move-object v4, v13

    move v6, v8

    move v7, v9

    move/from16 v8, p5

    move v9, v14

    move-object v14, v10

    .end local v10    # "displayCutout":Landroid/view/DisplayCutout;
    .local v14, "displayCutout":Landroid/view/DisplayCutout;
    move-object v10, v15

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 935
    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 937
    .local v4, "position":I
    if-eqz p6, :cond_4

    .line 938
    if-eqz v12, :cond_3

    .line 939
    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 941
    :cond_3
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 944
    :cond_4
    if-eqz v12, :cond_5

    .line 945
    add-int v5, v4, p5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 947
    :cond_5
    add-int v5, v4, p5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 950
    :goto_2
    return-void

    .line 954
    .end local v4    # "position":I
    .end local v14    # "displayCutout":Landroid/view/DisplayCutout;
    :cond_6
    if-nez p6, :cond_8

    .line 955
    if-eqz v12, :cond_7

    .line 956
    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, p5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 958
    :cond_7
    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, p5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 961
    :cond_8
    if-eqz v12, :cond_9

    .line 962
    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int v4, v4, p5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 964
    :cond_9
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, p5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 967
    :goto_3
    xor-int/lit8 v4, p6, 0x1

    invoke-static {v2, v4}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 968
    return-void
.end method

.method private hideAnimationSurface()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 253
    return-void
.end method

.method private isMinimizedDockAndHomeStackResizable()Z
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1294
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1293
    :goto_0
    return v0
.end method

.method static synthetic lambda$onAnimationStart$2(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 1615
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$1(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 753
    return-void
.end method

.method private positionChildAt(ILcom/android/server/wm/Task;ZZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/Task;
    .param p3, "includingParents"    # Z
    .param p4, "showForAllUsers"    # Z

    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p4, v0}, Lcom/android/server/wm/TaskStack;->findPositionForTask(Lcom/android/server/wm/Task;IZZ)I

    move-result v1

    .line 611
    .local v1, "targetPosition":I
    invoke-super {p0, v1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 614
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v2, :cond_0

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positionTask: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 618
    .local v2, "toTop":I
    :goto_0
    const/16 v4, 0x791a

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 619
    return-void
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 203
    .local v0, "adjusted":Z
    const/4 v1, 0x0

    .line 204
    .local v1, "insetBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 206
    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_3

    .line 207
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 213
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 214
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 216
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 217
    return-void
.end method

.method private setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p2, "destBounds"    # Landroid/graphics/Rect;
    .param p3, "toFullscreen"    # Z

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 325
    iput-boolean p3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 326
    if-eqz p2, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 331
    :goto_0
    if-eqz p1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 333
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 341
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 342
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "existing"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 272
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskStack;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_0
    invoke-super {p0, p2}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 278
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAnimationBackgroundBounds()V

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 285
    return v0
.end method

.method private showAnimationSurface(F)V
    .locals 3
    .param p1, "alpha"    # F

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 260
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 263
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 264
    return-void
.end method

.method private updateAdjustedBounds()V
    .locals 6

    .line 1321
    const/4 v0, 0x0

    .line 1322
    .local v0, "adjust":Z
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1323
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    move-result v0

    goto :goto_0

    .line 1324
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v1, :cond_1

    .line 1325
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 1327
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1328
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1330
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    .line 1332
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1333
    .local v1, "isImeTarget":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 1334
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    .line 1336
    .local v3, "alpha":F
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    .line 1338
    .end local v3    # "alpha":F
    :cond_4
    return-void
.end method

.method private updateAnimationBackgroundBounds()V
    .locals 6

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 239
    .local v0, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 240
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 241
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 244
    return-void
.end method

.method private updateSurfaceBounds()V
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateSurfacePosition()V

    .line 761
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 762
    return-void
.end method

.method private updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 791
    return-void

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 795
    .local v0, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 796
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 798
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v3

    .line 799
    .local v3, "outset":I
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    .line 800
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    .line 802
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_1

    .line 803
    return-void

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 807
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 809
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v4, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 811
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 812
    return-void
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;I)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I

    .line 525
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 526
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;IZZ)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "showForAllUsers"    # Z
    .param p4, "moveParents"    # Z

    .line 537
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 540
    .local v0, "currentStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but it is already attached to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_1
    :goto_0
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 548
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 551
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 552
    return-void
.end method

.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .locals 19
    .param p1, "toBounds"    # Landroid/graphics/Rect;
    .param p2, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p3, "animationDuration"    # I
    .param p4, "fromFullscreen"    # Z

    .line 1717
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1718
    return-void

    .line 1721
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 1722
    .local v11, "fromBounds":Landroid/graphics/Rect;
    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1725
    const/4 v0, 0x0

    .line 1727
    .local v0, "schedulePipModeChangedState":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    move v12, v3

    .line 1728
    .local v12, "toFullscreen":Z
    if-eqz v12, :cond_4

    .line 1729
    if-nez p4, :cond_3

    .line 1733
    const/4 v0, 0x1

    .line 1735
    iget-object v3, v10, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v10, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v2, v4}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 1737
    iget-object v3, v10, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1739
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v10, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move v14, v0

    move-object v13, v3

    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .local v3, "toBounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 1742
    .end local v3    # "toBounds":Landroid/graphics/Rect;
    .restart local p1    # "toBounds":Landroid/graphics/Rect;
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1743
    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .restart local v3    # "toBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    move v14, v0

    move-object v13, v3

    goto :goto_1

    .line 1730
    .end local v3    # "toBounds":Landroid/graphics/Rect;
    .restart local p1    # "toBounds":Landroid/graphics/Rect;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Should not defer scheduling PiP mode change on animation to fullscreen."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1745
    :cond_4
    if-eqz p4, :cond_5

    .line 1746
    const/4 v0, 0x2

    move-object/from16 v13, p1

    move v14, v0

    goto :goto_1

    .line 1745
    :cond_5
    move-object/from16 v13, p1

    move v14, v0

    .line 1749
    .end local v0    # "schedulePipModeChangedState":I
    .end local p1    # "toBounds":Landroid/graphics/Rect;
    .local v13, "toBounds":Landroid/graphics/Rect;
    .local v14, "schedulePipModeChangedState":I
    :goto_1
    move-object/from16 v15, p2

    invoke-direct {v10, v15, v13, v12}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1751
    move-object v4, v13

    .line 1752
    .local v4, "finalToBounds":Landroid/graphics/Rect;
    move v6, v14

    .line 1754
    .local v6, "finalSchedulePipModeChangedState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 1755
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 1756
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->getAnimationType()I

    move-result v0

    .line 1757
    .local v0, "intendedAnimationType":I
    if-ne v0, v2, :cond_7

    .line 1758
    if-eqz p4, :cond_6

    .line 1759
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/android/server/wm/TaskStack;->setPinnedStackAlpha(F)Z

    .line 1761
    :cond_6
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 1762
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 1763
    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_2

    .line 1767
    :cond_7
    move/from16 v16, v0

    .end local v0    # "intendedAnimationType":I
    .local v16, "intendedAnimationType":I
    :goto_2
    move/from16 v9, v16

    .line 1768
    .local v9, "animationType":I
    iput-boolean v1, v10, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 1769
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v5, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v11

    move-object v10, v5

    move/from16 v5, p3

    move-object/from16 v17, v11

    move-object v11, v7

    .end local v11    # "fromBounds":Landroid/graphics/Rect;
    .local v17, "fromBounds":Landroid/graphics/Rect;
    move/from16 v7, p4

    move-object/from16 v18, v8

    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v18, "displayContent":Lcom/android/server/wm/DisplayContent;
    move v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;-><init>(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V

    invoke-virtual {v11, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1774
    return-void
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1341
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1345
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 1346
    .local v0, "insetBounds":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1347
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1348
    return-void

    .line 1342
    .end local v0    # "insetBounds":Landroid/graphics/Rect;
    :cond_3
    :goto_2
    return-void
.end method

.method beginImeAdjustAnimation()V
    .locals 4

    .line 1162
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1163
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1164
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1165
    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1166
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->setWaitingForDrawnIfResizingChanged()V

    .line 1162
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1169
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method calculateDockedBoundsForConfigChange(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "parentConfig"    # Landroid/content/res/Configuration;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 430
    nop

    .line 431
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRequestedOverrideWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 432
    .local v0, "primary":Z
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/TaskStack;->repositionSplitScreenStackAfterRotation(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V

    .line 433
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 434
    .local v3, "cutout":Landroid/view/DisplayCutout;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/content/res/Configuration;Landroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 435
    if-eqz v0, :cond_3

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v4

    .line 439
    .local v4, "newDockSide":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 440
    if-eq v4, v2, :cond_2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 442
    :cond_1
    move v1, v2

    goto :goto_2

    .line 441
    :cond_2
    :goto_1
    nop

    .line 442
    :goto_2
    const/4 v2, 0x0

    .line 439
    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    .line 446
    .end local v4    # "newDockSide":I
    :cond_3
    return-void
.end method

.method calculatePinnedBoundsForConfigChange(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "animating":Z
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    const/4 v0, 0x1

    .line 391
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 397
    .local v1, "updated":Z
    if-eqz v1, :cond_3

    .line 398
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 402
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 404
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v3}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/-$$Lambda$TaskStack$LbFVWgYTv7giS6WqQc5168AJCDQ;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wm/-$$Lambda$TaskStack$LbFVWgYTv7giS6WqQc5168AJCDQ;-><init>(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 411
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 412
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 414
    :cond_3
    return v1
.end method

.method checkCompleteDeferredRemoval()Z
    .locals 1

    .line 1907
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    const/4 v0, 0x1

    return v0

    .line 1910
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-eqz v0, :cond_1

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 1914
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .locals 2

    .line 1876
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1877
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1879
    :cond_2
    return v1
.end method

.method dim(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 1969
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1971
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDeferRemoval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMinimizeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_1

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustedForIme=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustImeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustDividerAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustedBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1413
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1412
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1415
    .end local v0    # "taskNdx":I
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    if-eqz v0, :cond_4

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWindowAnimationBackgroundSurface is shown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1419
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1420
    const-string v0, "  Exiting application tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 1422
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 1423
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    const-string v2, "  Exiting App #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1424
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1425
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 1426
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1421
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1429
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    const-string v1, "AnimatingApps:"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method endImeAdjustAnimation()V
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1175
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1178
    .end local v0    # "j":I
    :cond_0
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 1434
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    return v0
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0

    .line 178
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "delta"    # I
    .param p4, "results"    # Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1488
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1489
    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1493
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1494
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1495
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1496
    return-void

    .line 1504
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1505
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v4, p3

    neg-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1506
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1507
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 1509
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1511
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1512
    iput-object v2, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 1513
    return-void

    .line 1517
    :cond_2
    return-void

    .line 1492
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1520
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;
    .locals 1

    .line 1979
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 363
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 365
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 368
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    return-object v0

    .line 314
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    return-void
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 373
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDockSide()I
    .locals 2

    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "parentConfig"    # Landroid/content/res/Configuration;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 1463
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    .line 1464
    const/4 v0, -0x1

    return v0

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1459
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 356
    return-void
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .locals 3
    .param p1, "displayContentRect"    # Landroid/graphics/Rect;
    .param p2, "originalStackBottom"    # I

    .line 1181
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMinimizeDistance()I
    .locals 4

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1302
    .local v0, "dockSide":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1303
    return v1

    .line 1306
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1307
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1308
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1309
    .local v1, "topInset":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    return v2

    .line 1310
    .end local v1    # "topInset":I
    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 1313
    :cond_2
    return v1

    .line 1311
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v1, v2

    return v1
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 1443
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation()I
    .locals 1

    .line 1919
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "aspectRatio"    # F
    .param p2, "stackBounds"    # Landroid/graphics/Rect;

    .line 1684
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1685
    return-object v1

    .line 1688
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1689
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_1

    .line 1690
    return-object v1

    .line 1693
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1694
    return-object v1

    .line 1697
    :cond_2
    nop

    .line 1698
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 1699
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    if-nez p2, :cond_3

    .line 1701
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getDefaultOrLastSavedBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 1704
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1705
    const/4 v2, 0x1

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    .line 1708
    :cond_4
    return-object p2
.end method

.method getRawBounds()Landroid/graphics/Rect;
    .locals 1

    .line 297
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 293
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    return-void
.end method

.method getRelativeDisplayedPosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 783
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v0

    .line 785
    .local v0, "outset":I
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 786
    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 787
    return-void
.end method

.method getStackDockedModeBoundsLocked(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "parentConfig"    # Landroid/content/res/Configuration;
    .param p2, "dockedBounds"    # Landroid/graphics/Rect;
    .param p3, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "outStackBounds"    # Landroid/graphics/Rect;
    .param p5, "outTempTaskBounds"    # Landroid/graphics/Rect;

    .line 849
    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 851
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v11, p1

    move-object/from16 v12, p5

    goto/16 :goto_3

    .line 860
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v10

    .line 863
    .local v10, "dockedSide":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 864
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 865
    .local v0, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 869
    move-object v11, p1

    invoke-virtual {v1, p1, v10, v9}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/content/res/Configuration;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 865
    :cond_1
    move-object v11, p1

    .line 873
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 876
    :goto_0
    move-object/from16 v12, p5

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 877
    return-void

    .line 882
    .end local v0    # "homeTask":Lcom/android/server/wm/Task;
    :cond_2
    move-object v11, p1

    move-object/from16 v12, p5

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    .line 883
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 884
    return-void

    .line 887
    :cond_3
    const/4 v2, -0x1

    if-ne v10, v2, :cond_4

    .line 889
    const-string v0, "WindowManager"

    const-string v1, "Failed to get valid docked side for docked stack"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 891
    return-void

    .line 894
    :cond_4
    const/4 v2, 0x2

    if-eq v10, v2, :cond_6

    if-ne v10, v1, :cond_5

    goto :goto_1

    :cond_5
    move v6, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v6, v1

    .line 895
    .local v6, "dockedOnTopOrLeft":Z
    :goto_2
    const/4 v2, 0x0

    iget-object v0, v7, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 897
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    .line 895
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 898
    return-void

    .line 851
    .end local v6    # "dockedOnTopOrLeft":Z
    .end local v10    # "dockedSide":I
    :cond_7
    move-object v11, p1

    move-object/from16 v12, p5

    .line 853
    :goto_3
    iget-object v2, v7, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    if-nez v2, :cond_8

    move v6, v1

    goto :goto_4

    :cond_8
    move v6, v0

    .line 855
    .restart local v6    # "dockedOnTopOrLeft":Z
    :goto_4
    const/4 v2, 0x1

    iget-object v0, v7, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 857
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    .line 855
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 858
    return-void
.end method

.method getStackOutset()I
    .locals 4

    .line 769
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 770
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 775
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 778
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method hasTaskForUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1476
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1478
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, p1, :cond_0

    .line 1479
    return v1

    .line 1476
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1482
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isAdjustedForIme()Z
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    return v0
.end method

.method isAdjustedForMinimizedDockedStack()Z
    .locals 2

    .line 1352
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimatingBounds()Z
    .locals 1

    .line 1887
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .locals 1

    .line 1895
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAnimatingForIme()Z
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

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

    .line 1823
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1824
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1825
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isForceScaled()Z
    .locals 1

    .line 1883
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method isTaskAnimating()Z
    .locals 4

    .line 1360
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1361
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1362
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    return v1

    .line 1360
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1366
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$animateResizePinnedStack$3$TaskStack(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V
    .locals 10
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "fromBounds"    # Landroid/graphics/Rect;
    .param p3, "finalToBounds"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "finalSchedulePipModeChangedState"    # I
    .param p6, "fromFullscreen"    # Z
    .param p7, "toFullscreen"    # Z
    .param p8, "animationType"    # I

    .line 1770
    move-object v0, p1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/BoundsAnimationController;->animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V

    .line 1773
    return-void
.end method

.method public synthetic lambda$calculatePinnedBoundsForConfigChange$0$TaskStack(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 405
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BoundsAnimationController;->cancel(Lcom/android/server/wm/BoundsAnimationTarget;)V

    return-void
.end method

.method public lastAnimatingBoundsWasToFullscreen()Z
    .locals 1

    .line 1891
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method onAllWindowsDrawn()V
    .locals 1

    .line 1591
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_0

    .line 1592
    return-void

    .line 1595
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->onAllWindowsDrawn()V

    .line 1596
    return-void
.end method

.method public onAnimationEnd(ZLandroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "schedulePipModeChangedCallback"    # Z
    .param p2, "finalStackSize"    # Landroid/graphics/Rect;
    .param p3, "moveToFullscreen"    # Z

    .line 1643
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1647
    if-eqz p1, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStack;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1654
    :cond_0
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1655
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setPinnedStackAlpha(F)Z

    .line 1656
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyPinnedStackAnimationEnded()V

    .line 1657
    return-void

    .line 1660
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-nez v0, :cond_2

    .line 1661
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/TaskStack;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1665
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1668
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyPinnedStackAnimationEnded()V

    .line 1669
    if-eqz p3, :cond_4

    .line 1670
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_1

    .line 1674
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1676
    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAnimationStart(ZZI)Z
    .locals 4
    .param p1, "schedulePipModeChangedCallback"    # Z
    .param p2, "forceUpdate"    # Z
    .param p3, "animationType"    # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param

    .line 1602
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1605
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1608
    :cond_0
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 1609
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1610
    iput p3, p0, Lcom/android/server/wm/TaskStack;->mAnimationType:I

    .line 1614
    if-eqz p1, :cond_1

    .line 1615
    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1618
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1620
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1622
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->notifyPinnedStackAnimationStarted()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1625
    goto :goto_0

    .line 1623
    :catch_0
    move-exception v0

    .line 1627
    :goto_0
    if-nez p1, :cond_2

    if-ne p3, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_3

    .line 1633
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/android/server/wm/ActivityStack;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1637
    :cond_3
    return v1

    .line 1618
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 732
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 733
    .local v0, "prevWindowingMode":I
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v1

    .line 739
    .local v1, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v2

    .line 741
    .local v2, "isAlwaysOnTop":Z
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v3, :cond_0

    .line 742
    return-void

    .line 745
    :cond_0
    if-eq v0, v1, :cond_1

    .line 746
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayContent;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 748
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 751
    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 756
    :cond_1
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 821
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onDisplayChanged: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 827
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    .line 829
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation background stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 830
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 833
    :cond_2
    return-void
.end method

.method onParentChanged()V
    .locals 2

    .line 1006
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentChanged()V

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    const/16 v0, 0x791e

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1014
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1015
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 1016
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 1019
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1020
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1021
    return-void

    .line 1009
    :cond_2
    :goto_0
    return-void
.end method

.method public onPipAnimationEndResize()V
    .locals 3

    .line 1832
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1833
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1834
    nop

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1835
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1836
    .local v2, "t":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->clearPreserveNonFloatingState()V

    .line 1834
    .end local v2    # "t":Lcom/android/server/wm/Task;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1838
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1839
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1840
    return-void

    .line 1839
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public pinnedStackResizeDisallowed()Z
    .locals 1

    .line 1899
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v0, :cond_0

    .line 1900
    const/4 v0, 0x1

    return v0

    .line 1902
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/Task;
    .param p3, "includingParents"    # Z

    .line 599
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 600
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 84
    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/Task;I)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I

    .line 555
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionChildAt: positioning task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    if-nez p1, :cond_2

    .line 559
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionChildAt: could not find task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_1
    return-void

    .line 564
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->positionAt(I)V

    .line 565
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 566
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/Task;
    .param p2, "includingParents"    # Z

    .line 584
    if-nez p1, :cond_0

    .line 586
    return-void

    .line 589
    :cond_0
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 591
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 595
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;Z)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/Task;
    .param p2, "includingParents"    # Z

    .line 569
    if-nez p1, :cond_0

    .line 571
    return-void

    .line 574
    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 576
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 577
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 580
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 581
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 186
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    .line 184
    .end local v1    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 188
    .end local v0    # "taskNdx":I
    :cond_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 3

    .line 1938
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 1939
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 1940
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1943
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1944
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1947
    :cond_0
    return-void
.end method

.method removeChild(Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 710
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "appNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 722
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 723
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 724
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 725
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 721
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 728
    .end local v0    # "appNdx":I
    :cond_4
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->removeChild(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method removeIfPossible()V
    .locals 1

    .line 989
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    .line 991
    return-void

    .line 993
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 994
    return-void
.end method

.method removeImmediately()V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1001
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 1002
    return-void
.end method

.method reparent(ILandroid/graphics/Rect;Z)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 623
    .local v0, "targetDc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 628
    invoke-virtual {v0, p0, p3}, Lcom/android/server/wm/DisplayContent;->moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 634
    :goto_0
    return-void

    .line 624
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method repositionSplitScreenStackAfterRotation(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V
    .locals 6
    .param p1, "parentConfig"    # Landroid/content/res/Configuration;
    .param p2, "primary"    # Z
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    .line 459
    .local v0, "dockSide":I
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    .line 460
    .local v1, "otherDockSide":I
    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 461
    .local v2, "primaryDockSide":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 463
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 464
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 462
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    return-void

    .line 467
    :cond_1
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 468
    .local v3, "parentBounds":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 485
    :cond_2
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 486
    .local v4, "movement":I
    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->top:I

    .line 487
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 475
    .end local v4    # "movement":I
    :cond_3
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 476
    .restart local v4    # "movement":I
    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->left:I

    .line 477
    iget v5, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->right:I

    .line 478
    goto :goto_1

    .line 480
    .end local v4    # "movement":I
    :cond_4
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 481
    .restart local v4    # "movement":I
    iget v5, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->top:I

    .line 482
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    .line 483
    goto :goto_1

    .line 470
    .end local v4    # "movement":I
    :cond_5
    iget v4, p3, Landroid/graphics/Rect;->left:I

    .line 471
    .restart local v4    # "movement":I
    iget v5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->left:I

    .line 472
    iget v5, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->right:I

    .line 473
    nop

    .line 490
    .end local v4    # "movement":I
    :goto_1
    return-void
.end method

.method resetAdjustedForIme(Z)V
    .locals 4
    .param p1, "adjustBoundsNow"    # Z

    .line 1120
    if-eqz p1, :cond_1

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1123
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1124
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1125
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-nez v1, :cond_0

    .line 1126
    return-void

    .line 1128
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1129
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1130
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    goto :goto_0

    .line 1132
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1134
    :goto_0
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .line 1024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1025
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->hideAnimationSurface()V

    .line 1026
    return-void
.end method

.method resetDockedStackToMiddle()V
    .locals 9

    .line 971
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 977
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 978
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 979
    .local v7, "tempBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    .line 981
    .local v8, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v8, :cond_1

    if-ne v8, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_1
    :goto_0
    move-object v4, v1

    .line 982
    .local v4, "dockedBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 984
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->requestResize(Landroid/graphics/Rect;)V

    .line 985
    return-void

    .line 972
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "dockedBounds":Landroid/graphics/Rect;
    .end local v7    # "tempBounds":Landroid/graphics/Rect;
    .end local v8    # "dockedStack":Lcom/android/server/wm/TaskStack;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a docked stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V
    .locals 4
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "keepLastAmount"    # Z

    .line 1074
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    .line 1077
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1079
    .local v1, "controller":Lcom/android/server/wm/DockedStackDividerController;
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget v3, v1, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1080
    .local v3, "adjustImeAmount":F
    :goto_0
    if-eqz p2, :cond_2

    iget v2, v1, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 1081
    .local v2, "adjustDividerAmount":F
    :cond_2
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    .line 1083
    .end local v1    # "controller":Lcom/android/server/wm/DockedStackDividerController;
    .end local v2    # "adjustDividerAmount":F
    .end local v3    # "adjustImeAmount":F
    :cond_3
    return-void
.end method

.method setAdjustedForMinimizedDock(F)Z
    .locals 1
    .param p1, "minimizeAmount"    # F

    .line 1143
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1144
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    .line 1145
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    return v0

    .line 1148
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .line 1029
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v0, :cond_2

    .line 1030
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 1039
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 1038
    const-string v1, "com.oneplus.applocker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1040
    .local v0, "isAppLocked":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1041
    const-string v1, "WindowManager"

    const-string v2, "AppLocker: skip setAnimationBackground due to focus locked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1043
    :cond_1
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->showAnimationSurface(F)V

    .line 1047
    .end local v0    # "isAppLocked":Z
    :cond_2
    :goto_1
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
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

    .line 1810
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    .line 1811
    return-void

    .line 1814
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1815
    return-void

    .line 1818
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V

    .line 1819
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .locals 5
    .param p1, "aspectRatio"    # F

    .line 1780
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    .line 1781
    return-void

    .line 1784
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1785
    return-void

    .line 1788
    :cond_1
    nop

    .line 1789
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    .line 1791
    .local v0, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    .line 1792
    return-void

    .line 1794
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 1795
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1796
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskStack;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1797
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1798
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/TaskStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 1801
    :cond_3
    nop

    .line 1802
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1803
    move v1, p1

    goto :goto_0

    :cond_4
    const/high16 v1, -0x40800000    # -1.0f

    .line 1801
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V

    .line 1804
    return-void
.end method

.method public setPinnedStackAlpha(F)Z
    .locals 5
    .param p1, "alpha"    # F

    .line 1952
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1954
    .local v1, "sc":Landroid/view/SurfaceControl;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1958
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v4, p1

    :goto_0
    invoke-virtual {v3, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1959
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1960
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1956
    :cond_3
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1961
    .end local v1    # "sc":Landroid/view/SurfaceControl;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;

    .line 1576
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1577
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v1, :cond_0

    .line 1578
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1580
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1583
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1586
    goto :goto_0

    .line 1584
    :catch_0
    move-exception v0

    .line 1587
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1580
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "focusedTask"    # Lcom/android/server/wm/Task;
    .param p2, "delta"    # I
    .param p3, "touchExcludeRegion"    # Landroid/graphics/Region;
    .param p4, "contentRect"    # Landroid/graphics/Rect;
    .param p5, "postExclude"    # Landroid/graphics/Rect;

    .line 1524
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 1525
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1526
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1527
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1528
    goto :goto_2

    .line 1544
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1545
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1547
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1550
    :goto_1
    if-ne v1, p1, :cond_2

    .line 1553
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1556
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    .line 1557
    .local v3, "isFreeformed":Z
    if-ne v1, p1, :cond_3

    if-eqz v3, :cond_5

    .line 1558
    :cond_3
    if-eqz v3, :cond_4

    .line 1561
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v5, p2

    neg-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 1567
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1569
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1524
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "isFreeformed":Z
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1572
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method public shouldDeferStartOnMoveToFullscreen()Z
    .locals 7

    .line 1844
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1845
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1847
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1855
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1856
    .local v1, "homeStack":Lcom/android/server/wm/TaskStack;
    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 1857
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1859
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1860
    .local v4, "homeTask":Lcom/android/server/wm/Task;
    if-nez v4, :cond_2

    .line 1861
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1863
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 1864
    .local v5, "homeApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_3

    goto :goto_0

    .line 1867
    :cond_3
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_4

    move v2, v3

    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1865
    :cond_5
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1868
    .end local v1    # "homeStack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "homeTask":Lcom/android/server/wm/Task;
    .end local v5    # "homeApp":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldIgnoreInput()Z
    .locals 1

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1153
    :goto_1
    return v0
.end method

.method snapDockedStackAfterRotation(Landroid/content/res/Configuration;Landroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 21
    .param p1, "parentConfig"    # Landroid/content/res/Configuration;
    .param p2, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p3

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v12

    .line 500
    .local v12, "dividerSize":I
    invoke-virtual {v0, v1, v11}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v13

    .line 501
    .local v13, "dockSide":I
    invoke-static {v11, v13, v12}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v14

    .line 503
    .local v14, "dividerPosition":I
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 504
    .local v15, "displayWidth":I
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 507
    .local v16, "displayHeight":I
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v17

    .line 508
    .local v17, "rotation":I
    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    .line 509
    .local v10, "orientation":I
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    move/from16 v3, v17

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 511
    new-instance v18, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 512
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v2, 0x1

    if-ne v10, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v7, v2

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v19

    move-object/from16 v2, v18

    move v4, v15

    move/from16 v5, v16

    move v6, v12

    move-object/from16 v8, p3

    move/from16 v20, v10

    .end local v10    # "orientation":I
    .local v20, "orientation":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V

    move-object/from16 v8, v18

    .line 515
    .local v8, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v8, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    .line 518
    .local v9, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v2, v9, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v3, v13

    move-object/from16 v4, p3

    move v5, v15

    move/from16 v6, v16

    move v7, v12

    invoke-static/range {v2 .. v7}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 521
    return-void
.end method

.method stopDimming()V
    .locals 2

    .line 1974
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    .line 1975
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1976
    return-void
.end method

.method switchUser()V
    .locals 5

    .line 1052
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1054
    .local v0, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1055
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1056
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1057
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1058
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 1059
    add-int/lit8 v0, v0, -0x1

    .line 1054
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    .end local v1    # "taskNdx":I
    :cond_2
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAdjustForIme(FFZ)Z
    .locals 1
    .param p1, "adjustAmount"    # F
    .param p2, "adjustDividerAmount"    # F
    .param p3, "force"    # Z

    .line 1102
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1109
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1104
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1105
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1106
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 1373
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    return-void

    .line 1377
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1378
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1379
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1380
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1381
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/Task;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1380
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1383
    .end local v2    # "taskNdx":I
    :cond_1
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1384
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1385
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1386
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1387
    const-wide v2, 0x10200000008L

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1388
    const-wide v2, 0x10800000009L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1389
    const-wide v2, 0x1020000000aL

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1390
    const-wide v2, 0x1020000000bL

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1391
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1392
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1393
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1394
    return-void
.end method
