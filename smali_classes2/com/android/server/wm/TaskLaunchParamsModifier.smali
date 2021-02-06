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

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 94
    return-void
.end method

.method private adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v0, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    .line 745
    .local v1, "numTaskContainers":I
    const/4 v2, 0x0

    .local v2, "tdaNdx":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 746
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 747
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    .line 748
    .local v4, "numStacks":I
    const/4 v5, 0x0

    .local v5, "sNdx":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 749
    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 750
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 751
    goto :goto_3

    .line 754
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 755
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 748
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "j":I
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 745
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "numStacks":I
    .end local v5    # "sNdx":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    .end local v2    # "tdaNdx":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 760
    return-void
.end method

.method private adjustBoundsToFitInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 688
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 690
    .local v0, "displayStableBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 691
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 704
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    .line 706
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .local v1, "dx":I
    goto :goto_0

    .line 707
    .end local v1    # "dx":I
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_2

    .line 709
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .restart local v1    # "dx":I
    goto :goto_0

    .line 712
    .end local v1    # "dx":I
    :cond_2
    const/4 v1, 0x0

    .line 716
    .restart local v1    # "dx":I
    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    .line 718
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .local v2, "dy":I
    goto :goto_1

    .line 719
    .end local v2    # "dy":I
    :cond_3
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_4

    .line 721
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .restart local v2    # "dy":I
    goto :goto_1

    .line 724
    .end local v2    # "dy":I
    :cond_4
    const/4 v2, 0x0

    .line 726
    .restart local v2    # "dy":I
    :goto_1
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 727
    return-void

    .line 694
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 695
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 696
    .local v1, "layoutDirection":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 697
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    goto :goto_3

    .line 698
    :cond_6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    :goto_3
    nop

    .line 699
    .local v2, "left":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 700
    return-void
.end method

.method private appendLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .line 919
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

    .line 861
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

    .line 862
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

    .line 864
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

    .line 866
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

    .line 868
    .local v7, "rightClose":Z
    :goto_3
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v4, :cond_3

    move v2, v5

    .line 871
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

    .line 873
    :cond_7
    return v5

    .line 875
    .end local v1    # "taskBounds":Landroid/graphics/Rect;
    .end local v2    # "bottomClose":Z
    .end local v3    # "leftClose":Z
    .end local v6    # "topClose":Z
    .end local v7    # "rightClose":Z
    :cond_8
    goto :goto_0

    .line 877
    :cond_9
    return v2
.end method

.method private calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 25
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "phase"    # I
    .param p7, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 119
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    if-eqz v8, :cond_1

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_0
    move-object v15, v0

    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1

    .line 122
    .end local v0    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    move-object/from16 v0, p3

    move-object v15, v0

    .line 129
    .local v15, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    const/4 v0, 0x0

    if-nez v15, :cond_2

    .line 135
    return v0

    .line 139
    :cond_2
    invoke-direct {v7, v8, v11, v10, v13}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 141
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iput-object v6, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 143
    iget-object v5, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 149
    .local v5, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x2

    if-nez v12, :cond_3

    .line 150
    return v4

    .line 158
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_2

    .line 159
    :cond_4
    move v1, v0

    :goto_2
    nop

    .line 163
    .local v1, "launchMode":I
    if-nez v1, :cond_5

    .line 164
    invoke-direct {v7, v5, v10}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 173
    :cond_5
    const/4 v2, 0x0

    .line 174
    .local v2, "hasInitialBounds":Z
    invoke-direct {v7, v5, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;I)Z

    move-result v16

    .line 175
    .local v16, "canApplyFreeformPolicy":Z
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v16, :cond_6

    .line 176
    invoke-direct {v7, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 177
    :cond_6
    const/4 v2, 0x1

    .line 178
    if-nez v1, :cond_7

    .line 179
    const/4 v3, 0x5

    goto :goto_3

    .line 180
    :cond_7
    move v3, v1

    :goto_3
    move v1, v3

    .line 181
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v20, v2

    goto :goto_5

    .line 183
    :cond_8
    if-ne v1, v4, :cond_9

    goto :goto_4

    .line 186
    :cond_9
    const/4 v0, 0x1

    if-ne v1, v0, :cond_a

    goto :goto_4

    .line 188
    :cond_a
    if-eqz v9, :cond_b

    if-eqz v16, :cond_b

    .line 189
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v15, v9, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 190
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 191
    const/4 v1, 0x5

    .line 192
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 193
    const/4 v2, 0x1

    move/from16 v20, v2

    goto :goto_5

    .line 211
    :cond_b
    :goto_4
    move/from16 v20, v2

    .end local v2    # "hasInitialBounds":Z
    .local v20, "hasInitialBounds":Z
    :goto_5
    const/4 v0, 0x0

    .line 215
    .local v0, "fullyResolvedCurrentParam":Z
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    if-nez v20, :cond_f

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_c

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v2, v6, :cond_f

    .line 220
    :cond_c
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 221
    iget v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 222
    const/4 v2, 0x5

    if-eq v1, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    move v0, v2

    .line 228
    :cond_e
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 233
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 234
    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 235
    const/4 v0, 0x1

    move/from16 v21, v0

    goto :goto_7

    .line 245
    :cond_f
    move/from16 v21, v0

    .end local v0    # "fullyResolvedCurrentParam":Z
    .local v21, "fullyResolvedCurrentParam":Z
    :goto_7
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 246
    if-ne v1, v4, :cond_10

    goto :goto_8

    .line 248
    :cond_10
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSizeCompatFreeform:Z

    if-nez v0, :cond_11

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 251
    const/4 v1, 0x1

    .line 252
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v3, v1

    goto :goto_9

    .line 259
    :cond_11
    :goto_8
    move v3, v1

    .end local v1    # "launchMode":I
    .local v3, "launchMode":I
    :goto_9
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    if-ne v3, v0, :cond_12

    .line 260
    const/4 v0, 0x0

    goto :goto_a

    :cond_12
    move v0, v3

    :goto_a
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 262
    const/4 v0, 0x1

    if-ne v12, v0, :cond_13

    .line 263
    return v4

    .line 272
    :cond_13
    if-eqz v3, :cond_14

    move v0, v3

    goto :goto_b

    .line 273
    :cond_14
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    :goto_b
    move v2, v0

    .line 274
    .local v2, "resolvedMode":I
    if-eqz v21, :cond_17

    .line 275
    const/4 v0, 0x5

    if-ne v2, v0, :cond_16

    .line 277
    iget-object v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v0, v6, :cond_15

    .line 278
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    .line 282
    :cond_15
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    goto/16 :goto_c

    .line 275
    :cond_16
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    goto :goto_c

    .line 284
    :cond_17
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 285
    if-eqz v10, :cond_18

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x5

    if-ne v2, v0, :cond_18

    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 288
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-ne v0, v6, :cond_18

    .line 290
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v0, v5, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    .line 293
    :cond_18
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

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .local v23, "display":Lcom/android/server/wm/DisplayContent;
    move/from16 v5, v20

    move-object/from16 v24, v6

    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v24, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_c

    .line 284
    .end local v18    # "resolvedMode":I
    .end local v19    # "launchMode":I
    .end local v23    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v2    # "resolvedMode":I
    .restart local v3    # "launchMode":I
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_19
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 296
    .end local v2    # "resolvedMode":I
    .end local v3    # "launchMode":I
    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v18    # "resolvedMode":I
    .restart local v19    # "launchMode":I
    .restart local v23    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v24    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_c
    return v22
.end method

.method private calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "availableBounds"    # Landroid/graphics/Rect;
    .param p2, "initialBounds"    # Landroid/graphics/Rect;

    .line 825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 826
    aput v3, v1, v0

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    .end local v0    # "i":I
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    div-int/2addr v0, v1

    .line 830
    .local v0, "oneThirdWidth":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int/2addr v2, v1

    .line 831
    .local v2, "twoThirdWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 832
    .local v4, "centerX":I
    const/4 v5, 0x5

    if-ge v4, v0, :cond_1

    .line 834
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v1, v3

    .line 835
    return-void

    .line 836
    :cond_1
    if-le v4, v2, :cond_2

    .line 838
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v1, v5, v3

    .line 839
    return-void

    .line 842
    :cond_2
    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v1

    .line 843
    .local v6, "oneThirdHeight":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/2addr v7, v1

    .line 844
    .local v7, "twoThirdHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 845
    .local v8, "centerY":I
    const/4 v9, 0x1

    if-lt v8, v6, :cond_4

    if-le v8, v7, :cond_3

    goto :goto_1

    .line 855
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v5, 0x55

    aput v5, v1, v3

    .line 856
    const/16 v3, 0x33

    aput v3, v1, v9

    .line 857
    return-void

    .line 848
    :cond_4
    :goto_1
    iget-object v10, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v10, v3

    .line 849
    aput v1, v10, v9

    .line 850
    return-void
.end method

.method private canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;I)Z
    .locals 1
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "launchMode"    # I

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0
.end method

.method private canApplyPipWindowPolicy(I)Z
    .locals 1
    .param p1, "launchMode"    # I

    .line 413
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

.method private canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 5
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 384
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 385
    return v0

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    return v0

    .line 395
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 396
    .local v1, "sourceWindowingMode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    .line 398
    return v0

    .line 404
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method private cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "srcBounds"    # Landroid/graphics/Rect;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 529
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 530
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 531
    .local v0, "density":F
    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 533
    .local v1, "defaultOffset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 534
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 535
    .local v2, "dx":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 536
    .local v3, "dy":I
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 537
    return-void
.end method

.method private centerBounds(Lcom/android/server/wm/DisplayContent;IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "inOutBounds"    # Landroid/graphics/Rect;

    .line 678
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 681
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 682
    .local v0, "left":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    .line 683
    .local v1, "top":I
    add-int v2, v0, p2

    add-int v3, v1, p3

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 684
    return-void
.end method

.method private convertOrientationToScreenOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 596
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 602
    const/4 v0, -0x1

    return v0

    .line 598
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 600
    :cond_1
    return v0
.end method

.method private getDefaultFreeformSize(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .locals 18
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "orientation"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 639
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 640
    .local v3, "displayStableBounds":Landroid/graphics/Rect;
    nop

    .line 641
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 642
    .local v4, "portraitHeight":I
    nop

    .line 643
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 644
    .local v5, "otherDimension":I
    mul-int v6, v4, v4

    div-int/2addr v6, v5

    .line 645
    .local v6, "portraitWidth":I
    if-nez p3, :cond_0

    move v7, v4

    goto :goto_0

    .line 646
    :cond_0
    move v7, v6

    :goto_0
    nop

    .line 647
    .local v7, "defaultWidth":I
    if-nez p3, :cond_1

    move v8, v6

    goto :goto_1

    .line 648
    :cond_1
    move v8, v4

    :goto_1
    nop

    .line 652
    .local v8, "defaultHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v9, v9

    const/high16 v10, 0x43200000    # 160.0f

    div-float/2addr v9, v10

    .line 653
    .local v9, "density":F
    const/high16 v10, 0x43ce0000    # 412.0f

    mul-float/2addr v10, v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 654
    .local v10, "phonePortraitWidth":I
    const/high16 v12, 0x44370000    # 732.0f

    mul-float/2addr v12, v9

    add-float/2addr v12, v11

    float-to-int v11, v12

    .line 655
    .local v11, "phonePortraitHeight":I
    if-nez p3, :cond_2

    move v12, v11

    goto :goto_2

    .line 656
    :cond_2
    move v12, v10

    :goto_2
    nop

    .line 657
    .local v12, "phoneWidth":I
    if-nez p3, :cond_3

    move v13, v10

    goto :goto_3

    .line 658
    :cond_3
    move v13, v11

    :goto_3
    nop

    .line 661
    .local v13, "phoneHeight":I
    const/4 v14, -0x1

    if-nez v0, :cond_4

    move v15, v14

    goto :goto_4

    :cond_4
    iget v15, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 662
    .local v15, "layoutMinWidth":I
    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget v14, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 665
    .local v14, "layoutMinHeight":I
    :goto_5
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 666
    .local v0, "width":I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 668
    .local v2, "height":I
    move/from16 v16, v4

    .end local v4    # "portraitHeight":I
    .local v16, "portraitHeight":I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 669
    iget v4, v3, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .end local v0    # "width":I
    .local v17, "width":I
    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 670
    return-void
.end method

.method private getLayoutBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 15
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "outBounds"    # Landroid/graphics/Rect;

    .line 419
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v9, v0, 0x70

    .line 420
    .local v9, "verticalGravity":I
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v10, v0, 0x7

    .line 421
    .local v10, "horizontalGravity":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 422
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 423
    return-void

    .line 428
    :cond_0
    move-object/from16 v11, p1

    iget-object v0, v11, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v12, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 429
    .local v12, "displayStableBounds":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 430
    .local v13, "defaultWidth":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 434
    .local v14, "defaultHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 436
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 438
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 439
    .local v0, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .local v1, "height":I
    goto :goto_1

    .line 441
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1
    move v0, v13

    .line 442
    .restart local v0    # "width":I
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lez v1, :cond_2

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ge v1, v13, :cond_2

    .line 443
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    goto :goto_0

    .line 444
    :cond_2
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 445
    int-to-float v1, v0

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v4

    float-to-int v0, v1

    .line 448
    :cond_3
    :goto_0
    move v1, v14

    .line 449
    .restart local v1    # "height":I
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v4, :cond_4

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ge v4, v14, :cond_4

    .line 450
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    goto :goto_1

    .line 451
    :cond_4
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_5

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5

    .line 452
    int-to-float v2, v1

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 457
    :cond_5
    :goto_1
    const/4 v2, 0x3

    if-eq v10, v2, :cond_7

    const/4 v2, 0x5

    if-eq v10, v2, :cond_6

    .line 465
    const/high16 v2, 0x3f000000    # 0.5f

    .local v2, "fractionOfHorizontalOffset":F
    goto :goto_2

    .line 462
    .end local v2    # "fractionOfHorizontalOffset":F
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 463
    .restart local v2    # "fractionOfHorizontalOffset":F
    goto :goto_2

    .line 459
    .end local v2    # "fractionOfHorizontalOffset":F
    :cond_7
    const/4 v2, 0x0

    .line 460
    .restart local v2    # "fractionOfHorizontalOffset":F
    nop

    .line 469
    :goto_2
    const/16 v3, 0x30

    if-eq v9, v3, :cond_9

    const/16 v3, 0x50

    if-eq v9, v3, :cond_8

    .line 477
    const/high16 v3, 0x3f000000    # 0.5f

    .local v3, "fractionOfVerticalOffset":F
    goto :goto_3

    .line 474
    .end local v3    # "fractionOfVerticalOffset":F
    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 475
    .restart local v3    # "fractionOfVerticalOffset":F
    goto :goto_3

    .line 471
    .end local v3    # "fractionOfVerticalOffset":F
    :cond_9
    const/4 v3, 0x0

    .line 472
    .restart local v3    # "fractionOfVerticalOffset":F
    nop

    .line 480
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 481
    iget v4, v12, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 482
    sub-int v4, v13, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 483
    .local v4, "xOffset":I
    sub-int v5, v14, v1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 484
    .local v5, "yOffset":I
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 485
    return-void
.end method

.method private getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 304
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 305
    .local v2, "optionLaunchTaskDisplayAreaToken":Landroid/window/WindowContainerToken;
    :goto_0
    if-eqz v2, :cond_1

    .line 306
    nop

    .line 307
    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 306
    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 312
    :cond_1
    if-nez v0, :cond_3

    .line 314
    const/4 v3, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v3

    .line 315
    .local v4, "optionLaunchId":I
    :goto_1
    if-eq v4, v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 317
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 318
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_3

    .line 319
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 327
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "optionLaunchId":I
    :cond_3
    if-nez v0, :cond_5

    if-eqz p3, :cond_5

    iget-boolean v3, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_5

    .line 329
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 330
    if-eqz v0, :cond_4

    goto :goto_2

    .line 334
    :cond_4
    iget v3, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 335
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 336
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 337
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_5

    .line 338
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 344
    .end local v3    # "displayId":I
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 345
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_3

    :cond_6
    nop

    .line 346
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_3
    if-eqz v1, :cond_7

    .line 348
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 351
    :cond_7
    if-nez v0, :cond_8

    if-eqz p3, :cond_8

    .line 352
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 354
    .local v3, "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object v0, v3

    .line 357
    .end local v3    # "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_8
    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    .line 358
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v3

    .line 359
    .local v3, "callerDisplayId":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 360
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 361
    .restart local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_9

    .line 362
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 367
    .end local v3    # "callerDisplayId":I
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_9
    if-nez v0, :cond_a

    .line 368
    iget-object v0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 372
    :cond_a
    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v3, :cond_b

    .line 373
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_b

    .line 374
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 377
    :cond_b
    if-eqz v0, :cond_c

    .line 378
    move-object v3, v0

    goto :goto_4

    .line 379
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 377
    :goto_4
    return-object v3
.end method

.method private getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "resolvedMode"    # I
    .param p5, "hasInitialBounds"    # Z
    .param p6, "inOutBounds"    # Landroid/graphics/Rect;

    .line 542
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 545
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 547
    return-void

    .line 550
    :cond_0
    const/4 v1, 0x5

    if-eq p4, v1, :cond_1

    .line 555
    return-void

    .line 558
    :cond_1
    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I

    move-result v1

    .line 559
    .local v1, "orientation":I
    if-eq v1, v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 561
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getDefaultFreeformSize(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V

    .line 568
    if-nez p5, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/DisplayContent;IILandroid/graphics/Rect;)V

    .line 587
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 573
    :cond_5
    :goto_1
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-ne v1, v0, :cond_6

    goto :goto_2

    .line 577
    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/DisplayContent;IILandroid/graphics/Rect;)V

    .line 592
    :goto_2
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    .line 593
    return-void
.end method

.method private initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 915
    return-void
.end method

.method private static orientationFromBounds(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 926
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 927
    :cond_0
    const/4 v0, 0x1

    .line 926
    :goto_0
    return v0
.end method

.method private outputLog()V
    .locals 0

    .line 923
    return-void
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 500
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 501
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

    .line 521
    const/4 v0, -0x1

    goto :goto_0

    .line 504
    :cond_0
    :pswitch_0
    const/16 v0, 0xe

    .line 505
    goto :goto_0

    .line 518
    :cond_1
    :pswitch_1
    const/4 v0, 0x1

    .line 519
    goto :goto_0

    .line 511
    :cond_2
    :pswitch_2
    const/4 v0, 0x0

    .line 512
    nop

    .line 524
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

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 608
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 610
    .local v0, "orientation":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 611
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result v1

    goto :goto_0

    .line 613
    :cond_0
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_0
    move v0, v1

    .line 620
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 621
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 622
    :cond_2
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_1
    move v0, v1

    .line 629
    :cond_3
    return v0
.end method

.method private shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "direction"    # I
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 883
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 892
    const/4 v0, 0x0

    .local v0, "horizontalOffset":I
    goto :goto_0

    .line 889
    .end local v0    # "horizontalOffset":I
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 890
    .restart local v0    # "horizontalOffset":I
    goto :goto_0

    .line 885
    .end local v0    # "horizontalOffset":I
    :cond_1
    nop

    .line 886
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 885
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    .line 887
    .restart local v0    # "horizontalOffset":I
    nop

    .line 896
    :goto_0
    and-int/lit8 v1, p1, 0x70

    const/16 v3, 0x30

    if-eq v1, v3, :cond_3

    const/16 v3, 0x50

    if-eq v1, v3, :cond_2

    .line 904
    const/4 v1, 0x0

    .local v1, "verticalOffset":I
    goto :goto_1

    .line 901
    .end local v1    # "verticalOffset":I
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 902
    .restart local v1    # "verticalOffset":I
    goto :goto_1

    .line 898
    .end local v1    # "verticalOffset":I
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    .line 899
    .restart local v1    # "verticalOffset":I
    nop

    .line 907
    :goto_1
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 908
    return-void
.end method

.method private static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "left"    # Landroid/graphics/Rect;
    .param p1, "right"    # Landroid/graphics/Rect;

    .line 931
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 932
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

    .line 931
    :goto_0
    return v0
.end method


# virtual methods
.method adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "displayBounds"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;
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

    .line 778
    .local p2, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    return-void

    .line 784
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    return-void

    .line 790
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 791
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    .line 792
    .local v3, "direction":I
    if-nez v3, :cond_2

    .line 794
    goto :goto_2

    .line 797
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 798
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 799
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 800
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 803
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 804
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 808
    return-void

    .line 791
    .end local v3    # "direction":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    :cond_5
    :goto_2
    return-void
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "phase"    # I
    .param p7, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 108
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 109
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    .line 111
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    .line 112
    return v0
.end method

.method onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p7, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 100
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskLaunchParamsModifier;->onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    return v0
.end method
