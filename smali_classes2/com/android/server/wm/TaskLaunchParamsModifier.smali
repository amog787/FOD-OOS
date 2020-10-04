.class Lcom/android/server/wm/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final BOUNDS_CONFLICT_THRESHOLD:I = 0x4

.field private static final CASCADING_OFFSET_DP:I = 0x4b

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PORTRAIT_PHONE_HEIGHT_DP:I = 0x2dc

.field private static final DEFAULT_PORTRAIT_PHONE_WIDTH_DP:I = 0x19c

.field private static final EPSILON:I = 0x2

.field private static final MINIMAL_STEP:I = 0x1

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final SUPPORTS_SCREEN_RESIZEABLE_MASK:I = 0x83a00

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpDirections:[I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 104
    return-void
.end method

.method private adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v0, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 691
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 692
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    goto :goto_2

    .line 696
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 697
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 690
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 701
    return-void
.end method

.method private adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 634
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 636
    .local v0, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 637
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 650
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    .line 652
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .local v1, "dx":I
    goto :goto_0

    .line 653
    .end local v1    # "dx":I
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_2

    .line 655
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .restart local v1    # "dx":I
    goto :goto_0

    .line 658
    .end local v1    # "dx":I
    :cond_2
    const/4 v1, 0x0

    .line 662
    .restart local v1    # "dx":I
    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    .line 664
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .local v2, "dy":I
    goto :goto_1

    .line 665
    .end local v2    # "dy":I
    :cond_3
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_4

    .line 667
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .restart local v2    # "dy":I
    goto :goto_1

    .line 670
    .end local v2    # "dy":I
    :cond_4
    const/4 v2, 0x0

    .line 672
    .restart local v2    # "dy":I
    :goto_1
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 673
    return-void

    .line 640
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 641
    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 642
    .local v1, "layoutDirection":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6

    .line 643
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_3

    .line 644
    :cond_6
    move v2, v3

    :goto_3
    nop

    .line 645
    .local v2, "left":I
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 646
    return-void
.end method

.method private appendLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .line 860
    return-void
.end method

.method private boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .locals 10
    .param p2, "candidateBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 802
    .local p1, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 803
    .local v1, "taskBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v2

    .line 805
    .local v3, "leftClose":Z
    :goto_1
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    .line 807
    .local v6, "topClose":Z
    :goto_2
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v2

    .line 809
    .local v7, "rightClose":Z
    :goto_3
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v4, :cond_3

    move v2, v5

    .line 812
    .local v2, "bottomClose":Z
    :cond_3
    if-eqz v3, :cond_4

    if-nez v6, :cond_7

    :cond_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_7

    :cond_5
    if-eqz v7, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v7, :cond_8

    if-eqz v2, :cond_8

    .line 814
    :cond_7
    return v5

    .line 816
    .end local v1    # "taskBounds":Landroid/graphics/Rect;
    .end local v2    # "bottomClose":Z
    .end local v3    # "leftClose":Z
    .end local v6    # "topClose":Z
    .end local v7    # "rightClose":Z
    :cond_8
    goto :goto_0

    .line 818
    :cond_9
    return v2
.end method

.method private calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 25
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "phase"    # I
    .param p7, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 129
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    if-eqz v8, :cond_1

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_0
    move-object v15, v0

    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1

    .line 132
    .end local v0    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    move-object/from16 v0, p3

    move-object v15, v0

    .line 139
    .local v15, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    const/4 v0, 0x0

    if-nez v15, :cond_2

    .line 145
    return v0

    .line 149
    :cond_2
    invoke-direct {v7, v8, v11, v10, v13}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getPreferredLaunchDisplay(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v6

    .line 150
    .local v6, "displayId":I
    iput v6, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 151
    iget-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 157
    .local v5, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x2

    if-nez v12, :cond_3

    .line 158
    return v4

    .line 165
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_2

    .line 166
    :cond_4
    move v1, v0

    :goto_2
    nop

    .line 169
    .local v1, "launchMode":I
    const/4 v2, 0x0

    .line 170
    .local v2, "hasInitialBounds":Z
    invoke-direct {v7, v5, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/ActivityDisplay;I)Z

    move-result v16

    .line 171
    .local v16, "canApplyFreeformPolicy":Z
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v16, :cond_5

    .line 172
    invoke-direct {v7, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 173
    :cond_5
    const/4 v2, 0x1

    .line 174
    if-nez v1, :cond_6

    .line 175
    const/4 v3, 0x5

    goto :goto_3

    .line 176
    :cond_6
    move v3, v1

    :goto_3
    move v1, v3

    .line 177
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v20, v2

    goto :goto_5

    .line 179
    :cond_7
    if-ne v1, v4, :cond_8

    goto :goto_4

    .line 182
    :cond_8
    const/4 v0, 0x1

    if-ne v1, v0, :cond_9

    goto :goto_4

    .line 184
    :cond_9
    if-eqz v9, :cond_a

    if-eqz v16, :cond_a

    .line 185
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v15, v9, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 186
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 187
    const/4 v1, 0x5

    .line 188
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    const/4 v0, 0x1

    move/from16 v20, v0

    .end local v2    # "hasInitialBounds":Z
    .local v0, "hasInitialBounds":Z
    goto :goto_5

    .line 207
    .end local v0    # "hasInitialBounds":Z
    .restart local v2    # "hasInitialBounds":Z
    :cond_a
    :goto_4
    move/from16 v20, v2

    .end local v2    # "hasInitialBounds":Z
    .local v20, "hasInitialBounds":Z
    :goto_5
    const/4 v0, 0x0

    .line 211
    .local v0, "fullyResolvedCurrentParam":Z
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v20, :cond_e

    .line 212
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-ne v6, v2, :cond_e

    .line 214
    :cond_b
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 218
    invoke-static {v2}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 221
    iget v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 222
    const/4 v2, 0x5

    if-eq v1, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    move v0, v2

    .line 228
    :cond_d
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 233
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 234
    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    .line 235
    const/4 v0, 0x1

    move/from16 v21, v0

    goto :goto_7

    .line 245
    :cond_e
    move/from16 v21, v0

    .end local v0    # "fullyResolvedCurrentParam":Z
    .local v21, "fullyResolvedCurrentParam":Z
    :goto_7
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 246
    if-ne v1, v4, :cond_f

    goto :goto_8

    .line 248
    :cond_f
    invoke-direct {v7, v15}, Lcom/android/server/wm/TaskLaunchParamsModifier;->isTaskForcedMaximized(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 252
    const/4 v0, 0x1

    .line 253
    .end local v1    # "launchMode":I
    .local v0, "launchMode":I
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    move v3, v0

    goto :goto_9

    .line 260
    .end local v0    # "launchMode":I
    .restart local v1    # "launchMode":I
    :cond_10
    :goto_8
    move v3, v1

    .end local v1    # "launchMode":I
    .local v3, "launchMode":I
    :goto_9
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v0

    if-ne v3, v0, :cond_11

    .line 261
    const/4 v0, 0x0

    goto :goto_a

    :cond_11
    move v0, v3

    :goto_a
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 263
    const/4 v0, 0x1

    if-ne v12, v0, :cond_12

    .line 264
    return v4

    .line 273
    :cond_12
    if-eqz v3, :cond_13

    move v0, v3

    goto :goto_b

    .line 274
    :cond_13
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v0

    :goto_b
    move v2, v0

    .line 275
    .local v2, "resolvedMode":I
    if-eqz v21, :cond_16

    .line 276
    const/4 v0, 0x5

    if-ne v2, v0, :cond_15

    .line 278
    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v0, v6, :cond_14

    .line 279
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 283
    :cond_14
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto :goto_c

    .line 276
    :cond_15
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto :goto_c

    .line 286
    :cond_16
    if-eqz v10, :cond_17

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x5

    if-ne v2, v0, :cond_17

    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 289
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    iget v1, v5, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v0, v1, :cond_17

    .line 291
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v0, v5, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 293
    :cond_17
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object v1, v15

    move/from16 v18, v2

    .end local v2    # "resolvedMode":I
    .local v18, "resolvedMode":I
    move-object v2, v5

    move/from16 v19, v3

    .end local v3    # "launchMode":I
    .local v19, "launchMode":I
    move-object/from16 v3, p2

    move/from16 v22, v4

    move/from16 v4, v18

    move-object/from16 v23, v5

    .end local v5    # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v23, "display":Lcom/android/server/wm/ActivityDisplay;
    move/from16 v5, v20

    move/from16 v24, v6

    .end local v6    # "displayId":I
    .local v24, "displayId":I
    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 296
    :goto_c
    return v22
.end method

.method private calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "availableBounds"    # Landroid/graphics/Rect;
    .param p2, "initialBounds"    # Landroid/graphics/Rect;

    .line 766
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 767
    aput v3, v1, v0

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    .end local v0    # "i":I
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    div-int/2addr v0, v1

    .line 771
    .local v0, "oneThirdWidth":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int/2addr v2, v1

    .line 772
    .local v2, "twoThirdWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 773
    .local v4, "centerX":I
    const/4 v5, 0x5

    if-ge v4, v0, :cond_1

    .line 775
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v1, v3

    .line 776
    return-void

    .line 777
    :cond_1
    if-le v4, v2, :cond_2

    .line 779
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v1, v5, v3

    .line 780
    return-void

    .line 783
    :cond_2
    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v1

    .line 784
    .local v6, "oneThirdHeight":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/2addr v7, v1

    .line 785
    .local v7, "twoThirdHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 786
    .local v8, "centerY":I
    const/4 v9, 0x1

    if-lt v8, v6, :cond_4

    if-le v8, v7, :cond_3

    goto :goto_1

    .line 796
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v5, 0x55

    aput v5, v1, v3

    .line 797
    const/16 v3, 0x33

    aput v3, v1, v9

    .line 798
    return-void

    .line 789
    :cond_4
    :goto_1
    iget-object v10, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v10, v3

    .line 790
    aput v1, v10, v9

    .line 791
    return-void
.end method

.method private canApplyFreeformWindowPolicy(Lcom/android/server/wm/ActivityDisplay;I)Z
    .locals 1
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "launchMode"    # I

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0
.end method

.method private canApplyPipWindowPolicy(I)Z
    .locals 1
    .param p1, "launchMode"    # I

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "srcBounds"    # Landroid/graphics/Rect;
    .param p2, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 480
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 481
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 482
    .local v0, "density":F
    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 484
    .local v1, "defaultOffset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityDisplay;->getBounds(Landroid/graphics/Rect;)V

    .line 485
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 486
    .local v2, "dx":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 487
    .local v3, "dy":I
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 488
    return-void
.end method

.method private centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "inOutBounds"    # Landroid/graphics/Rect;

    .line 624
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityDisplay;->getBounds(Landroid/graphics/Rect;)V

    .line 627
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 628
    .local v0, "left":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    .line 629
    .local v1, "top":I
    add-int v2, v0, p2

    add-int v3, v1, p3

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 630
    return-void
.end method

.method private convertOrientationToScreenOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 547
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 553
    const/4 v0, -0x1

    return v0

    .line 549
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 551
    :cond_1
    return v0
.end method

.method private getDefaultFreeformSize(Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .locals 17
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "orientation"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 588
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 589
    .local v1, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 590
    .local v2, "portraitHeight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 591
    .local v3, "otherDimension":I
    mul-int v4, v2, v2

    div-int/2addr v4, v3

    .line 592
    .local v4, "portraitWidth":I
    if-nez p3, :cond_0

    move v5, v2

    goto :goto_0

    .line 593
    :cond_0
    move v5, v4

    :goto_0
    nop

    .line 594
    .local v5, "defaultWidth":I
    if-nez p3, :cond_1

    move v6, v4

    goto :goto_1

    .line 595
    :cond_1
    move v6, v2

    :goto_1
    nop

    .line 599
    .local v6, "defaultHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    .line 600
    .local v7, "density":F
    const/high16 v8, 0x43ce0000    # 412.0f

    mul-float/2addr v8, v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 601
    .local v8, "phonePortraitWidth":I
    const/high16 v10, 0x44370000    # 732.0f

    mul-float/2addr v10, v7

    add-float/2addr v10, v9

    float-to-int v9, v10

    .line 602
    .local v9, "phonePortraitHeight":I
    if-nez p3, :cond_2

    move v10, v9

    goto :goto_2

    .line 603
    :cond_2
    move v10, v8

    :goto_2
    nop

    .line 604
    .local v10, "phoneWidth":I
    if-nez p3, :cond_3

    move v11, v8

    goto :goto_3

    .line 605
    :cond_3
    move v11, v9

    :goto_3
    nop

    .line 608
    .local v11, "phoneHeight":I
    const/4 v12, -0x1

    if-nez v0, :cond_4

    move v13, v12

    goto :goto_4

    :cond_4
    iget v13, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 609
    .local v13, "layoutMinWidth":I
    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget v12, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 612
    .local v12, "layoutMinHeight":I
    :goto_5
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 613
    .local v14, "width":I
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 615
    .local v15, "height":I
    const/4 v0, 0x0

    move-object/from16 v16, v1

    move-object/from16 v1, p4

    .end local v1    # "displayBounds":Landroid/graphics/Rect;
    .local v16, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v0, v0, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 616
    return-void
.end method

.method private getLayoutBounds(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "outBounds"    # Landroid/graphics/Rect;

    .line 351
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v9, v0, 0x70

    .line 352
    .local v9, "verticalGravity":I
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v10, v0, 0x7

    .line 353
    .local v10, "horizontalGravity":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 354
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 355
    return-void

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 359
    .local v11, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 360
    .local v12, "defaultWidth":I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 364
    .local v13, "defaultHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 366
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 368
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 369
    .local v0, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .local v1, "height":I
    goto :goto_1

    .line 371
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1
    move v0, v12

    .line 372
    .restart local v0    # "width":I
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lez v1, :cond_2

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ge v1, v12, :cond_2

    .line 373
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    goto :goto_0

    .line 374
    :cond_2
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 375
    int-to-float v1, v0

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v4

    float-to-int v0, v1

    .line 378
    :cond_3
    :goto_0
    move v1, v13

    .line 379
    .restart local v1    # "height":I
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v4, :cond_4

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ge v4, v13, :cond_4

    .line 380
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    goto :goto_1

    .line 381
    :cond_4
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_5

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5

    .line 382
    int-to-float v2, v1

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 387
    :cond_5
    :goto_1
    const/4 v2, 0x3

    if-eq v10, v2, :cond_7

    const/4 v2, 0x5

    if-eq v10, v2, :cond_6

    .line 395
    const/high16 v2, 0x3f000000    # 0.5f

    .local v2, "fractionOfHorizontalOffset":F
    goto :goto_2

    .line 392
    .end local v2    # "fractionOfHorizontalOffset":F
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 393
    .restart local v2    # "fractionOfHorizontalOffset":F
    goto :goto_2

    .line 389
    .end local v2    # "fractionOfHorizontalOffset":F
    :cond_7
    const/4 v2, 0x0

    .line 390
    .restart local v2    # "fractionOfHorizontalOffset":F
    nop

    .line 399
    :goto_2
    const/16 v3, 0x30

    if-eq v9, v3, :cond_9

    const/16 v3, 0x50

    if-eq v9, v3, :cond_8

    .line 407
    const/high16 v3, 0x3f000000    # 0.5f

    .local v3, "fractionOfVerticalOffset":F
    goto :goto_3

    .line 404
    .end local v3    # "fractionOfVerticalOffset":F
    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 405
    .restart local v3    # "fractionOfVerticalOffset":F
    goto :goto_3

    .line 401
    .end local v3    # "fractionOfVerticalOffset":F
    :cond_9
    const/4 v3, 0x0

    .line 402
    .restart local v3    # "fractionOfVerticalOffset":F
    nop

    .line 410
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 411
    sub-int v4, v12, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 412
    .local v4, "xOffset":I
    sub-int v5, v13, v1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 413
    .local v5, "yOffset":I
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 414
    return-void
.end method

.method private getPreferredLaunchDisplay(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 301
    const/4 v0, -0x1

    .line 302
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 303
    .local v2, "optionLaunchId":I
    :goto_0
    if-eq v2, v1, :cond_1

    .line 305
    move v0, v2

    .line 310
    :cond_1
    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_2

    iget-boolean v3, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_2

    .line 311
    iget v0, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 316
    :cond_2
    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 317
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    if-eqz v3, :cond_4

    .line 319
    iget v0, v3, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 322
    :cond_4
    if-ne v0, v1, :cond_5

    if-eqz p3, :cond_5

    .line 323
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    .line 325
    .local v4, "sourceDisplayId":I
    move v0, v4

    .line 328
    .end local v4    # "sourceDisplayId":I
    :cond_5
    if-eq v0, v1, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 329
    invoke-virtual {v4, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    if-nez v4, :cond_6

    .line 330
    iget v0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 332
    :cond_6
    if-ne v0, v1, :cond_7

    iget v4, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_2

    :cond_7
    move v4, v0

    :goto_2
    move v0, v4

    .line 334
    if-eq v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 335
    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 336
    move v1, v0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 334
    :goto_3
    return v1
.end method

.method private getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p3, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "resolvedMode"    # I
    .param p5, "hasInitialBounds"    # Z
    .param p6, "inOutBounds"    # Landroid/graphics/Rect;

    .line 493
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 496
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 498
    return-void

    .line 501
    :cond_0
    const/4 v1, 0x5

    if-eq p4, v1, :cond_1

    .line 506
    return-void

    .line 509
    :cond_1
    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)I

    move-result v1

    .line 510
    .local v1, "orientation":I
    if-eq v1, v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 512
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getDefaultFreeformSize(Lcom/android/server/wm/ActivityDisplay;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V

    .line 519
    if-nez p5, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 537
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V

    .line 538
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 524
    :cond_5
    :goto_1
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-ne v1, v0, :cond_6

    goto :goto_2

    .line 528
    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/ActivityDisplay;IILandroid/graphics/Rect;)V

    .line 543
    :goto_2
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)V

    .line 544
    return-void
.end method

.method private initLogBuilder(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 856
    return-void
.end method

.method private isTaskForcedMaximized(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;

    .line 430
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, 0x83a00

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 432
    :cond_1
    :goto_0
    return v1
.end method

.method private static orientationFromBounds(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 867
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 868
    :cond_0
    const/4 v0, 0x1

    .line 867
    :goto_0
    return v0
.end method

.method private outputLog()V
    .locals 0

    .line 864
    return-void
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 451
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 452
    .local v0, "orientation":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 472
    const/4 v0, -0x1

    goto :goto_0

    .line 455
    :cond_0
    :pswitch_0
    const/16 v0, 0xe

    .line 456
    goto :goto_0

    .line 469
    :cond_1
    :pswitch_1
    const/4 v0, 0x1

    .line 470
    goto :goto_0

    .line 462
    :cond_2
    :pswitch_2
    const/4 v0, 0x0

    .line 463
    nop

    .line 475
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityDisplay;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 559
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 561
    .local v0, "orientation":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 562
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result v1

    goto :goto_0

    .line 564
    :cond_0
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_0
    move v0, v1

    .line 571
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 572
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 573
    :cond_2
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_1
    move v0, v1

    .line 580
    :cond_3
    return v0
.end method

.method private shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "direction"    # I
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 824
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 833
    const/4 v0, 0x0

    .local v0, "horizontalOffset":I
    goto :goto_0

    .line 830
    .end local v0    # "horizontalOffset":I
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 831
    .restart local v0    # "horizontalOffset":I
    goto :goto_0

    .line 826
    .end local v0    # "horizontalOffset":I
    :cond_1
    nop

    .line 827
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 826
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    .line 828
    .restart local v0    # "horizontalOffset":I
    nop

    .line 837
    :goto_0
    and-int/lit8 v1, p1, 0x70

    const/16 v3, 0x30

    if-eq v1, v3, :cond_3

    const/16 v3, 0x50

    if-eq v1, v3, :cond_2

    .line 845
    const/4 v1, 0x0

    .local v1, "verticalOffset":I
    goto :goto_1

    .line 842
    .end local v1    # "verticalOffset":I
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 843
    .restart local v1    # "verticalOffset":I
    goto :goto_1

    .line 839
    .end local v1    # "verticalOffset":I
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    .line 840
    .restart local v1    # "verticalOffset":I
    nop

    .line 848
    :goto_1
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 849
    return-void
.end method

.method private static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "left"    # Landroid/graphics/Rect;
    .param p1, "right"    # Landroid/graphics/Rect;

    .line 872
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 873
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 872
    :goto_0
    return v0
.end method


# virtual methods
.method adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "displayBounds"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 719
    .local p2, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    return-void

    .line 725
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    return-void

    .line 731
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    .line 733
    .local v3, "direction":I
    if-nez v3, :cond_2

    .line 735
    goto :goto_2

    .line 738
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 739
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 740
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 741
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 744
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 745
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 749
    return-void

    .line 732
    .end local v3    # "direction":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    :cond_5
    :goto_2
    return-void
.end method

.method public onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "phase"    # I
    .param p7, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 118
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 119
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    .line 121
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    .line 122
    return v0
.end method

.method onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p7, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskLaunchParamsModifier;->onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    return v0
.end method
