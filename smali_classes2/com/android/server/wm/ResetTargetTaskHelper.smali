.class Lcom/android/server/wm/ResetTargetTaskHelper;
.super Ljava/lang/Object;
.source "ResetTargetTaskHelper.java"


# instance fields
.field private mActivityReparentPosition:I

.field private mAllActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCanMoveOptions:Z

.field private mForceReset:Z

.field private mPendingReparentActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mResultActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lcom/android/server/wm/ActivityRecord;

.field private mTargetStack:Lcom/android/server/wm/ActivityStack;

.field private mTargetTask:Lcom/android/server/wm/Task;

.field private mTargetTaskFound:Z

.field private mTask:Lcom/android/server/wm/Task;

.field private mTopOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    return-void
.end method

.method private finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 196
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 198
    .local v0, "noOptions":Z
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 200
    .local v2, "p":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    .line 204
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetTaskIntendedTask: calling finishActivity on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    invoke-virtual {v2, p2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 207
    .end local v2    # "p":Lcom/android/server/wm/ActivityRecord;
    goto :goto_0

    .line 208
    :cond_2
    return-void
.end method

.method public static synthetic lambda$APiSnEpUwnLFg5o4cp87NyJw4j4(Lcom/android/server/wm/ResetTargetTaskHelper;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->processTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic lambda$O-Gmp4WswvLHsJ0Qd1g0pv2tF14(Lcom/android/server/wm/ResetTargetTaskHelper;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ResetTargetTaskHelper;->processActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    return p0
.end method

.method private processActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 13
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isTargetTask"    # Z

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 98
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 100
    .local v2, "finishOnTaskLaunch":Z
    :goto_0
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 102
    .local v4, "allowTaskReparenting":Z
    :goto_1
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 103
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v3

    .line 105
    .local v5, "clearWhenTaskReset":Z
    :goto_2
    if-eqz p2, :cond_9

    .line 106
    if-nez v2, :cond_5

    if-nez v5, :cond_5

    .line 107
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return v3

    .line 115
    :cond_4
    if-eqz v4, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 116
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return v3

    .line 127
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    .line 145
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 148
    return v3

    .line 131
    :cond_7
    :goto_3
    if-eqz v5, :cond_8

    .line 134
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    const-string v6, "clearWhenTaskReset"

    invoke-direct {p0, v1, v6}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_4

    .line 136
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const-string v6, "reset-task"

    invoke-direct {p0, v1, v6}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 140
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 141
    return v3

    .line 151
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_a

    .line 157
    return v3

    .line 158
    :cond_a
    iget-boolean v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    if-eqz v6, :cond_e

    if-eqz v4, :cond_e

    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 168
    iget-boolean v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    if-nez v6, :cond_d

    if-eqz v2, :cond_b

    goto :goto_5

    .line 172
    :cond_b
    iget v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c

    .line 173
    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 176
    :cond_c
    iget-object v9, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget v10, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/ResetTargetTaskHelper;->processResultActivities(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)V

    .line 182
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v6, v1, :cond_e

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 184
    .local v1, "p":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_e

    .line 185
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 186
    const-string v6, "replace"

    invoke-virtual {v1, v6, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_6

    .line 169
    .end local v1    # "p":Lcom/android/server/wm/ActivityRecord;
    :cond_d
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const-string v6, "move-affinity"

    invoke-direct {p0, v1, v6}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 170
    return v3

    .line 191
    :cond_e
    :goto_6
    return v3
.end method

.method private processPendingReparentActivities()V
    .locals 13

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 235
    .local v0, "atmService":Lcom/android/server/wm/ActivityTaskManagerService;
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 236
    .local v1, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v2, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 237
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v2

    .line 238
    .local v2, "singleTaskInstanceDisplay":Z
    if-eqz v2, :cond_1

    .line 239
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 243
    .local v3, "windowingMode":I
    iget-object v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v4

    .line 245
    .local v4, "activityType":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 246
    iget-object v5, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 247
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v7

    .line 249
    .local v7, "alwaysCreateTask":Z
    if-eqz v7, :cond_2

    .line 250
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v8

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 251
    .local v8, "task":Lcom/android/server/wm/Task;
    :goto_1
    const/4 v9, 0x0

    .line 252
    .local v9, "targetTask":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_3

    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 255
    move-object v9, v8

    .line 256
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start pushing activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " out to bottom task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ActivityTaskManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_3
    if-nez v9, :cond_5

    .line 260
    if-eqz v7, :cond_4

    .line 261
    invoke-virtual {v1, v3, v4, v6}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    goto :goto_2

    .line 264
    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/wm/ActivityStack;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;

    move-result-object v9

    .line 267
    :goto_2
    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v10, v9, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 269
    :cond_5
    const-string v10, "resetTargetTaskIfNeeded"

    invoke-virtual {v5, v9, v6, v10}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    .line 270
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 271
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "alwaysCreateTask":Z
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "targetTask":Lcom/android/server/wm/Task;
    goto :goto_0

    .line 272
    :cond_6
    return-void
.end method

.method private processResultActivities(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)V
    .locals 5
    .param p1, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "targetTask"    # Lcom/android/server/wm/Task;
    .param p3, "position"    # I
    .param p4, "ignoreFinishing"    # Z
    .param p5, "takeOptions"    # Z

    .line 212
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 214
    .local v0, "noOptions":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 216
    .local v1, "p":Lcom/android/server/wm/ActivityRecord;
    if-eqz p4, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    if-eqz p5, :cond_1

    .line 219
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    .line 221
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from task="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " adding to task="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    .line 222
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pushing next activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " out to target\'s task "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_3
    const-string v2, "resetTargetTaskIfNeeded"

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    .line 226
    .end local v1    # "p":Lcom/android/server/wm/ActivityRecord;
    goto :goto_0

    .line 227
    :cond_4
    return-void
.end method

.method private processTask(Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->reset(Lcom/android/server/wm/Task;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 80
    if-nez v1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 83
    .local v1, "isTargetTask":Z
    :goto_0
    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 85
    :cond_2
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 87
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 85
    invoke-static {v0, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 88
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 89
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 90
    return-void
.end method

.method private reset(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 55
    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    return-void
.end method

.method private takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 2
    .param p1, "p"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "noOptions"    # Z

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 276
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 278
    if-eqz v0, :cond_0

    .line 279
    const/4 p2, 0x0

    .line 282
    :cond_0
    return p2
.end method


# virtual methods
.method process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "forceReset"    # Z

    .line 61
    iput-boolean p2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 64
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 67
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4;

    const-class v1, Lcom/android/server/wm/Task;

    .line 68
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 67
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 69
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v1, p1, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 70
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 72
    invoke-direct {p0}, Lcom/android/server/wm/ResetTargetTaskHelper;->processPendingReparentActivities()V

    .line 73
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/ResetTargetTaskHelper;->reset(Lcom/android/server/wm/Task;)V

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    return-object v1
.end method
