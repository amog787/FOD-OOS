.class public Lcom/android/server/wm/RootActivityContainer;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "RootActivityContainer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;,
        Lcom/android/server/wm/RootActivityContainer$FindTaskResult;,
        Lcom/android/server/wm/RootActivityContainer$AnyTaskForIdMatchTaskMode;
    }
.end annotation


# static fields
.field static final MATCH_TASK_IN_STACKS_ONLY:I = 0x0

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mActivityDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentUser:I

.field private mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

.field mDefaultMinSizeOfResizeableTaskDp:I

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mIsDockMinimized:Z

.field private mPowerHintSent:Z

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mTaskLayersChanged:Z

.field private final mTmpActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 225
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 185
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 226
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 227
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 229
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/RootActivityContainer;Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RootActivityContainer;
    .param p1, "x1"    # Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;

    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->removeSleepToken(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V

    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks()V
    .locals 4

    .line 2336
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2337
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10500e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2339
    .local v1, "minimalSize":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2341
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v1, v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 2342
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"    # I

    .line 1797
    if-nez p1, :cond_0

    .line 1798
    const/4 v0, 0x1

    return v0

    .line 1800
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0
.end method

.method private getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 1277
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1278
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1279
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v1, :cond_0

    .line 1280
    return-object v1

    .line 1277
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1283
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 13
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1287
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 1288
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1289
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    new-instance v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 1290
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 1291
    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 1292
    iget v3, p1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 1293
    iget v3, p1, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 1294
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 1296
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput v4, v2, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 1297
    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1299
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1300
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1301
    .local v5, "numTasks":I
    new-array v6, v5, [I

    .line 1302
    .local v6, "taskIds":[I
    new-array v7, v5, [Ljava/lang/String;

    .line 1303
    .local v7, "taskNames":[Ljava/lang/String;
    new-array v8, v5, [Landroid/graphics/Rect;

    .line 1304
    .local v8, "taskBounds":[Landroid/graphics/Rect;
    new-array v9, v5, [I

    .line 1305
    .local v9, "taskUserIds":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v5, :cond_4

    .line 1306
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/TaskRecord;

    .line 1307
    .local v11, "task":Lcom/android/server/wm/TaskRecord;
    iget v12, v11, Lcom/android/server/wm/TaskRecord;->taskId:I

    aput v12, v6, v10

    .line 1308
    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_1

    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1309
    :cond_1
    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_2

    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1310
    :cond_2
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 1311
    :cond_3
    const-string v12, "unknown"

    :goto_2
    aput-object v12, v7, v10

    .line 1312
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    aput-object v12, v8, v10

    .line 1313
    aget-object v12, v8, v10

    invoke-virtual {v11, v12}, Lcom/android/server/wm/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 1314
    iget v12, v11, Lcom/android/server/wm/TaskRecord;->userId:I

    aput v12, v9, v10

    .line 1305
    .end local v11    # "task":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1316
    .end local v10    # "i":I
    :cond_4
    iput-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 1317
    iput-object v7, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 1318
    iput-object v8, v2, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 1319
    iput-object v9, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 1321
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 1322
    .local v10, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v10, :cond_5

    iget-object v3, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    :cond_5
    iput-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 1323
    return-object v2
.end method

.method private getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "candidateTask"    # Lcom/android/server/wm/TaskRecord;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1814
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1815
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_8

    .line 1820
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1821
    return-object v2

    .line 1827
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-ne v1, p3, :cond_1

    .line 1828
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 1832
    :cond_1
    if-eqz p5, :cond_2

    .line 1836
    iget v1, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .local v1, "windowingMode":I
    goto :goto_1

    .line 1838
    .end local v1    # "windowingMode":I
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_0

    .line 1839
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    :goto_0
    nop

    .line 1841
    .restart local v1    # "windowingMode":I
    :goto_1
    nop

    .line 1842
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v3

    .line 1841
    invoke-virtual {v0, v1, p2, p3, v3}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v1

    .line 1845
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 1846
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1847
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v5, p2, v1}, Lcom/android/server/wm/RootActivityContainer;->isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1848
    return-object v5

    .line 1845
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1853
    .end local v3    # "i":I
    :cond_5
    if-eqz p1, :cond_7

    .line 1855
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1856
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    .line 1857
    .local v2, "activityType":I
    :goto_3
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    return-object v3

    .line 1860
    .end local v2    # "activityType":I
    :cond_7
    return-object v2

    .line 1816
    .end local v1    # "windowingMode":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display with displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowingMode"    # I

    .line 1872
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 1879
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1880
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p3, v1, :cond_0

    if-nez p3, :cond_1

    .line 1883
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1885
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1875
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    return v0

    .line 1874
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    return v0

    .line 1873
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    return v0
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V
    .locals 1
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "position"    # I

    .line 1468
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    .line 1470
    :cond_0
    if-gez p2, :cond_1

    .line 1471
    const/4 p2, 0x0

    .line 1474
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1475
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1476
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 1477
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1478
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1480
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 1481
    return-void
.end method

.method private removeSleepToken(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)V
    .locals 3
    .param p1, "token"    # Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;

    .line 1538
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1540
    invoke-static {p1}, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;->access$000(Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1541
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_1

    .line 1542
    iget-object v1, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1545
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSleepToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1550
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 1553
    :cond_1
    return-void
.end method

.method private startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 1383
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const-string v2, "displayAdded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 1384
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    .line 1385
    return-void
.end method

.method private taskTopActivityIsUser(Lcom/android/server/wm/TaskRecord;I)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "userId"    # I

    .line 2173
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2174
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2176
    .local v1, "resultTo":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v2, p2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v2, p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityDisplay;I)V
    .locals 2
    .param p1, "activityDisplay"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "position"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1485
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1486
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;)V

    .line 1487
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 4
    .param p1, "taskSwitch"    # Z

    .line 1556
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1558
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1559
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1560
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->addStartingWindowsForVisibleActivities(Z)V

    .line 1558
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1556
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1563
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 9

    .line 2108
    const/4 v0, 0x1

    .line 2109
    .local v0, "pausing":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2110
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2111
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2112
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2113
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v5, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2114
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_1

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2115
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v6, :cond_0

    .line 2116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allPausedActivitiesComplete: r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2116
    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const/4 v0, 0x0

    goto :goto_2

    .line 2120
    :cond_0
    const/4 v6, 0x0

    return v6

    .line 2111
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2109
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2125
    .end local v1    # "displayNdx":I
    :cond_3
    return v0
.end method

.method allResumedActivitiesIdle()Z
    .locals 6

    .line 2061
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 2063
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2064
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2066
    goto :goto_1

    .line 2071
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2072
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v4

    if-nez v4, :cond_1

    .line 2073
    goto :goto_1

    .line 2075
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2076
    .local v4, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez v5, :cond_4

    .line 2077
    :cond_2
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_3

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allResumedActivitiesIdle: stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not idle"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 2061
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2085
    .end local v0    # "displayNdx":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 2086
    return v1
.end method

.method allResumedActivitiesVisible()Z
    .locals 7

    .line 2090
    const/4 v0, 0x0

    .line 2091
    .local v0, "foundResumed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2092
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2093
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2094
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2095
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2096
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_1

    .line 2097
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v6, :cond_0

    .line 2098
    const/4 v6, 0x0

    return v6

    .line 2100
    :cond_0
    const/4 v0, 0x1

    .line 2093
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2091
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2104
    .end local v1    # "displayNdx":I
    :cond_3
    return v0
.end method

.method anyTaskForId(I)Lcom/android/server/wm/TaskRecord;
    .locals 1
    .param p1, "id"    # I

    .line 2191
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(II)Lcom/android/server/wm/TaskRecord;
    .locals 2
    .param p1, "id"    # I
    .param p2, "matchMode"    # I

    .line 2195
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;
    .locals 20
    .param p1, "id"    # I
    .param p2, "matchMode"    # I
    .param p3, "aOptions"    # Landroid/app/ActivityOptions;
    .param p4, "onTop"    # Z

    .line 2208
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v11, p4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 2209
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Should not specify activity options for non-restore lookup"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2213
    :cond_1
    :goto_0
    iget-object v5, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2214
    .local v12, "numDisplays":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "displayNdx":I
    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v13, v12, :cond_7

    .line 2215
    iget-object v7, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/android/server/wm/ActivityDisplay;

    .line 2216
    .local v14, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    move v15, v7

    .local v15, "stackNdx":I
    :goto_2
    if-ltz v15, :cond_6

    .line 2217
    invoke-virtual {v14, v15}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    .line 2218
    .local v10, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v10, v1}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    .line 2219
    .local v9, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v9, :cond_2

    .line 2220
    nop

    .line 2216
    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 2222
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    if-eqz v3, :cond_5

    .line 2225
    nop

    .line 2226
    invoke-virtual {v0, v6, v3, v9, v11}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 2227
    .local v8, "launchStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v8, :cond_4

    if-eq v10, v8, :cond_4

    .line 2228
    if-eqz v11, :cond_3

    .line 2229
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    nop

    :goto_3
    move v7, v4

    .line 2230
    .local v7, "reparentMode":I
    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v18, "anyTaskForId"

    move-object v4, v9

    move-object v5, v8

    move/from16 v6, p4

    move-object/from16 v19, v8

    .end local v8    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .local v19, "launchStack":Lcom/android/server/wm/ActivityStack;
    move/from16 v8, v16

    move-object/from16 v16, v9

    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .local v16, "task":Lcom/android/server/wm/TaskRecord;
    move/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v17, "stack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v10, v18

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_4

    .line 2227
    .end local v7    # "reparentMode":I
    .end local v16    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v19    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v8    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    move-object/from16 v19, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v8    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v16    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v17    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v19    # "launchStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_4

    .line 2222
    .end local v16    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v19    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .line 2234
    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v16    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v17    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_4
    return-object v16

    .line 2214
    .end local v14    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v15    # "stackNdx":I
    .end local v16    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2239
    .end local v13    # "displayNdx":I
    :cond_7
    if-nez v2, :cond_8

    .line 2240
    return-object v6

    .line 2245
    :cond_8
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v7, " in recents"

    const-string v8, "ActivityTaskManager"

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Looking for task id="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_9
    iget-object v4, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2248
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v4, :cond_b

    .line 2249
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_a

    .line 2250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tDidn\'t find task id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_a
    return-object v6

    .line 2256
    :cond_b
    if-ne v2, v5, :cond_c

    .line 2257
    return-object v4

    .line 2261
    :cond_c
    iget-object v5, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, v4, v3, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    if-nez v5, :cond_e

    .line 2262
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t restore task id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " found in recents"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_d
    return-object v6

    .line 2266
    :cond_e
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored task id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from in recents"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_f
    return-object v4
.end method

.method applySleepTokens(Z)V
    .locals 7
    .param p1, "applyToStacks"    # Z

    .line 1219
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_8

    .line 1221
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1222
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->shouldSleep()Z

    move-result v2

    .line 1223
    .local v2, "displayShouldSleep":Z
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1224
    goto :goto_4

    .line 1226
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->setIsSleeping(Z)V

    .line 1228
    if-nez p1, :cond_1

    .line 1229
    goto :goto_4

    .line 1233
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 1234
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1235
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_2

    .line 1236
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_2

    .line 1238
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->awakeFromSleepingLocked()V

    .line 1239
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1240
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v5

    iget v6, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1241
    invoke-virtual {v5, v6}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1233
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1251
    .end local v3    # "stackNdx":I
    :cond_4
    if-nez v2, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1252
    goto :goto_4

    .line 1255
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 1256
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1257
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1258
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    iget v6, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v5, v6, :cond_6

    .line 1259
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1261
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    goto :goto_3

    .line 1219
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "displayShouldSleep":Z
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1263
    .end local v0    # "displayNdx":I
    :cond_8
    return-void
.end method

.method attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 13
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 781
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 782
    .local v1, "didSomething":Z
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "displayNdx":I
    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_4

    .line 783
    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityDisplay;

    .line 784
    .local v5, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 785
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v6, :cond_3

    .line 786
    iget-object v7, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 787
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 788
    .local v7, "top":Lcom/android/server/wm/ActivityRecord;
    iget-object v8, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 789
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 790
    iget-object v10, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 791
    .local v10, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v11, :cond_2

    iget v11, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v12, :cond_2

    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 792
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 794
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-ne v7, v10, :cond_0

    move v12, v3

    goto :goto_2

    :cond_0
    move v12, v4

    :goto_2
    invoke-virtual {v11, v10, p1, v12, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_1

    .line 796
    const/4 v1, 0x1

    .line 802
    :cond_1
    goto :goto_3

    .line 798
    :catch_0
    move-exception v3

    .line 799
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in new application when starting activity "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 800
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 799
    const-string v11, "ActivityTaskManager"

    invoke-static {v11, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    throw v3

    .line 789
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v10    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 782
    .end local v5    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "size":I
    .end local v9    # "i":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 807
    .end local v2    # "displayNdx":I
    :cond_4
    if-nez v1, :cond_5

    .line 808
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 810
    :cond_5
    return v1
.end method

.method canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z
    .locals 5
    .param p1, "homeInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "displayId"    # I
    .param p3, "allowInstrumenting"    # Z

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 599
    return v2

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 603
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 604
    .local v0, "app":Lcom/android/server/wm/WindowProcessController;
    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    return v2

    .line 609
    :cond_1
    if-eqz p2, :cond_6

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-ne p2, v3, :cond_2

    goto :goto_1

    .line 615
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->shouldPlaceSecondaryHomeOnDisplay(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 616
    return v2

    .line 619
    :cond_3
    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    .line 621
    .local v3, "supportMultipleInstance":Z
    :goto_0
    if-nez v3, :cond_5

    .line 623
    return v2

    .line 626
    :cond_5
    return v1

    .line 612
    .end local v3    # "supportMultipleInstance":Z
    :cond_6
    :goto_1
    return v1
.end method

.method cancelInitializingActivities()V
    .locals 4

    .line 2181
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2182
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2183
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2184
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2185
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->cancelInitializingActivities()V

    .line 2183
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2181
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2188
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 4
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 1585
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1586
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1587
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1588
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1589
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 1587
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1585
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1592
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method closeSystemDialogs()V
    .locals 4

    .line 1987
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1988
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1989
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1990
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1991
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->closeSystemDialogsLocked()V

    .line 1989
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1987
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1994
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method continueUpdateBounds(I)V
    .locals 1
    .param p1, "activityType"    # I

    .line 1359
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1360
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 1361
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->continueUpdateBounds()V

    .line 1363
    :cond_0
    return-void
.end method

.method createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1520
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1521
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_1

    .line 1525
    new-instance v1, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;-><init>(Lcom/android/server/wm/RootActivityContainer;Ljava/lang/String;I)V

    .line 1526
    .local v1, "token":Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    iget-object v2, v0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 1531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSleepToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_0
    return-object v1

    .line 1522
    .end local v1    # "token":Lcom/android/server/wm/RootActivityContainer$SleepTokenImpl;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method deferUpdateBounds(I)V
    .locals 1
    .param p1, "activityType"    # I

    .line 1352
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1353
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->deferUpdateBounds()V

    .line 1356
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topDisplayFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2371
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2373
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2371
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2375
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .line 2402
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v1, 0x0

    .line 2403
    .local v1, "printed":Z
    const/4 v2, 0x0

    .line 2404
    .local v2, "needSep":Z
    iget-object v3, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v14, v1

    move v15, v2

    move v8, v3

    .end local v1    # "printed":Z
    .end local v2    # "needSep":Z
    .local v8, "displayNdx":I
    .local v14, "printed":Z
    .local v15, "needSep":Z
    :goto_0
    if-ltz v8, :cond_1

    .line 2405
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/wm/ActivityDisplay;

    .line 2406
    .local v9, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2407
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2408
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/wm/ActivityDisplay;

    .line 2409
    .local v10, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v11, v1

    .local v11, "stackNdx":I
    :goto_1
    if-ltz v11, :cond_0

    .line 2410
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 2411
    .local v12, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2412
    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStack;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v14

    .line 2413
    move v15, v14

    .line 2409
    .end local v12    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 2415
    .end local v11    # "stackNdx":I
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const-string v2, " ResumedActivity:"

    move-object/from16 v12, p5

    invoke-static {v13, v1, v12, v15, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 2404
    .end local v9    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    .end local v10    # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v12, p5

    .line 2419
    .end local v8    # "displayNdx":I
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v16, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    const-string v11, "  Activities waiting to finish:"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    move-object/from16 v12, v16

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int/2addr v14, v1

    .line 2422
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Stop"

    const-string v11, "  Activities waiting to stop:"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int/2addr v14, v1

    .line 2425
    iget-object v1, v0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Sleep"

    const-string v11, "  Activities waiting to sleep:"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v14

    .line 2429
    .end local v14    # "printed":Z
    .restart local v1    # "printed":Z
    return v1
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2383
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2384
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2385
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2386
    .local v2, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2384
    .end local v2    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2389
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public dumpDisplays(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2392
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2393
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2394
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stacks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->dumpStacks(Ljava/io/PrintWriter;)V

    .line 2396
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2392
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2398
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 819
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 820
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 831
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 832
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 836
    .end local v0    # "displayNdx":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    .line 837
    nop

    .line 838
    return-void

    .line 836
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    .locals 6
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "markFrozenIfConfigChanged"    # Z
    .param p4, "deferResume"    # Z

    .line 646
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 649
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 651
    return v1

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 657
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x0

    .line 658
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    .line 659
    nop

    .line 660
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 661
    if-eqz p1, :cond_1

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 662
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_0

    :cond_1
    nop

    .line 659
    :goto_0
    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object v3

    .line 665
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-eqz v3, :cond_3

    .line 666
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v3, p1, p4, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    move-result v0

    return v0
.end method

.method executeAppTransitionForAllDisplay()V
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1083
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1081
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1085
    .end local v0    # "displayNdx":I
    :cond_0
    return-void
.end method

.method findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 1664
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1665
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1666
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1667
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1668
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1670
    .local v4, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_0

    .line 1671
    return-object v4

    .line 1666
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1664
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1675
    .end local v0    # "displayNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1431
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1432
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_1

    .line 1433
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1434
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_0

    if-lez v1, :cond_0

    .line 1435
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    return-object v2

    .line 1433
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1439
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a stack behind stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTask(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preferredDisplayId"    # I

    .line 1103
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for task of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->clear()V

    .line 1107
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1108
    .local v0, "preferredDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1109
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/ActivityDisplay;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 1110
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v3, v3, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v3, :cond_1

    .line 1111
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v1

    .line 1115
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "displayNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1116
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1117
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    iget v4, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v4, p2, :cond_2

    .line 1118
    goto :goto_1

    .line 1121
    :cond_2
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/wm/ActivityDisplay;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 1122
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v4, v4, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v4, :cond_3

    .line 1123
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v1

    .line 1115
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1127
    .end local v3    # "displayNdx":I
    :cond_4
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_5

    const-string v2, "No task found"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v1
.end method

.method finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .line 1999
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    const/4 v1, 0x0

    .line 2000
    .local v1, "didSomething":Z
    iget-object v2, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2001
    iget-object v3, v0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 2002
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 2003
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 2004
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2006
    const/4 v1, 0x1

    .line 2002
    .end local v11    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2000
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2010
    .end local v2    # "displayNdx":I
    :cond_2
    return v1
.end method

.method finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .locals 7
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1138
    const/4 v0, 0x0

    .line 1139
    .local v0, "finishedTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1140
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1141
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1144
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1145
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1146
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 1147
    .local v6, "t":Lcom/android/server/wm/TaskRecord;
    if-eq v5, v1, :cond_0

    if-nez v0, :cond_1

    .line 1148
    :cond_0
    move-object v0, v6

    .line 1144
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v6    # "t":Lcom/android/server/wm/TaskRecord;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1140
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1152
    .end local v2    # "displayNdx":I
    :cond_3
    if-eqz v0, :cond_4

    iget v2, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    :goto_2
    return v2
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2025
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2026
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    .line 2027
    .local v2, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 2028
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2029
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2027
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2024
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "numStacks":I
    .end local v3    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2032
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;
    .locals 3
    .param p1, "displayId"    # I

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 289
    .local v1, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    iget v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v2, p1, :cond_0

    .line 290
    return-object v1

    .line 287
    .end local v1    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getActivityDisplay(Ljava/lang/String;)Lcom/android/server/wm/ActivityDisplay;
    .locals 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 276
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    .line 277
    .local v2, "isValid":Z
    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    return-object v1

    .line 274
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "isValid":Z
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;
    .locals 3
    .param p1, "displayId"    # I

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 303
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 304
    return-object v0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 308
    return-object v2

    .line 310
    :cond_1
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 311
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_2

    .line 313
    return-object v2

    .line 316
    :cond_2
    new-instance v2, Lcom/android/server/wm/ActivityDisplay;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/ActivityDisplay;-><init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V

    move-object v0, v2

    .line 317
    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/RootActivityContainer;->addChild(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 318
    return-object v0
.end method

.method getAllStackInfos()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1342
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1343
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 1344
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1345
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v4}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1341
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1348
    .end local v1    # "displayNdx":I
    :cond_1
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityDisplay;
    .locals 1
    .param p1, "index"    # I

    .line 1450
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityDisplay;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    return-object v0
.end method

.method getDefaultDisplayHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 327
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "userId"    # I

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "displayId"    # I

    .line 1496
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1497
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    .line 1498
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dumpVisibleStacksOnly"    # Z
    .param p3, "dumpFocusedStackOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 2350
    if-eqz p3, :cond_0

    .line 2351
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2355
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 2356
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 2357
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 2358
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2359
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2360
    :cond_1
    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2357
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2355
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2364
    .end local v2    # "displayNdx":I
    :cond_4
    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/TaskRecord;
    .param p4, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/wm/TaskRecord;",
            "Z)TT;"
        }
    .end annotation

    .line 1690
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .locals 17
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/TaskRecord;
    .param p4, "onTop"    # Z
    .param p5, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/wm/TaskRecord;",
            "Z",
            "Lcom/android/server/wm/LaunchParamsController$LaunchParams;",
            ")TT;"
        }
    .end annotation

    .line 1706
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    const/4 v0, -0x1

    .line 1707
    .local v0, "taskId":I
    const/4 v1, -0x1

    .line 1711
    .local v1, "displayId":I
    if-eqz v8, :cond_0

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    move v11, v0

    goto :goto_0

    .line 1711
    :cond_0
    move v11, v0

    .line 1718
    .end local v0    # "taskId":I
    .local v11, "taskId":I
    :goto_0
    const/4 v0, -0x1

    if-eq v11, v0, :cond_1

    .line 1720
    invoke-virtual {v8, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1721
    const/4 v2, 0x2

    move/from16 v12, p4

    invoke-virtual {v6, v11, v2, v8, v12}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 1723
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v8, v11}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1724
    if-eqz v2, :cond_2

    .line 1725
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 1718
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_1
    move/from16 v12, p4

    .line 1729
    :cond_2
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootActivityContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I

    move-result v13

    .line 1733
    .local v13, "activityType":I
    if-eqz v10, :cond_3

    iget v2, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v2, v0, :cond_3

    .line 1734
    iget v1, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    move v14, v1

    goto :goto_1

    .line 1736
    :cond_3
    move v14, v1

    .end local v1    # "displayId":I
    .local v14, "displayId":I
    :goto_1
    if-eq v14, v0, :cond_5

    invoke-direct {v6, v7, v14}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1737
    if-eqz v7, :cond_4

    .line 1738
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1740
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v0, :cond_4

    .line 1741
    return-object v0

    .line 1744
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_4
    invoke-virtual {v6, v14}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v15

    .line 1745
    .local v15, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v15, :cond_5

    .line 1746
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v13

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1747
    .restart local v0    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v0, :cond_5

    .line 1748
    return-object v0

    .line 1755
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    .end local v15    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_5
    const/4 v0, 0x0

    .line 1756
    .restart local v0    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    const/4 v1, 0x0

    .line 1757
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v9, :cond_6

    .line 1758
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1760
    :cond_6
    if-nez v0, :cond_7

    if-eqz v7, :cond_7

    .line 1761
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object v15, v0

    goto :goto_2

    .line 1763
    :cond_7
    move-object v15, v0

    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    .local v15, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :goto_2
    if-eqz v15, :cond_b

    .line 1764
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1765
    if-eqz v1, :cond_b

    iget v0, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {v6, v7, v0}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1766
    if-eqz v10, :cond_8

    iget v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_3

    .line 1767
    :cond_8
    const/4 v0, 0x0

    :goto_3
    nop

    .line 1768
    .local v0, "windowingMode":I
    if-nez v0, :cond_9

    .line 1769
    invoke-virtual {v1, v7, v8, v9, v13}, Lcom/android/server/wm/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    .line 1772
    :cond_9
    invoke-virtual {v15, v0, v13}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1773
    return-object v15

    .line 1775
    :cond_a
    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    .line 1776
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, v15, :cond_b

    .line 1777
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-ne v9, v2, :cond_b

    .line 1783
    return-object v15

    .line 1788
    .end local v0    # "windowingMode":I
    :cond_b
    if-eqz v1, :cond_d

    iget v0, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {v6, v7, v0}, Lcom/android/server/wm/RootActivityContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    move-object/from16 v16, v1

    goto :goto_5

    .line 1789
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1792
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v16, "display":Lcom/android/server/wm/ActivityDisplay;
    :goto_5
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v13

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "currentFocus"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 1919
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1920
    .local v0, "preferredDisplay":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1922
    .local v1, "preferredFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 1923
    return-object v1

    .line 1925
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->supportsSystemDecorations()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1929
    return-object v3

    .line 1933
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 1934
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 1935
    .local v4, "display":Lcom/android/server/wm/ActivityDisplay;
    if-ne v4, v0, :cond_2

    .line 1937
    goto :goto_1

    .line 1939
    :cond_2
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1941
    .local v5, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_3

    .line 1942
    return-object v5

    .line 1933
    .end local v4    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5    # "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1946
    .end local v2    # "i":I
    :cond_4
    return-object v3
.end method

.method getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "currentFocus"    # I

    .line 1960
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1961
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1962
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-ne v3, p2, :cond_0

    .line 1963
    goto :goto_1

    .line 1965
    :cond_0
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v3, p1, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1967
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 1968
    return-object v1

    .line 1960
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1971
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 1455
    const/4 v0, 0x0

    return-object v0
.end method

.method getRunningTasks(ILjava/util/List;IIIZ)V
    .locals 9
    .param p1, "maxNum"    # I
    .param p3, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p5, "callingUid"    # I
    .param p6, "allowed"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 2290
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;IILjava/util/ArrayList;IZ)V

    .line 2292
    return-void
.end method

.method protected getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 1266
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1267
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1268
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v1, :cond_0

    .line 1269
    return-object v1

    .line 1266
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1272
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    .line 1327
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1328
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 1329
    invoke-direct {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    return-object v1

    .line 1331
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 1335
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1336
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 705
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 706
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 707
    return-object v1

    .line 704
    .end local v1    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 710
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 6

    .line 714
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 715
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 716
    return-object v1

    .line 718
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 719
    .local v2, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_1

    .line 720
    return-object v2

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 725
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityDisplay;

    .line 726
    .local v4, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 727
    .local v5, "resumedActivityOnDisplay":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_2

    .line 728
    return-object v5

    .line 724
    .end local v4    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5    # "resumedActivityOnDisplay":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 731
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v0, "topActivityTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 682
    .local v1, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 683
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 685
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_2

    .line 686
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 688
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 689
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 690
    .local v6, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_1

    .line 691
    if-ne v5, v1, :cond_0

    .line 692
    const/4 v7, 0x0

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 694
    :cond_0
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v6    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 682
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 700
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1866
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 1654
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1655
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1656
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1657
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1658
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 1656
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1654
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1661
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 1975
    const/4 v0, 0x0

    .line 1976
    .local v0, "hasVisibleActivities":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1977
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1978
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 1979
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1980
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->handleAppDiedLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1978
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1976
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1983
    .end local v1    # "displayNdx":I
    :cond_1
    return v0
.end method

.method hasAwakeDisplay()Z
    .locals 4

    .line 1679
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1680
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1681
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1682
    return v1

    .line 1679
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1685
    .end local v0    # "displayNdx":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method invalidateTaskLayers()V
    .locals 1

    .line 1566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    .line 1567
    return-void
.end method

.method isDisplayAdded(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z
    .locals 2
    .param p1, "container"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "alwaysFocusable"    # Z

    .line 735
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    if-eqz v0, :cond_0

    .line 736
    return v1

    .line 739
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2271
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2272
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2273
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 2274
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 2275
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2276
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2277
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_0

    .line 2278
    return-object v5

    .line 2274
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2272
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2282
    .end local v1    # "displayNdx":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 743
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method lockAllProfileTasks(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 2135
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 2138
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2139
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2140
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2141
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 2142
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskRecord;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "taskNdx":I
    :goto_2
    if-ltz v5, :cond_1

    .line 2143
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskRecord;

    .line 2148
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    invoke-direct {p0, v6, p1}, Lcom/android/server/wm/RootActivityContainer;->taskTopActivityIsUser(Lcom/android/server/wm/TaskRecord;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2149
    iget-object v7, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v7

    iget v8, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v7, v8, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2139
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskRecord;>;"
    .end local v5    # "taskNdx":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2137
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2156
    .end local v0    # "displayNdx":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2157
    nop

    .line 2158
    return-void

    .line 2156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V
    .locals 23
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p3, "aspectRatio"    # F
    .param p4, "reason"    # Ljava/lang/String;

    .line 1010
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1012
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v11

    .line 1013
    .local v11, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1017
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v1, v9, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v0, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 1022
    :cond_0
    const/4 v1, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    const/4 v13, 0x1

    invoke-virtual {v11, v1, v2, v13}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    .line 1026
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v15, "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v14, p3

    invoke-virtual {v15, v14}, Lcom/android/server/wm/ActivityStack;->getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;

    move-result-object v8

    .line 1029
    .local v8, "destBounds":Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1033
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v22, v8

    .end local v8    # "destBounds":Landroid/graphics/Rect;
    .local v22, "destBounds":Landroid/graphics/Rect;
    move/from16 v8, v16

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 1037
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v1, v13, :cond_1

    .line 1039
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v0

    move-object v1, v15

    .end local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v21, p4

    :try_start_2
    invoke-virtual/range {v14 .. v21}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1064
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    goto :goto_1

    .line 1050
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    move-object v1, v15

    .end local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v4, v10, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1051
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v4, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1050
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 1053
    .local v2, "newTask":Lcom/android/server/wm/TaskRecord;
    const v3, 0x7fffffff

    const-string v4, "moveActivityToStack"

    invoke-virtual {v10, v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    .line 1056
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v21, p4

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1062
    .end local v2    # "newTask":Lcom/android/server/wm/TaskRecord;
    :goto_0
    iput-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1064
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    iget-object v0, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1065
    nop

    .line 1067
    const/4 v0, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .local v3, "destBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v2, v3, v0, v13}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v12, v12}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1077
    iget-object v0, v9, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    .line 1078
    return-void

    .line 1064
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v22    # "destBounds":Landroid/graphics/Rect;
    :catchall_1
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    goto :goto_1

    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v22    # "destBounds":Landroid/graphics/Rect;
    :catchall_2
    move-exception v0

    move-object/from16 v2, p2

    move-object v1, v15

    move-object/from16 v3, v22

    .end local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .restart local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    goto :goto_1

    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v8    # "destBounds":Landroid/graphics/Rect;
    .restart local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_3
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v1, v15

    .end local v8    # "destBounds":Landroid/graphics/Rect;
    .end local v15    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    :goto_1
    iget-object v4, v9, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveStackToDisplay(IIZ)V
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "onTop"    # Z

    .line 949
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 950
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_4

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 955
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_3

    .line 960
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 961
    .local v2, "currentDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v2, :cond_2

    .line 966
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-eq v3, p2, :cond_1

    .line 971
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not move stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to single task instance display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 978
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, p3, v3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V

    .line 980
    return-void

    .line 967
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to move stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to its current displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 962
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveStackToDisplay: Stack with stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not attached to any display."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 956
    .end local v2    # "currentDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveStackToDisplay: Unknown stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 951
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveStackToDisplay: Unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveTopStackActivityToPinnedStack(I)Z
    .locals 6
    .param p1, "stackId"    # I

    .line 983
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 984
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_2

    .line 989
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 990
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    const-string v3, "ActivityTaskManager"

    if-nez v1, :cond_0

    .line 991
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTopStackActivityToPinnedStack: No top running activity in stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v2

    .line 996
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    if-nez v4, :cond_1

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTopStackActivityToPinnedStack: Picture-In-Picture not supported for  r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return v2

    .line 1002
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 1004
    const/4 v2, 0x1

    return v2

    .line 985
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTopStackActivityToPinnedStack: Unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onChildPositionChanged(Lcom/android/server/wm/ActivityDisplay;I)V
    .locals 0
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "position"    # I

    .line 1461
    if-eqz p1, :cond_0

    .line 1462
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1464
    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1367
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display added displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1369
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1370
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-nez v1, :cond_1

    .line 1371
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1376
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1377
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v2}, Lcom/android/server/wm/RootActivityContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    .line 1379
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1380
    return-void

    .line 1379
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1406
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display changed displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1408
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1409
    .local v1, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v1, :cond_1

    .line 1410
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->onDisplayChanged()V

    .line 1412
    .end local v1    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1413
    return-void

    .line 1412
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1389
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display removed displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_0
    if-eqz p1, :cond_2

    .line 1394
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1395
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 1396
    .local v1, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-nez v1, :cond_1

    .line 1397
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1400
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->remove()V

    .line 1401
    .end local v1    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1402
    return-void

    .line 1401
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1391
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method prepareForShutdown()V
    .locals 3

    .line 1514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    iget v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    const-string v2, "shutdown"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RootActivityContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1517
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method putStacksToSleep(ZZ)Z
    .locals 6
    .param p1, "allowDelay"    # Z
    .param p2, "shuttingDown"    # Z

    .line 1631
    const/4 v0, 0x1

    .line 1632
    .local v0, "allSleep":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1633
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 1634
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 1638
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1639
    goto :goto_2

    .line 1642
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1643
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p1, :cond_1

    .line 1644
    invoke-virtual {v4, p2}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_2

    .line 1646
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 1634
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1632
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1650
    .end local v1    # "displayNdx":I
    :cond_3
    return v0
.end method

.method rankTaskLayersIfNeeded()V
    .locals 6

    .line 1570
    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_0

    .line 1571
    return-void

    .line 1573
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mTaskLayersChanged:Z

    .line 1574
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1575
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1576
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v2, 0x0

    .line 1577
    .local v2, "baseLayer":I
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1578
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1579
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->rankTaskLayers(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 1577
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1574
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "baseLayer":I
    .end local v3    # "stackNdx":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1582
    .end local v0    # "displayNdx":I
    :cond_2
    return-void
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1606
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getReleaseSomeActivitiesTasks()Landroid/util/ArraySet;

    move-result-object v0

    .line 1607
    .local v0, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/TaskRecord;>;"
    if-nez v0, :cond_1

    .line 1608
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityTaskManager"

    const-string v2, "Didn\'t find two or more tasks to release"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    return-void

    .line 1613
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1614
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1615
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1616
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    .line 1618
    .local v4, "stackCount":I
    const/4 v5, 0x0

    .local v5, "stackNdx":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 1619
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1621
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 1622
    return-void

    .line 1618
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1614
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4    # "stackCount":I
    .end local v5    # "stackNdx":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1626
    .end local v2    # "displayNdx":I
    :cond_4
    return-void
.end method

.method removeChild(Lcom/android/server/wm/ActivityDisplay;)V
    .locals 1
    .param p1, "activityDisplay"    # Lcom/android/server/wm/ActivityDisplay;

    .line 1492
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1493
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 2
    .param p1, "windowingModes"    # [I

    .line 2039
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2040
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStacksInWindowingModes([I)V

    .line 2039
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2042
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 2
    .param p1, "activityTypes"    # [I

    .line 2045
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2046
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStacksWithActivityTypes([I)V

    .line 2045
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2048
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 887
    return-void
.end method

.method resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .locals 11
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "tempTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p5, "preserveWindows"    # Z
    .param p6, "allowResizeInDockedMode"    # Z
    .param p7, "deferResume"    # Z

    .line 904
    move-object v1, p0

    move-object v2, p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v3, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v9, p5

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 907
    return-void

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    .line 911
    .local v3, "splitScreenActive":Z
    if-nez p6, :cond_1

    .line 912
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    .line 915
    return-void

    .line 918
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am.resizeStack_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 919
    iget-object v0, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 921
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_0

    .line 925
    :cond_2
    if-eqz v3, :cond_3

    .line 928
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 931
    :cond_3
    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 932
    if-nez p7, :cond_4

    .line 933
    nop

    .line 934
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 933
    move/from16 v6, p5

    :try_start_1
    invoke-virtual {p1, v0, v6}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 937
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 932
    :cond_4
    move/from16 v6, p5

    .line 937
    :goto_1
    iget-object v0, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 938
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 939
    nop

    .line 940
    return-void

    .line 937
    :catchall_1
    move-exception v0

    move/from16 v6, p5

    :goto_2
    iget-object v7, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 938
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "homeIntent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 515
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-interface {v1, p2, v0, v2, p1}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 521
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 519
    .end local v0    # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 522
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0
.end method

.method resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 1892
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1893
    .local v0, "activityType":I
    :goto_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 1894
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    .line 1896
    :cond_1
    if-eqz v0, :cond_2

    .line 1897
    return v0

    .line 1899
    :cond_2
    if-eqz p2, :cond_3

    .line 1900
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 1902
    :cond_3
    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "homeIntent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 424
    const/16 v0, 0x400

    .line 425
    .local v0, "flags":I
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 426
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 428
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/16 v3, 0x400

    if-eqz v1, :cond_0

    .line 430
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v3, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 432
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 435
    invoke-interface {v5, p2, v4, v3, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 436
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 437
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 442
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolvedType":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 440
    :catch_0
    move-exception v3

    .line 444
    :goto_1
    if-nez v2, :cond_2

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No home screen found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    const/4 v3, 0x0

    return-object v3

    .line 449
    :cond_2
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object v2, v3

    .line 450
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 451
    return-object v2
.end method

.method resolveSecondaryHomeActivity(II)Landroid/util/Pair;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "displayId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 456
    if-eqz p2, :cond_6

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 462
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 463
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 464
    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    const/4 v1, 0x0

    goto :goto_2

    .line 470
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 471
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 472
    .local v3, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 473
    .local v4, "size":I
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 474
    .local v5, "targetName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 475
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 476
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 479
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 480
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 481
    goto :goto_1

    .line 475
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 484
    .end local v6    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-lez v4, :cond_3

    .line 486
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 491
    .end local v3    # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "size":I
    .end local v5    # "targetName":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 492
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 493
    const/4 v1, 0x0

    .line 498
    :cond_4
    if-nez v1, :cond_5

    .line 499
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 500
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 502
    :cond_5
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 457
    .end local v0    # "homeIntent":Landroid/content/Intent;
    .end local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resolveSecondaryHomeActivity: Should not be DEFAULT_DISPLAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resumeFocusedStacksTopActivities()Z
    .locals 1

    .line 1156
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 8
    .param p1, "targetStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/app/ActivityOptions;

    .line 1162
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    const/4 v0, 0x0

    return v0

    .line 1166
    :cond_0
    const/4 v0, 0x0

    .line 1167
    .local v0, "result":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1169
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    .line 1172
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_9

    .line 1173
    const/4 v2, 0x0

    .line 1174
    .local v2, "resumedOnDisplay":Z
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 1175
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_7

    .line 1176
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1177
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1178
    .local v6, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v6, :cond_3

    .line 1179
    goto :goto_2

    .line 1181
    :cond_3
    if-ne v5, p1, :cond_4

    .line 1185
    or-int/2addr v2, v0

    .line 1186
    goto :goto_2

    .line 1188
    :cond_4
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1191
    invoke-virtual {v5, p3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1195
    iget v7, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-nez v7, :cond_6

    .line 1196
    iget-object v7, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v7, v6}, Lcom/android/server/wm/OpQuickReplyInjector;->resumeDefaultTopActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_2

    .line 1200
    :cond_5
    invoke-virtual {v6, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 1175
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v6    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1203
    .end local v4    # "stackNdx":I
    :cond_7
    if-nez v2, :cond_8

    .line 1208
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1209
    .local v4, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_8

    .line 1210
    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1172
    .end local v2    # "resumedOnDisplay":Z
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1215
    .end local v1    # "displayNdx":I
    :cond_9
    return v0
.end method

.method resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    const/4 v0, 0x0

    return v0

    .line 531
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 532
    const/4 p3, 0x0

    .line 535
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 536
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resumeHomeActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "myReason":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_2

    .line 540
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 541
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 543
    :cond_2
    iget v2, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, v2, v1, p3}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1595
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1596
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1597
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1598
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1599
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 1597
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1595
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1602
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .locals 3

    .line 2329
    iget-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2331
    iput-boolean v2, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    .line 2333
    :cond_0
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 10
    .param p1, "forceSend"    # Z
    .param p2, "targetActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2295
    move v0, p1

    .line 2297
    .local v0, "sendHint":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2299
    if-eqz p2, :cond_1

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    move v0, v3

    .line 2302
    :cond_2
    if-nez v0, :cond_9

    .line 2305
    const/4 v3, 0x1

    .line 2306
    .local v3, "noResumedActivities":Z
    const/4 v4, 0x1

    .line 2307
    .local v4, "allFocusedProcessesDiffer":Z
    const/4 v5, 0x0

    .local v5, "displayNdx":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 2308
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityDisplay;

    .line 2309
    .local v6, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 2311
    .local v7, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v7, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2313
    .local v8, "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :goto_3
    if-nez v8, :cond_4

    move v9, v2

    goto :goto_4

    :cond_4
    move v9, v1

    :goto_4
    and-int/2addr v3, v9

    .line 2314
    if-eqz v8, :cond_5

    .line 2315
    iget-object v9, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v2

    and-int/2addr v4, v9

    .line 2307
    .end local v6    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    .end local v7    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2318
    .end local v5    # "displayNdx":I
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    move v0, v1

    .line 2321
    .end local v3    # "noResumedActivities":Z
    .end local v4    # "allFocusedProcessesDiffer":Z
    :cond_9
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_a

    .line 2322
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2323
    iput-boolean v2, p0, Lcom/android/server/wm/RootActivityContainer;->mPowerHintSent:Z

    .line 2325
    :cond_a
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .locals 4
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 1505
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1506
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 1510
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1511
    return-void

    .line 1507
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setDockedStackMinimized(Z)V
    .locals 2
    .param p1, "minimized"    # Z

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1092
    .local v0, "current":Lcom/android/server/wm/ActivityStack;
    iput-boolean p1, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    .line 1093
    iget-boolean v1, p0, Lcom/android/server/wm/RootActivityContainer;->mIsDockMinimized:Z

    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    const-string v1, "setDockedStackMinimized"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    .line 1100
    :cond_0
    return-void
.end method

.method setWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/android/server/wm/RootWindowContainer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->setRootActivityContainer(Lcom/android/server/wm/RootActivityContainer;)V

    .line 235
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 6
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 238
    iput-object p1, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootActivityContainer;->setWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 242
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 245
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    array-length v2, v0

    const v3, 0x7fffffff

    if-ge v1, v2, :cond_1

    .line 246
    aget-object v2, v0, v1

    .line 247
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Lcom/android/server/wm/ActivityDisplay;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wm/ActivityDisplay;-><init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V

    .line 248
    .local v4, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    iget v5, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-nez v5, :cond_0

    .line 249
    iput-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 251
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->addChild(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 245
    .end local v2    # "display":Landroid/view/Display;
    .end local v4    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "displayNdx":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RootActivityContainer;->calculateDefaultMinimalSizeOfResizeableTasks()V

    .line 255
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 257
    .local v1, "defaultDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v4}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    .line 258
    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->positionChildAt(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 259
    return-void
.end method

.method shouldPlaceSecondaryHomeOnDisplay(I)Z
    .locals 5
    .param p1, "displayId"    # I

    .line 552
    if-eqz p1, :cond_7

    .line 555
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 556
    return v1

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v0, :cond_1

    .line 561
    return v1

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 565
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 567
    .local v0, "deviceProvisioned":Z
    :goto_0
    if-nez v0, :cond_3

    .line 569
    return v1

    .line 572
    :cond_3
    iget v3, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-static {v3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 574
    return v1

    .line 577
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 578
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->supportsSystemDecorations()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 583
    :cond_5
    return v2

    .line 580
    :cond_6
    :goto_1
    return v1

    .line 553
    .end local v0    # "deviceProvisioned":Z
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shouldPlaceSecondaryHomeOnDisplay: Should not be DEFAULT_DISPLAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startHomeOnAllDisplays(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "homeStarted":Z
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    iget v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 338
    .local v2, "displayId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 336
    .end local v2    # "displayId":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;I)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 353
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "allowInstrumenting"    # Z
    .param p5, "fromHomeKey"    # Z

    .line 371
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget p3, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 375
    :cond_0
    const/4 v0, 0x0

    .line 376
    .local v0, "homeIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 377
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez p3, :cond_1

    .line 378
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 379
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootActivityContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 382
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 383
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, p1}, Lcom/android/server/wm/OpActivityStarterInjector;->updateOtaWizardHomeIntent(Landroid/content/Intent;Landroid/content/Context;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 384
    .local v3, "newInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_2

    .line 385
    move-object v1, v3

    .line 386
    move-object v0, v2

    goto :goto_0

    .line 389
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "newInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootActivityContainer;->shouldPlaceSecondaryHomeOnDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->resolveSecondaryHomeActivity(II)Landroid/util/Pair;

    move-result-object v2

    .line 391
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 392
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    goto :goto_1

    .line 389
    .end local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    :cond_2
    :goto_0
    nop

    .line 394
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-nez v0, :cond_3

    goto :goto_2

    .line 398
    :cond_3
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result v3

    if-nez v3, :cond_4

    .line 399
    return v2

    .line 403
    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 404
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    const/4 v2, 0x1

    if-eqz p5, :cond_5

    .line 407
    const-string v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 411
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "myReason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V

    .line 415
    return v2

    .line 395
    .end local v3    # "myReason":Ljava/lang/String;
    :cond_6
    :goto_2
    return v2
.end method

.method startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 346
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_0

    .line 347
    iget v2, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    iget v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 344
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 350
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method switchUser(ILcom/android/server/am/UserState;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 841
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v0

    .line 843
    .local v0, "focusStackId":I
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 844
    .local v1, "dockedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 845
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 846
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v3

    .line 845
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 851
    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 853
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 854
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 855
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 856
    .local v3, "restoreStackId":I
    iput p1, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    .line 858
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    iget-object v4, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "displayNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 860
    iget-object v6, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityDisplay;

    .line 861
    .local v6, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v2

    .local v7, "stackNdx":I
    :goto_1
    if-ltz v7, :cond_2

    .line 862
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 863
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v8, p1}, Lcom/android/server/wm/ActivityStack;->switchUserLocked(I)V

    .line 864
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    .line 865
    .local v9, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v9, :cond_1

    .line 866
    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 861
    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 859
    .end local v6    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7    # "stackNdx":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 871
    .end local v4    # "displayNdx":I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 872
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_4

    .line 873
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 875
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    .line 876
    .local v4, "homeInFront":Z
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 877
    const-string v5, "switchUserOnHomeDisplay"

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_2

    .line 880
    :cond_5
    const/4 v6, 0x0

    const-string v7, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/wm/RootActivityContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    .line 882
    :goto_2
    return v4
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 2051
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2052
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2053
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 2054
    return-object v1

    .line 2051
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2057
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2014
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2015
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 2016
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2017
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2018
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2016
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2014
    .end local v1    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2021
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "fgApp":Lcom/android/server/wm/WindowProcessController;
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 755
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityDisplay;

    .line 756
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 757
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 758
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 759
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 760
    .local v5, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_0

    .line 761
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_2

    .line 762
    :cond_0
    iget-object v6, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_2

    .line 763
    iget-object v6, v4, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_2

    .line 756
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 754
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 771
    .end local v1    # "displayNdx":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v0, :cond_4

    iget-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v2, :cond_4

    .line 774
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 775
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    .line 777
    :cond_4
    return-void
.end method

.method updateUIDsPresentOnDisplay()V
    .locals 5

    .line 1417
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1418
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1419
    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay;

    .line 1421
    .local v1, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1422
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1423
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    .line 1422
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1418
    .end local v1    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1427
    .end local v0    # "displayNdx":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootActivityContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 1428
    return-void
.end method

.method updateUserStack(ILcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 894
    iget v0, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v1

    goto :goto_0

    .line 896
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 895
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 898
    :cond_1
    return-void
.end method

.method protected writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 2434
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2435
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2436
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2437
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mActivityDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityDisplay;

    .line 2438
    .local v3, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/ActivityDisplay;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2436
    .end local v3    # "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2440
    .end local v2    # "displayNdx":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/KeyguardController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2442
    invoke-virtual {p0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2443
    .local v2, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_2

    .line 2444
    iget v5, v2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2445
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2446
    .local v3, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    .line 2447
    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2449
    .end local v3    # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    goto :goto_1

    .line 2450
    :cond_2
    const/4 v5, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2452
    :goto_1
    const-wide v3, 0x10800000006L

    iget-object v5, p0, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v6, p0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    .line 2453
    invoke-virtual {v5, v6}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v5

    .line 2452
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2454
    iget-object v3, p0, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    const-wide v4, 0x20b00000007L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityStartController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2455
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2456
    return-void
.end method
