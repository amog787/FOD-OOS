.class Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStarter$Request;,
        Lcom/android/server/wm/ActivityStarter$DefaultFactory;,
        Lcom/android/server/wm/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/wm/ActivityStartController;

.field private mDoResume:Z

.field private mFrozeTaskList:Z

.field private mInTask:Lcom/android/server/wm/Task;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/wm/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field public mPerf:Landroid/util/BoostFramework;

.field private mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mPreferredWindowingMode:I

.field mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field private mRestrictedBgActivity:Z

.field private mReuseTask:Lcom/android/server/wm/Task;

.field private final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mSourceStack:Lcom/android/server/wm/ActivityStack;

.field mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/wm/ActivityStack;

.field private mTargetTask:Lcom/android/server/wm/Task;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/server/wm/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p3, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/wm/ActivityStartInterceptor;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 271
    new-instance v0, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 617
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 618
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 619
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 620
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 621
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 623
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 624
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2998
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2999
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    .line 3000
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v3, 0x1081

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 3001
    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v1

    iput v1, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 3006
    :cond_0
    const-string v1, "display"

    invoke-static {v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    .line 3008
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 3011
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    goto :goto_1

    .line 3009
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 3013
    :goto_1
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 3017
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 3020
    :cond_0
    const-string v0, "ActivityTaskManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_0

    .line 3025
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 3035
    :cond_2
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_0

    .line 3032
    :cond_3
    or-int/2addr p4, v0

    .line 3033
    goto :goto_0

    .line 3029
    :cond_4
    or-int/2addr p4, v0

    .line 3030
    nop

    .line 3039
    :goto_0
    return p4
.end method

.method private complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 9
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2390
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2391
    .local v0, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2393
    .local v3, "resetTask":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 2394
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2397
    :cond_1
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int v6, v4, v5

    if-ne v6, v5, :cond_2

    .line 2408
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->performClearTaskLocked()V

    .line 2409
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2410
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2411
    :cond_2
    const/high16 v5, 0x4000000

    and-int v6, v4, v5

    const/4 v7, 0x0

    if-nez v6, :cond_d

    .line 2412
    invoke-static {v4}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x3

    const/4 v6, 0x2

    .line 2413
    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    .line 2458
    :cond_3
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v4, v1, v5

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v4, :cond_5

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    .line 2463
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2464
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2465
    .local v1, "act":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_4

    .line 2466
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2467
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2468
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2469
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2470
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v7, v4, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2471
    .end local v2    # "task":Lcom/android/server/wm/Task;
    goto :goto_1

    .line 2472
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2474
    .end local v1    # "act":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    goto/16 :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2475
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_6

    goto/16 :goto_4

    .line 2478
    :cond_6
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v1, v4

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v1, :cond_9

    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2480
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_9

    .line 2486
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2487
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2489
    :cond_8
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto/16 :goto_4

    .line 2490
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2493
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2494
    :cond_a
    if-nez p2, :cond_15

    .line 2495
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2497
    :cond_b
    if-nez v3, :cond_c

    .line 2502
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2503
    :cond_c
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v1, :cond_15

    .line 2509
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_4

    .line 2417
    :cond_d
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {p1, v4, v5}, Lcom/android/server/wm/Task;->performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2427
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_e

    .line 2428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task addChild--finish: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2428
    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_10

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_f

    .line 2432
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_10

    .line 2434
    :cond_f
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 2437
    :cond_10
    if-eqz v4, :cond_12

    .line 2438
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2441
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2443
    :cond_11
    invoke-direct {p0, v4, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_3

    .line 2448
    :cond_12
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2449
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_14

    .line 2452
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2453
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2454
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v6, v2

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_13

    move v1, v2

    :cond_13
    invoke-virtual {v5, p1, v6, v1}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 2458
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_14
    :goto_3
    nop

    .line 2511
    :cond_15
    :goto_4
    return-void
.end method

.method private computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2147
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2148
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    :goto_0
    nop

    .line 2149
    .local v0, "sourceStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_1

    .line 2151
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 2153
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2154
    .local v1, "windowingMode":I
    :goto_1
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_4

    .line 2155
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2156
    const/4 v1, 0x4

    goto :goto_2

    .line 2157
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2158
    const/4 v1, 0x3

    .line 2162
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_5

    .line 2163
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2165
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2168
    .end local v1    # "windowingMode":I
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v2

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2170
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2171
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_3

    .line 2172
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2173
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2174
    return-void
.end method

.method private computeLaunchingTaskFlags()V
    .locals 10

    .line 2706
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2707
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2708
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2709
    .local v5, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_5

    .line 2717
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2718
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2723
    if-nez v5, :cond_0

    goto :goto_0

    .line 2724
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2725
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2719
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2720
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2732
    :cond_2
    :goto_0
    if-nez v5, :cond_3

    .line 2733
    const v6, 0x18082000

    .line 2735
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 2736
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2737
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2738
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2739
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2744
    .end local v6    # "flagsOfInterest":I
    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 2745
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 2748
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2751
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 2752
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_2

    .line 2710
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2711
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2753
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2759
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8

    .line 2760
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2761
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2765
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_b

    .line 2766
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_9

    .line 2769
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_b

    if-nez v0, :cond_b

    .line 2770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 2774
    :cond_9
    iget v0, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v2, :cond_a

    .line 2778
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 2779
    :cond_a
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2782
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2785
    :cond_b
    :goto_3
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .locals 1
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1793
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    .line 1794
    move v0, p2

    goto :goto_0

    .line 1795
    :cond_0
    if-ltz p0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1793
    :goto_0
    return v0
.end method

.method private computeSourceStack()V
    .locals 4

    .line 2788
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2789
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2790
    return-void

    .line 2792
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2793
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2794
    return-void

    .line 2801
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 2802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity called from finishing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2805
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2811
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2812
    .local v0, "sourceTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2814
    .end local v0    # "sourceTask":Lcom/android/server/wm/Task;
    :cond_3
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2815
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2816
    return-void
.end method

.method private computeTargetTask()Lcom/android/server/wm/Task;
    .locals 4

    .line 2123
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 2126
    return-object v1

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 2128
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 2129
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    .line 2130
    return-object v0

    .line 2132
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2134
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2135
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3

    .line 2136
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    .line 2139
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 2142
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 24
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "verificationBundle"    # Landroid/os/Bundle;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 1700
    move-object/from16 v9, p1

    if-eqz v9, :cond_0

    iget-boolean v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 1702
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 1703
    .local v11, "packageManager":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v15, p3

    move/from16 v14, p7

    invoke-virtual {v11, v15, v14}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v12

    .line 1704
    .local v12, "isRequesterInstantApp":Z
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move-object/from16 v7, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    goto :goto_0

    .line 1700
    .end local v11    # "packageManager":Landroid/content/pm/PackageManagerInternal;
    .end local v12    # "isRequesterInstantApp":Z
    :cond_0
    move-object/from16 v10, p0

    move-object/from16 v15, p3

    move/from16 v14, p7

    .line 1708
    :goto_0
    nop

    .line 1710
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    .line 1711
    const/4 v0, 0x0

    if-nez v9, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, v9, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 1717
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v20, v0

    goto :goto_2

    :cond_2
    iget-object v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v2

    .line 1718
    :goto_2
    if-nez v9, :cond_3

    move-object/from16 v21, v0

    goto :goto_3

    :cond_3
    iget-object v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v21, v2

    :goto_3
    if-eqz v9, :cond_4

    iget-boolean v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    move/from16 v22, v2

    .line 1720
    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    :goto_5
    move-object/from16 v23, v0

    .line 1708
    move-object/from16 v12, p2

    move-object v14, v1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move/from16 v19, p7

    invoke-static/range {v12 .. v23}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2987
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    .line 2988
    return-void

    .line 2991
    :cond_0
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 2992
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    .line 2994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2995
    return-void
.end method

.method private deliverToCurrentTopIfNeeded(Lcom/android/server/wm/ActivityStack;Lcom/android/server/uri/NeededUriGrants;)I
    .locals 6
    .param p1, "topStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2347
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2348
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2349
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v4, :cond_2

    .line 2351
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x2

    .line 2353
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2357
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v3, v4, :cond_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 2358
    .local v3, "dontStart":Z
    :goto_0
    if-nez v3, :cond_3

    .line 2359
    return v1

    .line 2363
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2364
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_4

    .line 2365
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 2367
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2368
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 2371
    return v2

    .line 2374
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2378
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v2, v4, v5, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 2381
    const/4 v1, 0x3

    return v1
.end method

.method private executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .locals 73
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 1012
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1018
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canActivityGo(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 1019
    return v13

    .line 1023
    :cond_0
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 1024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 1025
    const/4 v12, 0x0

    iput-object v12, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1027
    iget-object v11, v14, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 1028
    .local v11, "caller":Landroid/app/IApplicationThread;
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1029
    .local v0, "intent":Landroid/content/Intent;
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 1030
    .local v10, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 1031
    .local v9, "resolvedType":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1032
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1033
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1034
    .local v6, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 1035
    .local v5, "resultTo":Landroid/os/IBinder;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 1036
    .local v1, "resultWho":Ljava/lang/String;
    iget v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 1037
    .local v2, "requestCode":I
    iget v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 1038
    .local v4, "callingPid":I
    iget v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1039
    .local v3, "callingUid":I
    iget-object v12, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 1040
    .local v12, "callingPackage":Ljava/lang/String;
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 1041
    .local v13, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v25, v13

    .end local v13    # "callingFeatureId":Ljava/lang/String;
    .local v25, "callingFeatureId":Ljava/lang/String;
    iget v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 1042
    .local v13, "realCallingPid":I
    move-object/from16 v39, v10

    .end local v10    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v39, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 1043
    .local v10, "realCallingUid":I
    move/from16 v40, v13

    .end local v13    # "realCallingPid":I
    .local v40, "realCallingPid":I
    iget v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 1044
    .local v13, "startFlags":I
    move/from16 v41, v13

    .end local v13    # "startFlags":I
    .local v41, "startFlags":I
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 1045
    .local v13, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v26, v1

    .end local v1    # "resultWho":Ljava/lang/String;
    .local v26, "resultWho":Ljava/lang/String;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 1049
    .local v1, "inTask":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_1

    invoke-static {v12, v10, v0, v8}, Lcom/android/server/am/OpStartAppControlInjector;->canActivityGo(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1050
    const/16 v16, -0x5e

    return v16

    .line 1054
    :cond_1
    const/16 v19, 0x0

    .line 1057
    .local v19, "err":I
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v16

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 1059
    .local v16, "verificationBundle":Landroid/os/Bundle;
    :goto_0
    const/16 v20, 0x0

    .line 1060
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v42, v10

    .end local v10    # "realCallingUid":I
    .local v42, "realCallingUid":I
    const-string v10, "ActivityTaskManager"

    if-eqz v11, :cond_4

    .line 1061
    move-object/from16 v43, v1

    .end local v1    # "inTask":Lcom/android/server/wm/Task;
    .local v43, "inTask":Lcom/android/server/wm/Task;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v20

    .line 1072
    if-nez v20, :cond_3

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to find app for caller "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " (pid="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") when starting: "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/16 v19, -0x5e

    move/from16 v1, v19

    move-object/from16 v14, v20

    goto :goto_1

    .line 1072
    :cond_3
    move/from16 v1, v19

    move-object/from16 v14, v20

    goto :goto_1

    .line 1060
    .end local v43    # "inTask":Lcom/android/server/wm/Task;
    .restart local v1    # "inTask":Lcom/android/server/wm/Task;
    :cond_4
    move-object/from16 v43, v1

    .end local v1    # "inTask":Lcom/android/server/wm/Task;
    .restart local v43    # "inTask":Lcom/android/server/wm/Task;
    move/from16 v1, v19

    move-object/from16 v14, v20

    .line 1080
    .end local v19    # "err":I
    .end local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v1, "err":I
    .local v14, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_1
    if-eqz v8, :cond_5

    move-object/from16 v44, v11

    .end local v11    # "caller":Landroid/app/IApplicationThread;
    .local v44, "caller":Landroid/app/IApplicationThread;
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_6

    .line 1081
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    goto :goto_2

    .line 1080
    .end local v44    # "caller":Landroid/app/IApplicationThread;
    .restart local v11    # "caller":Landroid/app/IApplicationThread;
    :cond_5
    move-object/from16 v44, v11

    .line 1081
    .end local v11    # "caller":Landroid/app/IApplicationThread;
    .restart local v44    # "caller":Landroid/app/IApplicationThread;
    :cond_6
    const/4 v11, 0x0

    .line 1085
    .local v11, "userId":I
    :goto_2
    if-eqz v13, :cond_7

    .line 1086
    move-object/from16 v45, v6

    .end local v6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v45, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v13, v0, v8, v14, v6}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_3

    .end local v45    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    :cond_7
    move-object/from16 v45, v6

    .end local v6    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v45    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v63, v6

    .line 1087
    .local v63, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v63, :cond_8

    invoke-virtual/range {v63 .. v63}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1088
    invoke-virtual/range {v63 .. v63}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v58, v14

    .end local v14    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v58, "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v14, "OP_EXTRA_REMOTE_INPUT_DRAFT"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move/from16 v24, v6

    goto :goto_4

    .line 1087
    .end local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v14    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_8
    move-object/from16 v58, v14

    .line 1088
    .end local v14    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const/16 v24, 0x0

    .line 1089
    .local v24, "isFromSystemUI":Z
    :goto_4
    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1090
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v20

    .line 1089
    move-object/from16 v21, v0

    move-object/from16 v22, v7

    move/from16 v23, v3

    invoke-static/range {v19 .. v24}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1091
    const/4 v6, 0x0

    return v6

    .line 1098
    :cond_9
    invoke-static {v3, v0, v11}, Lcom/android/server/wm/OpActivityStarterInjector;->maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v14

    .line 1103
    .end local v0    # "intent":Landroid/content/Intent;
    .local v14, "intent":Landroid/content/Intent;
    invoke-static {v1, v8, v12, v3, v4}, Lcom/android/server/wm/OpActivityStarterInjector;->isAllowToLaunch(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;II)I

    move-result v0

    .line 1108
    .end local v1    # "err":I
    .local v0, "err":I
    invoke-static {v8, v3}, Lcom/android/server/wm/OpActivityStarterInjector;->isNotAllowToLaunchFactoryMode(Landroid/content/pm/ActivityInfo;I)Z

    move-result v1

    const/16 v19, 0x64

    if-eqz v1, :cond_a

    .line 1109
    return v19

    .line 1113
    :cond_a
    const-string v6, " pid "

    const-string v1, "} from uid "

    move-object/from16 v20, v12

    .end local v12    # "callingPackage":Ljava/lang/String;
    .local v20, "callingPackage":Ljava/lang/String;
    const-string v12, " {"

    move-object/from16 v21, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v21, "rInfo":Landroid/content/pm/ResolveInfo;
    const-string v7, "START u"

    const/16 v22, 0x80

    move-object/from16 v23, v9

    .end local v9    # "resolvedType":Ljava/lang/String;
    .local v23, "resolvedType":Ljava/lang/String;
    const/4 v9, 0x1

    if-nez v0, :cond_c

    .line 1116
    move/from16 v27, v0

    .end local v0    # "err":I
    .local v27, "err":I
    new-array v0, v9, [I

    const/16 v18, 0x0

    aput v22, v0, v18

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v0, :cond_b

    .line 1117
    invoke-virtual {v14, v9}, Landroid/content/Intent;->setDataStringSecure(Z)V

    .line 1120
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v46, v7

    move-object/from16 v59, v12

    const/4 v7, 0x0

    invoke-virtual {v14, v9, v9, v9, v7}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-static {v14}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    goto :goto_5

    .line 1113
    .end local v27    # "err":I
    .restart local v0    # "err":I
    :cond_c
    move/from16 v27, v0

    move-object/from16 v46, v7

    move-object/from16 v59, v12

    .line 1137
    .end local v0    # "err":I
    .restart local v27    # "err":I
    :goto_5
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, v8}, Lcom/android/server/wm/OpQuickReplyInjector;->killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V

    .line 1139
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v7, v15, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v14, v0, v7}, Lcom/android/server/wm/OpQuickReplyInjector;->exitQuicReplyOnCameraStart(Landroid/content/Intent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;)V

    .line 1142
    const/4 v0, 0x0

    .line 1143
    .local v0, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    const/4 v7, 0x0

    .line 1144
    .local v7, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_f

    .line 1145
    iget-object v12, v15, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v12, v5}, Lcom/android/server/wm/RootWindowContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1146
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v12, :cond_d

    .line 1147
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Will send result to "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_d
    if-eqz v0, :cond_e

    .line 1150
    if-ltz v2, :cond_e

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v9, :cond_e

    .line 1151
    move-object v7, v0

    move-object v12, v0

    goto :goto_6

    .line 1156
    :cond_e
    move-object v12, v0

    goto :goto_6

    .line 1144
    :cond_f
    move-object v12, v0

    .line 1156
    .end local v0    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v12, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_6
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v64

    .line 1157
    .local v64, "launchFlags":I
    const/high16 v0, 0x2000000

    and-int v0, v64, v0

    if-eqz v0, :cond_14

    if-eqz v12, :cond_14

    .line 1160
    if-ltz v2, :cond_10

    .line 1161
    invoke-static {v13}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1162
    const/16 v0, -0x5d

    return v0

    .line 1164
    :cond_10
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1165
    .end local v7    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1166
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_7

    .line 1168
    :cond_11
    move-object v7, v0

    .end local v0    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_7
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1169
    .end local v26    # "resultWho":Ljava/lang/String;
    .local v0, "resultWho":Ljava/lang/String;
    iget v2, v12, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1170
    const/4 v9, 0x0

    iput-object v9, v12, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1171
    if-eqz v7, :cond_12

    .line 1172
    invoke-virtual {v7, v12, v0, v2}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1174
    :cond_12
    iget v9, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v9, v3, :cond_13

    .line 1185
    iget-object v9, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1186
    .end local v20    # "callingPackage":Ljava/lang/String;
    .local v9, "callingPackage":Ljava/lang/String;
    move-object/from16 v26, v0

    .end local v0    # "resultWho":Ljava/lang/String;
    .restart local v26    # "resultWho":Ljava/lang/String;
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object/from16 v67, v0

    move/from16 v65, v2

    move-object/from16 v66, v7

    move-object/from16 v20, v26

    .end local v25    # "callingFeatureId":Ljava/lang/String;
    .local v0, "callingFeatureId":Ljava/lang/String;
    goto :goto_8

    .line 1174
    .end local v9    # "callingPackage":Ljava/lang/String;
    .end local v26    # "resultWho":Ljava/lang/String;
    .local v0, "resultWho":Ljava/lang/String;
    .restart local v20    # "callingPackage":Ljava/lang/String;
    .restart local v25    # "callingFeatureId":Ljava/lang/String;
    :cond_13
    move-object/from16 v26, v0

    .end local v0    # "resultWho":Ljava/lang/String;
    .restart local v26    # "resultWho":Ljava/lang/String;
    move/from16 v65, v2

    move-object/from16 v66, v7

    move-object/from16 v9, v20

    move-object/from16 v67, v25

    move-object/from16 v20, v26

    goto :goto_8

    .line 1190
    :cond_14
    move/from16 v65, v2

    move-object/from16 v66, v7

    move-object/from16 v9, v20

    move-object/from16 v67, v25

    move-object/from16 v20, v26

    .end local v2    # "requestCode":I
    .end local v7    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v25    # "callingFeatureId":Ljava/lang/String;
    .end local v26    # "resultWho":Ljava/lang/String;
    .restart local v9    # "callingPackage":Ljava/lang/String;
    .local v20, "resultWho":Ljava/lang/String;
    .local v65, "requestCode":I
    .local v66, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v67, "callingFeatureId":Ljava/lang/String;
    :goto_8
    if-nez v27, :cond_15

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1193
    const/16 v0, -0x5b

    .end local v27    # "err":I
    .local v0, "err":I
    goto :goto_9

    .line 1196
    .end local v0    # "err":I
    .restart local v27    # "err":I
    :cond_15
    move/from16 v0, v27

    .end local v27    # "err":I
    .restart local v0    # "err":I
    :goto_9
    if-nez v0, :cond_16

    if-nez v8, :cond_16

    .line 1199
    const/16 v0, -0x5c

    move v2, v0

    goto :goto_a

    .line 1202
    :cond_16
    move v2, v0

    .end local v0    # "err":I
    .local v2, "err":I
    :goto_a
    const-string v7, "Failure checking voice capabilities"

    if-nez v2, :cond_1b

    if-eqz v12, :cond_1b

    .line 1203
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1a

    .line 1208
    const/high16 v0, 0x10000000

    and-int v0, v64, v0

    if-nez v0, :cond_18

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v48, v1

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_19

    .line 1211
    :try_start_0
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1213
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1212
    move-object/from16 v60, v12

    move-object/from16 v12, v23

    .end local v23    # "resolvedType":Ljava/lang/String;
    .local v12, "resolvedType":Ljava/lang/String;
    .local v60, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :try_start_1
    invoke-interface {v0, v1, v14, v12}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1216
    const/16 v0, -0x61

    move v2, v0

    .line 1221
    :cond_17
    goto :goto_c

    .line 1218
    :catch_0
    move-exception v0

    goto :goto_b

    .end local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v12, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v23    # "resolvedType":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v60, v12

    move-object/from16 v12, v23

    .line 1219
    .end local v23    # "resolvedType":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .local v12, "resolvedType":Ljava/lang/String;
    .restart local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_b
    invoke-static {v10, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    const/16 v2, -0x61

    goto :goto_c

    .line 1208
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v12, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v23    # "resolvedType":Ljava/lang/String;
    :cond_18
    move-object/from16 v48, v1

    :cond_19
    move-object/from16 v60, v12

    move-object/from16 v12, v23

    .end local v23    # "resolvedType":Ljava/lang/String;
    .local v12, "resolvedType":Ljava/lang/String;
    .restart local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    goto :goto_c

    .line 1203
    .end local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v12, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v23    # "resolvedType":Ljava/lang/String;
    :cond_1a
    move-object/from16 v48, v1

    move-object/from16 v60, v12

    move-object/from16 v12, v23

    .end local v23    # "resolvedType":Ljava/lang/String;
    .local v12, "resolvedType":Ljava/lang/String;
    .restart local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    goto :goto_c

    .line 1202
    .end local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v12, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v23    # "resolvedType":Ljava/lang/String;
    :cond_1b
    move-object/from16 v48, v1

    move-object/from16 v60, v12

    move-object/from16 v12, v23

    .line 1225
    .end local v23    # "resolvedType":Ljava/lang/String;
    .local v12, "resolvedType":Ljava/lang/String;
    .restart local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_c
    if-nez v2, :cond_1d

    if-eqz v45, :cond_1d

    .line 1229
    :try_start_2
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, v14, v12}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1233
    const/16 v0, -0x61

    move v2, v0

    .line 1238
    :cond_1c
    move/from16 v23, v2

    goto :goto_d

    .line 1235
    :catch_2
    move-exception v0

    .line 1236
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v10, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1237
    const/16 v2, -0x61

    move/from16 v23, v2

    goto :goto_d

    .line 1241
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    move/from16 v23, v2

    .end local v2    # "err":I
    .local v23, "err":I
    :goto_d
    if-nez v66, :cond_1e

    .line 1242
    const/16 v38, 0x0

    goto :goto_e

    :cond_1e
    invoke-virtual/range {v66 .. v66}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object/from16 v38, v0

    .line 1244
    .local v38, "resultStack":Lcom/android/server/wm/ActivityStack;
    :goto_e
    if-eqz v23, :cond_20

    .line 1245
    if-eqz v66, :cond_1f

    .line 1246
    const/16 v29, -0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v66

    move-object/from16 v30, v20

    move/from16 v31, v65

    invoke-virtual/range {v28 .. v34}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1249
    :cond_1f
    invoke-static {v13}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1250
    return v23

    .line 1253
    :cond_20
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v7, p1

    iget-boolean v1, v7, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    if-eqz v43, :cond_21

    const/16 v35, 0x1

    goto :goto_f

    :cond_21
    const/16 v35, 0x0

    :goto_f
    move-object/from16 v25, v0

    move-object/from16 v26, v14

    move-object/from16 v27, v8

    move-object/from16 v28, v20

    move/from16 v29, v65

    move/from16 v30, v4

    move/from16 v31, v3

    move-object/from16 v32, v9

    move-object/from16 v33, v67

    move/from16 v34, v1

    move-object/from16 v36, v58

    move-object/from16 v37, v66

    invoke-virtual/range {v25 .. v38}, Lcom/android/server/wm/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1256
    .local v0, "abort":Z
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v43

    move-object/from16 v68, v48

    .end local v43    # "inTask":Lcom/android/server/wm/Task;
    .local v32, "inTask":Lcom/android/server/wm/Task;
    move-object/from16 v25, v2

    move-object v2, v14

    move/from16 v33, v3

    .end local v3    # "callingUid":I
    .local v33, "callingUid":I
    move/from16 v34, v4

    .end local v4    # "callingPid":I
    .local v34, "callingPid":I
    move-object/from16 v35, v5

    .end local v5    # "resultTo":Landroid/os/IBinder;
    .local v35, "resultTo":Landroid/os/IBinder;
    move-object v5, v12

    move-object/from16 v26, v12

    move-object/from16 v36, v45

    move-object v12, v6

    .end local v12    # "resolvedType":Ljava/lang/String;
    .end local v45    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v26, "resolvedType":Ljava/lang/String;
    .local v36, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v6, v25

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    const/16 v25, 0x1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 1258
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v1

    move/from16 v6, v33

    .end local v33    # "callingUid":I
    .local v6, "callingUid":I
    invoke-virtual {v1, v14, v6, v9}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int v27, v0, v1

    .line 1261
    .end local v0    # "abort":Z
    .local v27, "abort":Z
    const/16 v28, 0x0

    .line 1262
    .local v28, "restrictedBgActivity":Z
    if-nez v27, :cond_22

    .line 1264
    const-wide/16 v4, 0x20

    :try_start_3
    const-string v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1266
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, p0

    move v2, v6

    move/from16 v29, v3

    move/from16 v3, v34

    move-wide/from16 v30, v4

    move-object v4, v9

    move/from16 v5, v42

    move/from16 v33, v6

    .end local v6    # "callingUid":I
    .restart local v33    # "callingUid":I
    move/from16 v6, v40

    move-object/from16 v37, v12

    move-object/from16 v69, v46

    move-object v12, v7

    move-object/from16 v7, v58

    move/from16 v43, v11

    move-object v11, v8

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v43, "userId":I
    move-object v8, v0

    move-object/from16 v70, v9

    move-object/from16 v45, v26

    .end local v9    # "callingPackage":Ljava/lang/String;
    .end local v26    # "resolvedType":Ljava/lang/String;
    .local v45, "resolvedType":Ljava/lang/String;
    .local v70, "callingPackage":Ljava/lang/String;
    move/from16 v9, v29

    move-object/from16 v71, v10

    move-object v10, v14

    :try_start_4
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v28, v0

    .line 1271
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 1272
    move/from16 v72, v28

    goto :goto_11

    .line 1271
    :catchall_0
    move-exception v0

    goto :goto_10

    .end local v33    # "callingUid":I
    .end local v43    # "userId":I
    .end local v45    # "resolvedType":Ljava/lang/String;
    .end local v70    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "callingUid":I
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "callingPackage":Ljava/lang/String;
    .local v11, "userId":I
    .restart local v26    # "resolvedType":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-wide/from16 v30, v4

    move/from16 v33, v6

    move-object v12, v7

    move-object/from16 v70, v9

    move/from16 v43, v11

    move-object/from16 v45, v26

    move-object v11, v8

    .end local v6    # "callingUid":I
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "callingPackage":Ljava/lang/String;
    .end local v26    # "resolvedType":Ljava/lang/String;
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "callingUid":I
    .restart local v43    # "userId":I
    .restart local v45    # "resolvedType":Ljava/lang/String;
    .restart local v70    # "callingPackage":Ljava/lang/String;
    :goto_10
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 1272
    throw v0

    .line 1262
    .end local v33    # "callingUid":I
    .end local v43    # "userId":I
    .end local v45    # "resolvedType":Ljava/lang/String;
    .end local v70    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "callingUid":I
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "callingPackage":Ljava/lang/String;
    .local v11, "userId":I
    .restart local v26    # "resolvedType":Ljava/lang/String;
    :cond_22
    move/from16 v33, v6

    move-object/from16 v70, v9

    move-object/from16 v71, v10

    move/from16 v43, v11

    move-object/from16 v37, v12

    move-object/from16 v45, v26

    move-object/from16 v69, v46

    move-object v12, v7

    move-object v11, v8

    .end local v6    # "callingUid":I
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "callingPackage":Ljava/lang/String;
    .end local v26    # "resolvedType":Ljava/lang/String;
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "callingUid":I
    .restart local v43    # "userId":I
    .restart local v45    # "resolvedType":Ljava/lang/String;
    .restart local v70    # "callingPackage":Ljava/lang/String;
    move/from16 v72, v28

    .line 1276
    .end local v28    # "restrictedBgActivity":Z
    .local v72, "restrictedBgActivity":Z
    :goto_11
    if-eqz v13, :cond_23

    .line 1277
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v10, v58

    .end local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v10, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v13, v14, v11, v10, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_12

    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_23
    move-object/from16 v10, v58

    .end local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const/4 v0, 0x0

    .line 1278
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_12
    iget-boolean v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v1, :cond_24

    .line 1279
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 1280
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v1

    .line 1281
    move-object/from16 v9, v70

    .end local v70    # "callingPackage":Ljava/lang/String;
    .restart local v9    # "callingPackage":Ljava/lang/String;
    invoke-virtual {v1, v9, v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v46, v0

    goto :goto_13

    .line 1278
    .end local v9    # "callingPackage":Ljava/lang/String;
    .restart local v70    # "callingPackage":Ljava/lang/String;
    :cond_24
    move-object/from16 v9, v70

    .end local v70    # "callingPackage":Ljava/lang/String;
    .restart local v9    # "callingPackage":Ljava/lang/String;
    move-object/from16 v46, v0

    .line 1283
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v46, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_13
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_25

    .line 1287
    :try_start_5
    invoke-virtual {v14}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 1288
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v8, 0x1

    xor-int/2addr v1, v8

    or-int v27, v27, v1

    .line 1292
    .end local v0    # "watchIntent":Landroid/content/Intent;
    move/from16 v0, v27

    goto :goto_15

    .line 1290
    :catch_3
    move-exception v0

    const/4 v8, 0x1

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_14

    .line 1283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    const/4 v8, 0x1

    .line 1295
    :goto_14
    move/from16 v0, v27

    .end local v27    # "abort":Z
    .local v0, "abort":Z
    :goto_15
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v25, v1

    move/from16 v26, v43

    move/from16 v27, v40

    move/from16 v28, v42

    move/from16 v29, v41

    move-object/from16 v30, v9

    move-object/from16 v31, v67

    invoke-virtual/range {v25 .. v31}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object v2, v14

    move-object/from16 v3, v21

    move-object v4, v11

    move-object/from16 v5, v45

    move-object/from16 v6, v32

    move/from16 v7, v34

    move-object/from16 v58, v10

    move v10, v8

    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v8, v33

    move-object/from16 v70, v9

    .end local v9    # "callingPackage":Ljava/lang/String;
    .restart local v70    # "callingPackage":Ljava/lang/String;
    move-object/from16 v9, v46

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1301
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1302
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1303
    .end local v21    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1304
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1305
    .end local v45    # "resolvedType":Ljava/lang/String;
    .local v9, "resolvedType":Ljava/lang/String;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1306
    .end local v32    # "inTask":Lcom/android/server/wm/Task;
    .local v1, "inTask":Lcom/android/server/wm/Task;
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v4, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1307
    .end local v34    # "callingPid":I
    .restart local v4    # "callingPid":I
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v3, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1308
    .end local v33    # "callingUid":I
    .restart local v3    # "callingUid":I
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 1312
    .end local v46    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v2, "checkedOptions":Landroid/app/ActivityOptions;
    const/4 v5, 0x0

    move-object/from16 v21, v1

    move-object/from16 v39, v2

    .end local v39    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v5, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_16

    .line 1297
    .end local v1    # "inTask":Lcom/android/server/wm/Task;
    .end local v2    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v3    # "callingUid":I
    .end local v4    # "callingPid":I
    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v32    # "inTask":Lcom/android/server/wm/Task;
    .restart local v33    # "callingUid":I
    .restart local v34    # "callingPid":I
    .restart local v39    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v45    # "resolvedType":Ljava/lang/String;
    .restart local v46    # "checkedOptions":Landroid/app/ActivityOptions;
    :cond_26
    move-object v8, v11

    move-object/from16 v7, v21

    move-object/from16 v21, v32

    move/from16 v3, v33

    move/from16 v4, v34

    move-object/from16 v5, v39

    move-object/from16 v9, v45

    move-object/from16 v39, v46

    .line 1315
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "inTask":Lcom/android/server/wm/Task;
    .end local v33    # "callingUid":I
    .end local v34    # "callingPid":I
    .end local v45    # "resolvedType":Ljava/lang/String;
    .end local v46    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v3    # "callingUid":I
    .restart local v4    # "callingPid":I
    .restart local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    .local v21, "inTask":Lcom/android/server/wm/Task;
    .local v39, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_16
    if-eqz v0, :cond_28

    .line 1316
    if-eqz v66, :cond_27

    .line 1317
    const/16 v29, -0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v66

    move-object/from16 v30, v20

    move/from16 v31, v65

    invoke-virtual/range {v28 .. v34}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1322
    :cond_27
    invoke-static/range {v39 .. v39}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1323
    const/16 v1, 0x66

    return v1

    .line 1329
    :cond_28
    if-eqz v8, :cond_2f

    .line 1330
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v6, v43

    .end local v43    # "userId":I
    .local v6, "userId":I
    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1332
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v46, 0x2

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    new-array v2, v10, [Landroid/content/Intent;

    const/4 v11, 0x0

    aput-object v14, v2, v11

    move/from16 v33, v0

    .end local v0    # "abort":Z
    .local v33, "abort":Z
    new-array v0, v10, [Ljava/lang/String;

    aput-object v9, v0, v11

    const/high16 v56, 0x50000000

    const/16 v57, 0x0

    move-object/from16 v45, v1

    move-object/from16 v47, v70

    move-object/from16 v48, v67

    move/from16 v49, v3

    move/from16 v50, v6

    move-object/from16 v54, v2

    move-object/from16 v55, v0

    invoke-virtual/range {v45 .. v57}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1338
    .local v0, "target":Landroid/content/IIntentSender;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1340
    .local v1, "newIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 1341
    .local v2, "flags":I
    const/high16 v11, 0x800000

    or-int/2addr v2, v11

    .line 1352
    const/high16 v11, 0x10080000

    and-int/2addr v11, v2

    if-eqz v11, :cond_29

    .line 1353
    const/high16 v11, 0x8000000

    or-int/2addr v2, v11

    .line 1355
    :cond_29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1357
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    new-instance v10, Landroid/content/IntentSender;

    invoke-direct {v10, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v11, "android.intent.extra.INTENT"

    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1359
    if-eqz v66, :cond_2a

    .line 1360
    const-string v10, "android.intent.extra.RESULT_NEEDED"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1362
    :cond_2a
    move-object v14, v1

    .line 1366
    const/4 v5, 0x0

    .line 1368
    const/4 v9, 0x0

    .line 1369
    move/from16 v3, v42

    .line 1370
    move/from16 v4, v40

    .line 1372
    iget-object v10, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v31, 0x0

    iget v11, v12, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1373
    move-object/from16 v25, v7

    move/from16 v7, v42

    .end local v42    # "realCallingUid":I
    .local v7, "realCallingUid":I
    .local v25, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v3, v7, v11}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v32

    .line 1372
    move-object/from16 v27, v10

    move-object/from16 v28, v14

    move-object/from16 v29, v9

    move/from16 v30, v6

    invoke-virtual/range {v27 .. v32}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1375
    .end local v25    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v26, v1

    move/from16 v17, v2

    move/from16 v1, v41

    const/4 v2, 0x0

    .end local v2    # "flags":I
    .end local v41    # "startFlags":I
    .local v1, "startFlags":I
    .local v17, "flags":I
    .local v26, "newIntent":Landroid/content/Intent;
    invoke-virtual {v11, v14, v10, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1378
    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v11, :cond_2d

    .line 1379
    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1380
    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 1383
    .local v11, "focusedStack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v28, v0

    const/4 v2, 0x1

    .end local v0    # "target":Landroid/content/IIntentSender;
    .local v28, "target":Landroid/content/IIntentSender;
    new-array v0, v2, [I

    const/16 v18, 0x0

    aput v22, v0, v18

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v0, :cond_2b

    .line 1384
    invoke-virtual {v14, v2}, Landroid/content/Intent;->setDataStringSecure(Z)V

    .line 1387
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v69

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v59

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v41, v1

    move-object/from16 v18, v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .end local v1    # "startFlags":I
    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v18, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v41    # "startFlags":I
    invoke-virtual {v14, v1, v1, v1, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v68

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " on display "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    if-nez v11, :cond_2c

    move v5, v2

    goto :goto_17

    .line 1397
    :cond_2c
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v5

    :goto_17
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1387
    move-object/from16 v5, v71

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1378
    .end local v11    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v28    # "target":Landroid/content/IIntentSender;
    .end local v41    # "startFlags":I
    .restart local v0    # "target":Landroid/content/IIntentSender;
    .restart local v1    # "startFlags":I
    .restart local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :cond_2d
    move-object/from16 v28, v0

    move/from16 v41, v1

    move-object/from16 v18, v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1406
    .end local v0    # "target":Landroid/content/IIntentSender;
    .end local v1    # "startFlags":I
    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v17    # "flags":I
    .end local v26    # "newIntent":Landroid/content/Intent;
    .restart local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v41    # "startFlags":I
    :goto_18
    move-object v0, v10

    move-object v10, v14

    move-object/from16 v5, v18

    goto :goto_1a

    .line 1330
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v33    # "abort":Z
    .local v0, "abort":Z
    .restart local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v42    # "realCallingUid":I
    :cond_2e
    move/from16 v33, v0

    move-object/from16 v25, v7

    move v1, v10

    move/from16 v7, v42

    const/4 v2, 0x0

    .end local v0    # "abort":Z
    .end local v42    # "realCallingUid":I
    .local v7, "realCallingUid":I
    .restart local v25    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v33    # "abort":Z
    goto :goto_19

    .line 1329
    .end local v6    # "userId":I
    .end local v25    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v33    # "abort":Z
    .restart local v0    # "abort":Z
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v42    # "realCallingUid":I
    .restart local v43    # "userId":I
    :cond_2f
    move/from16 v33, v0

    move-object/from16 v25, v7

    move v1, v10

    move/from16 v7, v42

    move/from16 v6, v43

    const/4 v2, 0x0

    .line 1406
    .end local v0    # "abort":Z
    .end local v42    # "realCallingUid":I
    .end local v43    # "userId":I
    .restart local v6    # "userId":I
    .local v7, "realCallingUid":I
    .restart local v25    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v33    # "abort":Z
    :goto_19
    move-object v10, v14

    move-object/from16 v0, v25

    .end local v14    # "intent":Landroid/content/Intent;
    .end local v25    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "intent":Landroid/content/Intent;
    :goto_1a
    if-eqz v0, :cond_30

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v11, :cond_30

    .line 1407
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v11, v12, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    move/from16 v34, v6

    move-object v6, v11

    move-object/from16 v22, v44

    .end local v6    # "userId":I
    .end local v44    # "caller":Landroid/app/IApplicationThread;
    .local v22, "caller":Landroid/app/IApplicationThread;
    .local v34, "userId":I
    move-object/from16 v11, p0

    move-object/from16 v37, v60

    const/4 v1, 0x0

    .end local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v37, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object v12, v14

    move/from16 v14, v41

    move-object/from16 v41, v13

    .end local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v14, "startFlags":I
    .local v41, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object v13, v6

    move-object/from16 v6, p1

    move v2, v14

    move-object/from16 v42, v58

    .end local v14    # "startFlags":I
    .end local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v2, "startFlags":I
    .local v42, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v14, v70

    move-object v1, v15

    move-object/from16 v15, v67

    move-object/from16 v17, v9

    move/from16 v18, v34

    invoke-direct/range {v11 .. v18}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 1409
    const/4 v9, 0x0

    .line 1410
    move v3, v7

    .line 1411
    move/from16 v4, v40

    .line 1415
    const/4 v5, 0x0

    .line 1417
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v0, v2, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto :goto_1b

    .line 1406
    .end local v2    # "startFlags":I
    .end local v22    # "caller":Landroid/app/IApplicationThread;
    .end local v34    # "userId":I
    .end local v37    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v42    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v6    # "userId":I
    .restart local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v41, "startFlags":I
    .restart local v44    # "caller":Landroid/app/IApplicationThread;
    .restart local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_30
    move/from16 v34, v6

    move-object v6, v12

    move-object v1, v15

    move/from16 v2, v41

    move-object/from16 v22, v44

    move-object/from16 v42, v58

    move-object/from16 v37, v60

    move-object/from16 v41, v13

    .line 1420
    .end local v6    # "userId":I
    .end local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v44    # "caller":Landroid/app/IApplicationThread;
    .end local v58    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v60    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "startFlags":I
    .restart local v22    # "caller":Landroid/app/IApplicationThread;
    .restart local v34    # "userId":I
    .restart local v37    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v41, "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v42    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .end local v3    # "callingUid":I
    .end local v4    # "callingPid":I
    .end local v5    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .local v12, "callingUid":I
    .local v13, "callingPid":I
    .local v14, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v15, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v17, "resolvedType":Ljava/lang/String;
    .local v18, "intent":Landroid/content/Intent;
    :goto_1b
    new-instance v3, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1422
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v54

    iget-boolean v5, v6, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    if-eqz v36, :cond_31

    const/16 v59, 0x1

    goto :goto_1c

    :cond_31
    const/16 v59, 0x0

    :goto_1c
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v60, v8

    move-object/from16 v44, v3

    move-object/from16 v45, v4

    move-object/from16 v46, v42

    move/from16 v47, v13

    move/from16 v48, v12

    move-object/from16 v49, v70

    move-object/from16 v50, v67

    move-object/from16 v51, v18

    move-object/from16 v52, v17

    move-object/from16 v53, v15

    move-object/from16 v55, v66

    move-object/from16 v56, v20

    move/from16 v57, v65

    move/from16 v58, v5

    move-object/from16 v61, v39

    move-object/from16 v62, v37

    invoke-direct/range {v44 .. v62}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    move-object v11, v3

    .line 1425
    .local v11, "r":Lcom/android/server/wm/ActivityRecord;
    iput-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1427
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v3, :cond_32

    move-object/from16 v10, v37

    .end local v37    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v10, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v10, :cond_33

    .line 1430
    iget-object v3, v10, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v3, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_1d

    .line 1427
    .end local v10    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v37    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_32
    move-object/from16 v10, v37

    .line 1433
    .end local v37    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_33
    :goto_1d
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v37

    .line 1437
    .local v37, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v36, :cond_37

    if-eqz v37, :cond_37

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1438
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v7, :cond_37

    .line 1439
    :cond_34
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v30, "Activity start"

    move-object/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v12

    move/from16 v28, v40

    move/from16 v29, v7

    invoke-virtual/range {v25 .. v30}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 1441
    if-eqz v72, :cond_35

    invoke-direct {v1, v11}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1442
    :cond_35
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    new-instance v4, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v26, v4

    move-object/from16 v27, v11

    move-object/from16 v28, v10

    move/from16 v29, v2

    move-object/from16 v30, v37

    move-object/from16 v31, v42

    move-object/from16 v32, v14

    invoke-direct/range {v26 .. v32}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 1445
    :cond_36
    invoke-static/range {v39 .. v39}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1446
    return v19

    .line 1450
    :cond_37
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->onStartActivitySetDidAppSwitch()V

    .line 1451
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 1453
    iget-object v5, v6, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/4 v8, 0x1

    move-object v9, v1

    move-object/from16 v1, p0

    move/from16 v19, v2

    move/from16 v25, v4

    .end local v2    # "startFlags":I
    .local v19, "startFlags":I
    move-object v2, v11

    move-object v3, v10

    move-object/from16 v4, v36

    move/from16 v26, v12

    move-object v12, v6

    .end local v12    # "callingUid":I
    .local v26, "callingUid":I
    move/from16 v6, v19

    move/from16 v27, v7

    .end local v7    # "realCallingUid":I
    .local v27, "realCallingUid":I
    move v7, v8

    move-object/from16 v8, v39

    move-object/from16 v9, v21

    move-object/from16 v28, v10

    .end local v10    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v28, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move/from16 v10, v72

    move-object/from16 v29, v11

    .end local v11    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v29, "r":Lcom/android/server/wm/ActivityRecord;
    move-object v11, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v1

    move-object/from16 v2, p0

    iput v1, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 1457
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_38

    .line 1458
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v3, v1, v25

    .line 1461
    :cond_38
    iget v1, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    return v1

    .line 1013
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "callingPid":I
    .end local v14    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "verificationBundle":Landroid/os/Bundle;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "startFlags":I
    .end local v20    # "resultWho":Ljava/lang/String;
    .end local v21    # "inTask":Lcom/android/server/wm/Task;
    .end local v22    # "caller":Landroid/app/IApplicationThread;
    .end local v23    # "err":I
    .end local v24    # "isFromSystemUI":Z
    .end local v26    # "callingUid":I
    .end local v27    # "realCallingUid":I
    .end local v28    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v29    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v33    # "abort":Z
    .end local v34    # "userId":I
    .end local v35    # "resultTo":Landroid/os/IBinder;
    .end local v36    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v38    # "resultStack":Lcom/android/server/wm/ActivityStack;
    .end local v39    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v40    # "realCallingPid":I
    .end local v41    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v42    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v63    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v64    # "launchFlags":I
    .end local v65    # "requestCode":I
    .end local v66    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v67    # "callingFeatureId":Ljava/lang/String;
    .end local v70    # "callingPackage":Ljava/lang/String;
    .end local v72    # "restrictedBgActivity":Z
    :cond_39
    move-object v12, v14

    move-object v2, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need to specify a reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getExternalResult(I)I
    .locals 1
    .param p0, "result"    # I

    .line 1490
    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 3047
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0, p1, v1}, Lcom/android/server/wm/OpQuickReplyInjector;->enableFreeFormWindowManagement(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 3051
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 3052
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 3055
    :cond_0
    if-eqz p4, :cond_1

    .line 3056
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 3057
    .local v5, "onTop":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method private getReusableTask()Lcom/android/server/wm/Task;
    .locals 10

    .line 2824
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2825
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2826
    .local v0, "launchTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 2827
    return-object v0

    .line 2829
    :cond_0
    return-object v1

    .line 2837
    .end local v0    # "launchTask":Lcom/android/server/wm/Task;
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 2839
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v5

    .line 2843
    .local v0, "putIntoExistingTask":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_5

    move v2, v6

    goto :goto_1

    :cond_5
    move v2, v5

    :goto_1
    and-int/2addr v0, v2

    .line 2844
    const/4 v2, 0x0

    .line 2845
    .local v2, "intentActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_9

    .line 2846
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v4, v7, :cond_6

    .line 2849
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2850
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    .line 2849
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_2

    .line 2851
    :cond_6
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_8

    .line 2854
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v3, v9, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {v4, v7, v8, v5}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_2

    .line 2858
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2859
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2863
    :cond_9
    :goto_2
    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2864
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2865
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v3, v4, :cond_b

    .line 2867
    const/4 v2, 0x0

    .line 2870
    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_c
    return-object v1
.end method

.method private handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 12
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1471
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1472
    .local v0, "abort":Z
    if-nez v0, :cond_0

    .line 1473
    const/4 v1, 0x0

    return v1

    .line 1475
    :cond_0
    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1476
    .local v9, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1477
    .local v10, "resultWho":Ljava/lang/String;
    iget v11, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1478
    .local v11, "requestCode":I
    if-eqz v9, :cond_1

    .line 1479
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1484
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1485
    return v1
.end method

.method private handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;
    .locals 7
    .param p1, "started"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I

    .line 1844
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1845
    .local v0, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1847
    .local v1, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1848
    if-eqz v1, :cond_1

    .line 1852
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1853
    .local v2, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1854
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1855
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    const/4 v6, 0x0

    .line 1854
    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1859
    .end local v2    # "currentTop":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    return-object v1

    .line 1865
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1866
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_3

    .line 1867
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "startActivity"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1871
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1872
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->hasActivity()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1873
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1874
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 1875
    const/4 v1, 0x0

    .line 1877
    :cond_4
    return-object v1
.end method

.method private isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2177
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2178
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2183
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2184
    const/16 v0, -0x5c

    return v0

    .line 2190
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_2

    .line 2191
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot launch home on display area "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const/16 v0, -0x60

    return v0

    .line 2198
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {p3, v0}, Lcom/android/server/wm/Task;->isUidPresent(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2199
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abort background activity starts from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/16 v0, 0x66

    return v0

    .line 2207
    :cond_4
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v3, 0x10008000

    and-int/2addr v0, v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_5

    goto :goto_0

    :cond_5
    move v1, v4

    :goto_0
    move v0, v1

    .line 2210
    .local v0, "isNewClearTask":Z
    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    const/16 v1, 0x65

    return v1

    .line 2216
    :cond_6
    return v4
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 3066
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .locals 1
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I

    .line 3062
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

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

.method private onExecutionComplete()V
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    .line 1499
    return-void
.end method

.method private prepareRequest(Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/ActivityStarter$Request;
    .locals 26
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 802
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v12, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 803
    .local v12, "caller":Landroid/app/IApplicationThread;
    iget-object v13, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 804
    .local v13, "intent":Landroid/content/Intent;
    iget-object v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 805
    .local v14, "aInfo":Landroid/content/pm/ActivityInfo;
    iget v15, v2, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 806
    .local v15, "requestCode":I
    iget v3, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 807
    .local v3, "callingPid":I
    iget v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 808
    .local v4, "callingUid":I
    iget-object v11, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 809
    .local v11, "callingPackage":Ljava/lang/String;
    iget v10, v2, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 810
    .local v10, "startFlags":I
    iget-object v9, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 811
    .local v9, "options":Lcom/android/server/wm/SafeActivityOptions;
    if-eqz v14, :cond_0

    iget-object v5, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 812
    iget-object v5, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v8, v5

    .line 814
    .local v8, "userId":I
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 815
    const/4 v5, 0x0

    .line 816
    .local v5, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v12, :cond_2

    .line 817
    :try_start_1
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v6

    move-object v5, v6

    .line 818
    if-eqz v5, :cond_1

    .line 819
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v6

    move v3, v6

    .line 820
    iget-object v6, v5, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v6

    move v6, v3

    move-object/from16 v16, v5

    move v5, v4

    goto :goto_1

    .line 818
    :cond_1
    move v6, v3

    move-object/from16 v16, v5

    move v5, v4

    goto :goto_1

    .line 865
    .end local v5    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    move-object/from16 v20, v12

    move-object/from16 v24, v14

    move v6, v15

    move v14, v10

    move-object v15, v11

    goto/16 :goto_4

    .line 816
    .restart local v5    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_2
    move v6, v3

    move-object/from16 v16, v5

    move v5, v4

    .line 831
    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    .local v16, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_1
    :try_start_2
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move v4, v3

    .line 832
    .local v4, "callingUserId":I
    invoke-static {v14}, Lcom/android/server/wm/OpActivityStarterInjector;->getTargetPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, "targetPkgName":Ljava/lang/String;
    const/4 v0, 0x1

    move-object/from16 v18, v3

    .end local v3    # "targetPkgName":Ljava/lang/String;
    .local v18, "targetPkgName":Ljava/lang/String;
    new-array v3, v0, [I

    const/16 v19, 0x1a

    const/16 v17, 0x0

    aput v19, v3, v17

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v3, :cond_7

    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    .line 834
    move-object/from16 v19, v18

    .end local v18    # "targetPkgName":Ljava/lang/String;
    .local v19, "targetPkgName":Ljava/lang/String;
    move-object v3, v12

    move/from16 v18, v4

    .end local v4    # "callingUserId":I
    .local v18, "callingUserId":I
    move v4, v15

    move-object/from16 v20, v12

    move v12, v5

    .end local v5    # "callingUid":I
    .local v12, "callingUid":I
    .local v20, "caller":Landroid/app/IApplicationThread;
    move-object/from16 v5, v19

    move/from16 v21, v6

    .end local v6    # "callingPid":I
    .local v21, "callingPid":I
    move v6, v8

    move-object/from16 v22, v7

    move-object v7, v11

    move v2, v8

    .end local v8    # "userId":I
    .local v2, "userId":I
    move/from16 v8, v18

    move-object/from16 v23, v9

    .end local v9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v23, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object v9, v14

    move-object/from16 v24, v14

    move v14, v10

    .end local v10    # "startFlags":I
    .local v14, "startFlags":I
    .local v24, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object v10, v13

    move/from16 v25, v15

    move-object v15, v11

    .end local v11    # "callingPackage":Ljava/lang/String;
    .local v15, "callingPackage":Ljava/lang/String;
    .local v25, "requestCode":I
    move-object/from16 v11, v23

    :try_start_3
    invoke-static/range {v3 .. v11}, Lcom/android/server/wm/OpActivityStarterInjector;->checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;ILjava/lang/String;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 837
    nop

    .line 838
    move-object/from16 v3, v19

    .end local v19    # "targetPkgName":Ljava/lang/String;
    .restart local v3    # "targetPkgName":Ljava/lang/String;
    invoke-static {v3, v15}, Lcom/android/server/wm/OpActivityStarterInjector;->getBackUserIdFromStoredCallingRelation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 840
    .local v4, "backUserId":I
    const/16 v5, -0x2710

    if-eq v4, v5, :cond_4

    .line 844
    if-eq v4, v2, :cond_3

    .line 845
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v13, v4, v0, v14, v12}, Lcom/android/server/wm/OpActivityStarterInjector;->resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 847
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    move v2, v4

    move v8, v2

    move/from16 v6, v25

    move-object v2, v0

    goto/16 :goto_3

    .line 865
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "targetPkgName":Ljava/lang/String;
    .end local v4    # "backUserId":I
    .end local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v18    # "callingUserId":I
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v0

    move-object/from16 v5, p1

    move v8, v2

    move v4, v12

    move/from16 v3, v21

    move/from16 v6, v25

    goto/16 :goto_4

    .line 844
    .restart local v3    # "targetPkgName":Ljava/lang/String;
    .restart local v4    # "backUserId":I
    .restart local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v18    # "callingUserId":I
    :cond_3
    move/from16 v6, v25

    goto/16 :goto_2

    .line 850
    :cond_4
    :try_start_5
    const-string v5, "android.intent.extra.IS_FROM_CHOOSER_ACTIVITY"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_5

    .line 853
    move/from16 v5, v18

    .end local v18    # "callingUserId":I
    .local v5, "callingUserId":I
    :try_start_6
    invoke-static {v3, v15, v5}, Lcom/android/server/wm/OpActivityStarterInjector;->storeCallingRelation(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v6, v25

    goto :goto_2

    .line 856
    .end local v5    # "callingUserId":I
    .restart local v18    # "callingUserId":I
    :cond_5
    move/from16 v5, v18

    .end local v18    # "callingUserId":I
    .restart local v5    # "callingUserId":I
    :try_start_7
    const-string v6, "android.intent.extra.IS_FROM_CHOOSER_ACTIVITY"

    invoke-virtual {v13, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 857
    move/from16 v6, v25

    .end local v25    # "requestCode":I
    .local v6, "requestCode":I
    :try_start_8
    invoke-static {v13, v6}, Lcom/android/server/wm/OpActivityStarterInjector;->toChooserActivity(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    move-object v13, v0

    .line 858
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 859
    const/4 v7, 0x0

    invoke-static {v13, v7, v0, v14, v12}, Lcom/android/server/wm/OpActivityStarterInjector;->resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 861
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    move v8, v2

    move-object v2, v0

    goto :goto_3

    .line 865
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "targetPkgName":Ljava/lang/String;
    .end local v4    # "backUserId":I
    .end local v5    # "callingUserId":I
    .end local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_2
    move-exception v0

    move-object/from16 v5, p1

    move v8, v2

    move v4, v12

    move/from16 v3, v21

    goto/16 :goto_4

    .line 834
    .end local v6    # "requestCode":I
    .restart local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v18    # "callingUserId":I
    .restart local v19    # "targetPkgName":Ljava/lang/String;
    .restart local v25    # "requestCode":I
    :cond_6
    move/from16 v5, v18

    move-object/from16 v3, v19

    move/from16 v6, v25

    .end local v18    # "callingUserId":I
    .end local v19    # "targetPkgName":Ljava/lang/String;
    .end local v25    # "requestCode":I
    .restart local v3    # "targetPkgName":Ljava/lang/String;
    .restart local v5    # "callingUserId":I
    .restart local v6    # "requestCode":I
    goto :goto_2

    .line 865
    .end local v3    # "targetPkgName":Ljava/lang/String;
    .end local v5    # "callingUserId":I
    .end local v6    # "requestCode":I
    .end local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v25    # "requestCode":I
    :catchall_3
    move-exception v0

    move/from16 v6, v25

    move-object/from16 v5, p1

    move v8, v2

    move v4, v12

    move/from16 v3, v21

    .end local v25    # "requestCode":I
    .restart local v6    # "requestCode":I
    goto/16 :goto_4

    .line 833
    .end local v2    # "userId":I
    .end local v20    # "caller":Landroid/app/IApplicationThread;
    .end local v21    # "callingPid":I
    .end local v23    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v4, "callingUserId":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    .restart local v8    # "userId":I
    .restart local v9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v10    # "startFlags":I
    .restart local v11    # "callingPackage":Ljava/lang/String;
    .local v12, "caller":Landroid/app/IApplicationThread;
    .local v14, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v15, "requestCode":I
    .restart local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v18, "targetPkgName":Ljava/lang/String;
    :cond_7
    move/from16 v21, v6

    move-object/from16 v22, v7

    move v2, v8

    move-object/from16 v23, v9

    move-object/from16 v20, v12

    move-object/from16 v24, v14

    move v6, v15

    move-object/from16 v3, v18

    move v12, v5

    move v14, v10

    move-object v15, v11

    move v5, v4

    .line 865
    .end local v4    # "callingUserId":I
    .end local v5    # "callingUid":I
    .end local v8    # "userId":I
    .end local v9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v10    # "startFlags":I
    .end local v11    # "callingPackage":Ljava/lang/String;
    .end local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v18    # "targetPkgName":Ljava/lang/String;
    .restart local v2    # "userId":I
    .local v6, "requestCode":I
    .local v12, "callingUid":I
    .local v14, "startFlags":I
    .local v15, "callingPackage":Ljava/lang/String;
    .restart local v20    # "caller":Landroid/app/IApplicationThread;
    .restart local v21    # "callingPid":I
    .restart local v23    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_2
    move v8, v2

    move-object/from16 v2, v24

    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "userId":I
    :goto_3
    :try_start_9
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 869
    invoke-static {v13, v8}, Lcom/oneplus/android/os/OpParallelStorage;->updateSharedParalleledIntentIfNeeded(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 871
    .end local v13    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    move-object/from16 v5, p1

    iput-object v0, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 872
    iput-object v2, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 873
    move/from16 v3, v21

    .end local v21    # "callingPid":I
    .local v3, "callingPid":I
    iput v3, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 874
    iput v12, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 876
    return-object v5

    .line 865
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "callingPid":I
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v21    # "callingPid":I
    :catchall_4
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v3, v21

    move-object/from16 v24, v2

    move v4, v12

    .end local v21    # "callingPid":I
    .restart local v3    # "callingPid":I
    goto :goto_4

    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "callingPid":I
    .end local v20    # "caller":Landroid/app/IApplicationThread;
    .end local v23    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .local v6, "callingPid":I
    .restart local v9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v10    # "startFlags":I
    .restart local v11    # "callingPackage":Ljava/lang/String;
    .local v12, "caller":Landroid/app/IApplicationThread;
    .local v14, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v15, "requestCode":I
    :catchall_5
    move-exception v0

    move v3, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    move-object/from16 v20, v12

    move-object/from16 v24, v14

    move v6, v15

    move v12, v5

    move v14, v10

    move-object v15, v11

    move-object v5, v2

    move v2, v8

    move v4, v12

    .end local v5    # "callingUid":I
    .end local v8    # "userId":I
    .end local v9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v10    # "startFlags":I
    .end local v11    # "callingPackage":Ljava/lang/String;
    .local v2, "userId":I
    .restart local v3    # "callingPid":I
    .local v6, "requestCode":I
    .local v12, "callingUid":I
    .local v14, "startFlags":I
    .local v15, "callingPackage":Ljava/lang/String;
    .restart local v20    # "caller":Landroid/app/IApplicationThread;
    .restart local v23    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_4

    .end local v2    # "userId":I
    .end local v6    # "requestCode":I
    .end local v20    # "caller":Landroid/app/IApplicationThread;
    .end local v23    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v4, "callingUid":I
    .restart local v8    # "userId":I
    .restart local v9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v10    # "startFlags":I
    .restart local v11    # "callingPackage":Ljava/lang/String;
    .local v12, "caller":Landroid/app/IApplicationThread;
    .local v14, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v15, "requestCode":I
    :catchall_6
    move-exception v0

    move-object v5, v2

    move-object/from16 v22, v7

    move v2, v8

    move-object/from16 v23, v9

    move-object/from16 v20, v12

    move-object/from16 v24, v14

    move v6, v15

    move v14, v10

    move-object v15, v11

    .end local v9    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v10    # "startFlags":I
    .end local v11    # "callingPackage":Ljava/lang/String;
    .end local v12    # "caller":Landroid/app/IApplicationThread;
    .restart local v6    # "requestCode":I
    .local v14, "startFlags":I
    .local v15, "callingPackage":Ljava/lang/String;
    .restart local v20    # "caller":Landroid/app/IApplicationThread;
    .restart local v23    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_4
    :try_start_a
    monitor-exit v22
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_4
.end method

.method private resolveToHeavyWeightSwitcherIfNeeded()I
    .locals 18

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 891
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 893
    return v2

    .line 896
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 897
    .local v1, "heavy":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_8

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 898
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 902
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 903
    .local v3, "appCallingUid":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_4

    .line 904
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 905
    .local v4, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v4, :cond_3

    .line 906
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    .line 908
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") when starting: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 909
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 911
    const/16 v2, -0x5e

    return v2

    .line 915
    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_4
    :goto_0
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x2

    const/4 v8, 0x0

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    new-array v14, v4, [Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    aput-object v7, v14, v2

    new-array v15, v4, [Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    aput-object v7, v15, v2

    const/high16 v16, 0x50000000

    const/16 v17, 0x0

    const-string v7, "android"

    move v9, v3

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v5

    .line 923
    .local v5, "target":Landroid/content/IIntentSender;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 924
    .local v6, "newIntent":Landroid/content/Intent;
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    if-ltz v7, :cond_5

    .line 926
    const-string v7, "has_result"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 928
    :cond_5
    new-instance v7, Landroid/content/IntentSender;

    invoke-direct {v7, v5}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v8, "intent"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 929
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 930
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "new_app"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 933
    const-class v7, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 934
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 933
    const-string v8, "android"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v6, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 936
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 937
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v8, v7, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 938
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    iput v9, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 939
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    iput v9, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 940
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 941
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v10, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v12, v7, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v13, 0x0

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v15, v15, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 943
    invoke-static {v7, v14, v15}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v14

    .line 941
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 945
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 946
    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_6
    iput-object v8, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 947
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_7

    .line 948
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v7, v8, v9}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 952
    :cond_7
    return v2

    .line 899
    .end local v3    # "appCallingUid":I
    .end local v5    # "target":Landroid/content/IIntentSender;
    .end local v6    # "newIntent":Landroid/content/Intent;
    :cond_8
    :goto_1
    return v2

    .line 888
    .end local v1    # "heavy":Lcom/android/server/wm/WindowProcessController;
    :cond_9
    :goto_2
    return v2
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .line 2951
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2952
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    .line 2954
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2956
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 2957
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 8

    .line 2690
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2695
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2699
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2701
    :cond_0
    return-void
.end method

.method private setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/wm/Task;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "restrictedBgActivity"    # Z

    .line 2567
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 2569
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2570
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2571
    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2572
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2573
    move-object/from16 v15, p6

    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2574
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2575
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2576
    move/from16 v6, p9

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2578
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2582
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/16 v16, 0x0

    move-object/from16 v2, p3

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move/from16 v7, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2584
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2585
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    .line 2586
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2587
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2589
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2591
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v13

    :goto_1
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v13

    :goto_2
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2593
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 2591
    invoke-direct {v0, v9, v1, v4, v6}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2594
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_3

    .line 2595
    invoke-direct {v0, v5, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v13

    :goto_3
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2598
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 2600
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_4

    .line 2601
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2606
    :cond_4
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 2607
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_5

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_6

    .line 2609
    :cond_5
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2615
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_4

    :cond_7
    move v2, v13

    :goto_4
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2616
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() => mUserLeaving="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_8
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2623
    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_a

    .line 2624
    :cond_9
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2625
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2628
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v4, 0x0

    if-eqz v1, :cond_e

    .line 2629
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2630
    invoke-virtual {v9, v3}, Lcom/android/server/wm/ActivityRecord;->setTaskOverlay(Z)V

    .line 2631
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2632
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2633
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    .line 2632
    invoke-virtual {v1, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2634
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_b

    .line 2635
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_5

    :cond_b
    move-object v5, v4

    .line 2636
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    :goto_5
    if-eqz v5, :cond_c

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2640
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2641
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2643
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_c
    goto :goto_6

    .line 2644
    :cond_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2645
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2646
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2650
    :cond_e
    :goto_6
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x1000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_f

    move-object v1, v15

    goto :goto_7

    :cond_f
    move-object v1, v4

    :goto_7
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2652
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2657
    if-eqz v10, :cond_10

    iget-boolean v1, v10, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v1, :cond_10

    .line 2658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2662
    :cond_10
    iput v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2666
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_13

    .line 2667
    move-object/from16 v1, p6

    .line 2668
    .local v1, "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 2669
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2670
    .local v2, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_11

    .line 2671
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2674
    .end local v2    # "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_11
    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2675
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2677
    :cond_12
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2681
    .end local v1    # "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_8

    :cond_14
    move v1, v13

    :goto_8
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2683
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2684
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2685
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2687
    :cond_15
    return-void
.end method

.method private setNewTask(Lcom/android/server/wm/Task;)V
    .locals 11
    .param p1, "taskToAffiliate"    # Lcom/android/server/wm/Task;

    .line 2960
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    .line 2961
    .local v7, "toTop":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2962
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_1
    move-object v3, v0

    .line 2963
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    :goto_2
    move-object v4, v0

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2961
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityStack;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2965
    .local v0, "task":Lcom/android/server/wm/Task;
    const-string v2, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 2969
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpQuickReplyInjector;->updateLaunchParams(Landroid/app/ActivityOptions;Ljava/lang/String;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating New task bounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v3, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2972
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    .line 2976
    :cond_3
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_4

    .line 2977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting new activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in new task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2978
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2977
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :cond_4
    if-eqz p1, :cond_5

    .line 2982
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 2984
    :cond_5
    return-void
.end method

.method private setTargetStackIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 13
    .param p1, "intentActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2880
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2881
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2882
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2888
    .local v0, "intentTask":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v2, v3, :cond_4

    .line 2889
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2890
    .local v2, "focusStack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_0

    .line 2891
    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2892
    .local v3, "curTop":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 2893
    .local v4, "topTask":Lcom/android/server/wm/Task;
    :goto_1
    if-ne v4, v0, :cond_3

    if-eqz v2, :cond_2

    .line 2894
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v10

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v9

    :goto_3
    move v2, v5

    .line 2895
    .end local v3    # "curTop":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "topTask":Lcom/android/server/wm/Task;
    .local v2, "differentTopTask":Z
    move v11, v2

    goto :goto_4

    .line 2897
    .end local v2    # "differentTopTask":Z
    :cond_4
    const/4 v2, 0x1

    move v11, v2

    .line 2900
    .local v11, "differentTopTask":Z
    :goto_4
    if-eqz v11, :cond_a

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v2, :cond_a

    .line 2901
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2902
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2903
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2904
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v2, v3, :cond_a

    .line 2906
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_6

    .line 2907
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 2910
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2911
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 2912
    .local v12, "launchStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v12, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-ne v12, v2, :cond_7

    goto :goto_5

    .line 2936
    :cond_7
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "reparentToTargetStack"

    move-object v2, v0

    move-object v3, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2938
    iput-boolean v9, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 2916
    :cond_8
    :goto_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isTopSplitScreenStack()Z

    move-result v2

    .line 2920
    .local v2, "isSplitScreenTopStack":Z
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-eq v3, v0, :cond_9

    .line 2921
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v3, v4, :cond_9

    .line 2922
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v4, v0, v10}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2924
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2931
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/4 v8, 0x1

    const-string v9, "bringingFoundTaskToFront"

    move-object v4, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 2934
    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2935
    .end local v2    # "isSplitScreenTopStack":Z
    nop

    .line 2940
    :goto_6
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2945
    .end local v12    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2946
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2947
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2946
    invoke-virtual {v1, v0, v10, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 2948
    return-void
.end method

.method private startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/Task;
    .param p9, "restrictedBgActivity"    # Z
    .param p10, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 1807
    const/16 v0, -0x60

    .line 1810
    .local v0, "result":I
    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1811
    const-string v4, "startActivityInner"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1814
    invoke-static {p1, p2}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1818
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1820
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1823
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1824
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1825
    .local v2, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1828
    invoke-static {v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1830
    nop

    .line 1832
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 1834
    return v0

    .line 1823
    .end local v2    # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1824
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1825
    .restart local v2    # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1828
    invoke-static {v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1830
    throw v4
.end method

.method private waitForResult(ILcom/android/server/wm/ActivityRecord;)I
    .locals 6
    .param p1, "res"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 959
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput p1, v0, Landroid/app/WaitResult;->result:I

    .line 960
    const/4 v0, 0x2

    if-eqz p1, :cond_5

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v4, :cond_0

    goto/16 :goto_3

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-boolean v3, v0, Landroid/app/WaitResult;->timeout:Z

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 978
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-wide v1, v0, Landroid/app/WaitResult;->totalTime:J

    .line 979
    goto/16 :goto_3

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 983
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :goto_0
    iput v4, v0, Landroid/app/WaitResult;->launchState:I

    .line 986
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-boolean v3, v0, Landroid/app/WaitResult;->timeout:Z

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-wide v1, v0, Landroid/app/WaitResult;->totalTime:J

    goto :goto_3

    .line 991
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V

    .line 995
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    goto :goto_1

    .line 996
    :catch_0
    move-exception v0

    .line 998
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-boolean v0, v0, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v0, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    goto :goto_3

    .line 962
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 967
    goto :goto_2

    .line 966
    :catch_1
    move-exception v1

    .line 968
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget v1, v1, Landroid/app/WaitResult;->result:I

    if-eq v1, v0, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-boolean v1, v1, Landroid/app/WaitResult;->timeout:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v1, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    .line 970
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget v1, v1, Landroid/app/WaitResult;->result:I

    if-ne v1, v0, :cond_8

    .line 971
    const/4 p1, 0x2

    .line 1003
    :cond_8
    :goto_3
    return p1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3267
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3268
    const-string v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3269
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3270
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3271
    const-string v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3272
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3274
    const-string v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3275
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3277
    const-string v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3278
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3279
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3280
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3281
    const-string v0, "mLastStartActivityRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3282
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3284
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 3285
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3286
    const-string v0, "mStartActivity:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3287
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3289
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 3290
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3291
    const-string v0, "mIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3292
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3294
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_3

    .line 3295
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3296
    const-string v0, "mOptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3297
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3299
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3300
    const-string v0, "mLaunchSingleTop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3301
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v1, 0x0

    if-ne v2, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3302
    const-string v0, " mLaunchSingleInstance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3303
    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3304
    const-string v0, " mLaunchSingleTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3305
    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3306
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3307
    const-string v0, "mLaunchFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3308
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3309
    const-string v0, " mDoResume="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3310
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3311
    const-string v0, " mAddingToTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3312
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3313
    return-void
.end method

.method execute()I
    .locals 11

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 714
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0

    .line 718
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 719
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 720
    .local v1, "caller":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v2

    move-object v1, v2

    .line 722
    .local v1, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 728
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->prepareRequest(Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/ActivityStarter$Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 739
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 740
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 743
    .local v2, "globalConfigWillChange":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v4, :cond_4

    .line 744
    const-string v3, "ActivityTaskManager"

    const-string v4, "root window container is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/16 v3, 0x66

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 794
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 745
    return v3

    .line 748
    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 749
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_5

    .line 750
    iput-boolean v2, v4, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 752
    :cond_5
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_6

    .line 753
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting activity when config will change = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 759
    .local v5, "origId":J
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v7

    .line 760
    .local v7, "res":I
    if-eqz v7, :cond_7

    .line 761
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 794
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 761
    return v7

    .line 763
    :cond_7
    :try_start_5
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {p0, v8}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v8

    move v7, v8

    .line 765
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 767
    if-eqz v2, :cond_a

    .line 772
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v9, "android.permission.CHANGE_CONFIGURATION"

    const-string v10, "updateConfiguration()"

    invoke-virtual {v8, v9, v10}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    if-eqz v4, :cond_8

    .line 776
    iput-boolean v3, v4, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 778
    :cond_8
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_9

    .line 779
    const-string v8, "ActivityTaskManager"

    const-string v9, "Updating to new configuration after starting activity."

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 788
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v1, v7, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V

    .line 790
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-nez v3, :cond_b

    move v3, v7

    goto :goto_2

    .line 791
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v7, v3}, Lcom/android/server/wm/ActivityStarter;->waitForResult(ILcom/android/server/wm/ActivityRecord;)I

    move-result v3

    .line 790
    :goto_2
    invoke-static {v3}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v3

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 794
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 790
    return v3

    .line 792
    .end local v2    # "globalConfigWillChange":Z
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5    # "origId":J
    .end local v7    # "res":I
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 722
    .end local v1    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 794
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :catchall_2
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 795
    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .line 3076
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "startedActivityStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1725
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1726
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 1733
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1734
    return-void

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1744
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1745
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    .line 1746
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_0
    nop

    .line 1747
    .local v0, "targetTask":Lcom/android/server/wm/Task;
    if-eqz p3, :cond_a

    if-nez v0, :cond_3

    goto :goto_4

    .line 1751
    :cond_3
    const v1, 0x10008000

    .line 1752
    .local v1, "clearTaskFlags":I
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v3, 0x10008000

    and-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v5

    .line 1754
    .local v2, "clearedTask":Z
    :goto_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_5

    if-eqz v2, :cond_8

    .line 1765
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1766
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1773
    .local v3, "homeStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1774
    .local v6, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v5

    .line 1775
    .local v7, "visible":Z
    :goto_2
    if-eqz v3, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    .line 1776
    .local v4, "homeTaskVisible":Z
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v5

    .line 1777
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    .line 1776
    invoke-virtual {v5, v8, v4, v2, v7}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 1779
    .end local v3    # "homeStack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "homeTaskVisible":Z
    .end local v6    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "visible":Z
    :cond_8
    return-void

    .line 1768
    :cond_9
    const-string v3, "ActivityTaskManager"

    const-string v4, "fail to notifies all listeners when an attempt was made tostart an an activity that is already running"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    return-void

    .line 1748
    .end local v1    # "clearTaskFlags":I
    .end local v2    # "clearedTask":Z
    :cond_a
    :goto_4
    return-void
.end method

.method recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .locals 8
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "targetTaskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reusedTask"    # Lcom/android/server/wm/Task;
    .param p4, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2230
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 2231
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2232
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2233
    return v2

    .line 2236
    :cond_0
    const/4 v0, 0x0

    .line 2237
    .local v0, "clearTaskForReuse":Z
    if-eqz p3, :cond_5

    .line 2238
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2239
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityRecord;->setTaskForReuse(Lcom/android/server/wm/Task;)V

    .line 2240
    const/4 v0, 0x1

    .line 2243
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 2247
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 2249
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2250
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/16 v4, 0x4000

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2251
    .local v1, "taskOnHome":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 2252
    iget-object v5, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2254
    :cond_4
    iget-object v5, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->removeFlags(I)V

    .line 2259
    .end local v1    # "taskOnHome":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2262
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setTargetStackIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2266
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v1, :cond_7

    .line 2268
    :cond_6
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2271
    :cond_7
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v3

    const-string v4, "ActivityTaskManager"

    const-string v5, "intentActivityFound"

    if-eqz v1, :cond_a

    .line 2275
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_9

    .line 2276
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_8

    .line 2277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bring to front target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2282
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 2283
    return v3

    .line 2286
    :cond_a
    nop

    .line 2287
    const/4 v1, 0x0

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_2

    :cond_b
    move-object v6, v1

    .line 2286
    :goto_2
    invoke-direct {p0, p1, v6, p4}, Lcom/android/server/wm/ActivityStarter;->complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2289
    if-eqz v0, :cond_c

    .line 2293
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ActivityRecord;->setTaskForReuse(Lcom/android/server/wm/Task;)V

    .line 2299
    :cond_c
    if-eqz p1, :cond_d

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-static {v6, p1, v7}, Lcom/android/server/wm/OpQuickReplyInjector;->canReuseActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating task bounds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v7, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    if-eqz p1, :cond_d

    .line 2302
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    .line 2307
    :cond_d
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v4, :cond_e

    .line 2308
    return v2

    .line 2313
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2314
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v6, "recycleTask#turnScreenOnFlag"

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 2317
    :cond_f
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v4, :cond_10

    .line 2319
    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_3

    .line 2321
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_11

    .line 2323
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2327
    :cond_11
    :goto_3
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 2331
    nop

    .line 2332
    iget-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_4

    :cond_12
    move-object v1, p2

    :goto_4
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2336
    nop

    .line 2337
    invoke-static {v1, p2}, Lcom/android/server/wm/OpActivityStarterInjector;->updateOutActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2339
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x2

    goto :goto_5

    :cond_13
    const/4 v1, 0x3

    :goto_5
    return v1
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 678
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0
.end method

.method reset(Z)V
    .locals 3
    .param p1, "clearRequest"    # Z

    .line 2518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2519
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2520
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2521
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2522
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2524
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2525
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2526
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2528
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2530
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2531
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2532
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2533
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2534
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2535
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2537
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2538
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2539
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 2541
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2542
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2543
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2545
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2546
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2547
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2548
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2549
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 2550
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2551
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2553
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2554
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2556
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2558
    if-eqz p1, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 2561
    :cond_0
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter;)V
    .locals 2
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 632
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 633
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 634
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 635
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 636
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 638
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 639
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 640
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 644
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 645
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 646
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 647
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 648
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 649
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 651
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 652
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 653
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 655
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 656
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 657
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 659
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 660
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 661
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 662
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 663
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 664
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 665
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 667
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 668
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 670
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    .line 673
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 3100
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3101
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 3202
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 3197
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 3198
    return-object p0
.end method

.method setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "allowBackgroundActivityStart"    # Z

    .line 3261
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 3262
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "allowLookup"    # Z

    .line 3251
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 3252
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 3090
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 3091
    return-object p0
.end method

.method setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "callingFeatureId"    # Ljava/lang/String;

    .line 3163
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 3164
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3158
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 3159
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3143
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 3144
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3153
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 3154
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "componentSpecified"    # Z

    .line 3216
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 3217
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "filterCallingUid"    # I

    .line 3211
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 3212
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3241
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 3242
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "ignoreTargetSecurity"    # Z

    .line 3206
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 3207
    return-object p0
.end method

.method setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "inTask"    # Lcom/android/server/wm/Task;

    .line 3226
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 3227
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3071
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 3072
    return-object p0
.end method

.method setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3080
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 3081
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 3256
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 3257
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;

    .line 3221
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 3222
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 3236
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 3237
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3177
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 3178
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3187
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 3188
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3085
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 3086
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "requestCode"    # I

    .line 3130
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 3131
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 3105
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3106
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 3095
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 3096
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 3120
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 3121
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 3125
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 3126
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "startFlags"    # I

    .line 3192
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 3193
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "userId"    # I

    .line 3246
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 3247
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3115
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3116
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3110
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3111
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 3231
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 3232
    return-object p0
.end method

.method shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z
    .locals 31
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "realCallingUid"    # I
    .param p5, "realCallingPid"    # I
    .param p6, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p7, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p8, "allowBackgroundActivityStart"    # Z
    .param p9, "intent"    # Landroid/content/Intent;

    .line 1506
    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v11, p7

    move/from16 v10, p8

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1507
    .local v9, "callingAppId":I
    const-string v1, "ActivityTaskManager"

    if-eqz v12, :cond_2a

    const/16 v3, 0x3e8

    if-eq v9, v3, :cond_2a

    const/16 v4, 0x403

    if-ne v9, v4, :cond_0

    move/from16 v18, v9

    goto/16 :goto_11

    .line 1516
    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v8

    .line 1517
    .local v8, "callingUidProcState":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1518
    invoke-virtual {v4, v12}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v7

    .line 1519
    .local v7, "callingUidHasAnyVisibleWindow":Z
    const/4 v4, 0x2

    const/4 v6, 0x1

    if-nez v7, :cond_2

    if-eq v8, v4, :cond_2

    const/4 v5, 0x3

    if-ne v8, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v6

    .line 1522
    .local v5, "isCallingUidForeground":Z
    :goto_1
    if-gt v8, v6, :cond_3

    move/from16 v16, v6

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    move/from16 v17, v16

    .line 1524
    .local v17, "isCallingUidPersistentSystemProcess":Z
    if-nez v7, :cond_28

    move/from16 v2, v17

    .end local v17    # "isCallingUidPersistentSystemProcess":Z
    .local v2, "isCallingUidPersistentSystemProcess":Z
    if-eqz v2, :cond_4

    move v0, v2

    move/from16 v25, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v18, v9

    goto/16 :goto_10

    .line 1533
    :cond_4
    if-ne v12, v15, :cond_5

    .line 1534
    move v6, v8

    goto :goto_3

    .line 1535
    :cond_5
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v6

    :goto_3
    nop

    .line 1536
    .local v6, "realCallingUidProcState":I
    if-ne v12, v15, :cond_6

    .line 1537
    move v3, v7

    goto :goto_4

    .line 1538
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v15}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v3

    :goto_4
    nop

    .line 1539
    .local v3, "realCallingUidHasAnyVisibleWindow":Z
    if-ne v12, v15, :cond_7

    .line 1540
    move v4, v5

    goto :goto_6

    .line 1542
    :cond_7
    if-nez v3, :cond_9

    if-ne v6, v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v4, 0x1

    :goto_6
    nop

    .line 1543
    .local v4, "isRealCallingUidForeground":Z
    move/from16 v19, v9

    .end local v9    # "callingAppId":I
    .local v19, "callingAppId":I
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1544
    .local v9, "realCallingAppId":I
    if-ne v12, v15, :cond_a

    .line 1545
    move v11, v2

    goto :goto_8

    .line 1547
    :cond_a
    const/16 v11, 0x3e8

    if-eq v9, v11, :cond_c

    const/4 v11, 0x1

    if-gt v6, v11, :cond_b

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v11, 0x1

    :goto_8
    nop

    .line 1548
    .local v11, "isRealCallingUidPersistentSystemProcess":Z
    move/from16 v18, v9

    .end local v9    # "realCallingAppId":I
    .local v18, "realCallingAppId":I
    const-string v9, ") is companion app"

    if-eq v15, v12, :cond_12

    .line 1550
    move/from16 v20, v6

    .end local v6    # "realCallingUidProcState":I
    .local v20, "realCallingUidProcState":I
    const-string v6, "Activity start allowed: realCallingUid ("

    if-eqz v3, :cond_e

    .line 1551
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v9, :cond_d

    .line 1552
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") has visible (non-toast) window"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_d
    const/4 v1, 0x0

    return v1

    .line 1559
    :cond_e
    if-eqz v11, :cond_10

    if-eqz v10, :cond_10

    .line 1560
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v9, :cond_f

    .line 1561
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") is persistent system process AND intent sender whitelisted (allowBackgroundActivityStart = true)"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_f
    const/4 v1, 0x0

    return v1

    .line 1568
    :cond_10
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v21, v11

    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .local v21, "isRealCallingUidPersistentSystemProcess":Z
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v10, v11, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1570
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v10, :cond_11

    .line 1571
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_11
    const/4 v1, 0x0

    return v1

    .line 1548
    .end local v20    # "realCallingUidProcState":I
    .end local v21    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v6    # "realCallingUidProcState":I
    .restart local v11    # "isRealCallingUidPersistentSystemProcess":Z
    :cond_12
    move/from16 v20, v6

    move/from16 v21, v11

    .line 1578
    .end local v6    # "realCallingUidProcState":I
    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v20    # "realCallingUidProcState":I
    .restart local v21    # "isRealCallingUidPersistentSystemProcess":Z
    :cond_13
    const-string v6, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {v6, v13, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_15

    .line 1580
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_14

    .line 1581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Background activity start allowed: START_ACTIVITIES_FROM_BACKGROUND permission granted for uid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_14
    const/4 v1, 0x0

    return v1

    .line 1589
    :cond_15
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    const-string v10, "Background activity start allowed: callingUid ("

    if-eqz v6, :cond_17

    .line 1590
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_16

    .line 1591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is recents"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_16
    const/4 v1, 0x0

    return v1

    .line 1597
    :cond_17
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1598
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_18

    .line 1599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is device owner"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_18
    const/4 v1, 0x0

    return v1

    .line 1605
    :cond_19
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1606
    .local v11, "callingUserId":I
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v11, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1607
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_1a

    .line 1608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 1617
    :cond_1b
    move/from16 v6, p1

    .line 1618
    .local v6, "callerAppUid":I
    if-nez p6, :cond_1c

    .line 1619
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v10, p5

    invoke-virtual {v9, v10, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    .line 1620
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v9, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v6, p4

    goto :goto_9

    .line 1618
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_1c
    move/from16 v10, p5

    move-object/from16 v9, p6

    .line 1623
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_9
    if-eqz v9, :cond_23

    .line 1625
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 1626
    sget-boolean v17, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v17, :cond_1d

    .line 1627
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v11

    .end local v11    # "callingUserId":I
    .local v22, "callingUserId":I
    const-string v11, "Background activity start allowed: callerApp process (pid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") is whitelisted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1627
    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1626
    .end local v22    # "callingUserId":I
    .restart local v11    # "callingUserId":I
    :cond_1d
    move/from16 v22, v11

    .line 1630
    .end local v11    # "callingUserId":I
    .restart local v22    # "callingUserId":I
    :goto_a
    const/4 v1, 0x0

    return v1

    .line 1633
    .end local v22    # "callingUserId":I
    .restart local v11    # "callingUserId":I
    :cond_1e
    move/from16 v22, v11

    .end local v11    # "callingUserId":I
    .restart local v22    # "callingUserId":I
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 1634
    invoke-virtual {v10, v6}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v10

    .line 1635
    .local v10, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v10, :cond_22

    .line 1636
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/16 v17, 0x1

    add-int/lit8 v11, v11, -0x1

    .local v11, "i":I
    :goto_b
    if-ltz v11, :cond_21

    .line 1637
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p6, v10

    .end local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local p6, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    move-object/from16 v10, v23

    check-cast v10, Lcom/android/server/wm/WindowProcessController;

    .line 1638
    .local v10, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eq v10, v9, :cond_20

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 1639
    sget-boolean v17, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v17, :cond_1f

    .line 1640
    move-object/from16 v23, v9

    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v23, "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v3

    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .local v24, "realCallingUidHasAnyVisibleWindow":Z
    const-string v3, "Background activity start allowed: process "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from uid "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is whitelisted"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1640
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1639
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_1f
    move/from16 v24, v3

    move-object/from16 v23, v9

    .line 1644
    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    :goto_c
    const/4 v1, 0x0

    return v1

    .line 1638
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_20
    move/from16 v24, v3

    move-object/from16 v23, v9

    .line 1636
    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v10    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v10, p6

    move-object/from16 v9, v23

    move/from16 v3, v24

    goto :goto_b

    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v10, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_21
    move/from16 v24, v3

    move-object/from16 v23, v9

    move-object/from16 p6, v10

    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_d

    .line 1635
    .end local v11    # "i":I
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_22
    move/from16 v24, v3

    move-object/from16 v23, v9

    move-object/from16 p6, v10

    const/16 v17, 0x1

    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_d

    .line 1623
    .end local v22    # "callingUserId":I
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v11, "callingUserId":I
    :cond_23
    move/from16 v24, v3

    move-object/from16 v23, v9

    move/from16 v22, v11

    const/16 v17, 0x1

    .line 1650
    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v11    # "callingUserId":I
    .restart local v22    # "callingUserId":I
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    :goto_d
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v12, v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v3

    const-string v9, "Background activity start for "

    if-eqz v3, :cond_24

    .line 1651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v1, 0x0

    return v1

    .line 1658
    :cond_24
    invoke-static/range {p3 .. p3}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->isBackgroundActivityWhitelist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is whitelisted."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/4 v1, 0x0

    return v1

    .line 1665
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Background activity start [callingPackage: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; callingUid: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; isCallingUidForeground: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; callingUidHasAnyVisibleWindow: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; callingUidProcState: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v9, Landroid/app/ActivityManager;

    .line 1669
    const-string v10, "PROCESS_STATE_"

    invoke-static {v9, v10, v8}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; realCallingUid: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; isRealCallingUidForeground: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; realCallingUidHasAnyVisibleWindow: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v24

    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .local v9, "realCallingUidHasAnyVisibleWindow":Z
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "; realCallingUidProcState: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v11, Landroid/app/ActivityManager;

    .line 1675
    move/from16 v24, v6

    move/from16 v6, v20

    .end local v20    # "realCallingUidProcState":I
    .local v6, "realCallingUidProcState":I
    .local v24, "callerAppUid":I
    invoke-static {v11, v10, v6}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v21

    .end local v21    # "isRealCallingUidPersistentSystemProcess":Z
    .local v11, "isRealCallingUidPersistentSystemProcess":Z
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "; originatingPendingIntent: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move/from16 v20, v2

    .end local v2    # "isCallingUidPersistentSystemProcess":Z
    .local v20, "isCallingUidPersistentSystemProcess":Z
    const-string v2, "; isBgStartWhitelisted: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; intent: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p9

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; callerApp: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v2, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1665
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1686
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    if-eqz v10, :cond_26

    move/from16 v16, v17

    goto :goto_e

    :cond_26
    const/16 v16, 0x0

    :goto_e
    move/from16 v3, v20

    move-object/from16 v20, v23

    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v3, "isCallingUidPersistentSystemProcess":Z
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v2, p9

    move/from16 v21, v9

    move v9, v3

    .end local v3    # "isCallingUidPersistentSystemProcess":Z
    .local v9, "isCallingUidPersistentSystemProcess":Z
    .local v21, "realCallingUidHasAnyVisibleWindow":Z
    move-object/from16 v3, v20

    move/from16 v23, v4

    .end local v4    # "isRealCallingUidForeground":Z
    .local v23, "isRealCallingUidForeground":Z
    move/from16 v4, p1

    move/from16 v25, v5

    .end local v5    # "isCallingUidForeground":Z
    .local v25, "isCallingUidForeground":Z
    move-object/from16 v5, p3

    move/from16 v26, v17

    move/from16 v17, v6

    .end local v6    # "realCallingUidProcState":I
    .local v17, "realCallingUidProcState":I
    move v6, v8

    move/from16 v27, v7

    .end local v7    # "callingUidHasAnyVisibleWindow":Z
    .local v27, "callingUidHasAnyVisibleWindow":Z
    move/from16 v28, v8

    .end local v8    # "callingUidProcState":I
    .local v28, "callingUidProcState":I
    move/from16 v8, p4

    move v0, v9

    move/from16 v30, v19

    move/from16 v19, v18

    move/from16 v18, v30

    .end local v9    # "isCallingUidPersistentSystemProcess":Z
    .local v0, "isCallingUidPersistentSystemProcess":Z
    .local v18, "callingAppId":I
    .local v19, "realCallingAppId":I
    move/from16 v9, v17

    move/from16 v10, v21

    move/from16 v29, v22

    move/from16 v22, v11

    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .local v22, "isRealCallingUidPersistentSystemProcess":Z
    .local v29, "callingUserId":I
    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    goto :goto_f

    .line 1685
    .end local v0    # "isCallingUidPersistentSystemProcess":Z
    .end local v17    # "realCallingUidProcState":I
    .end local v21    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v25    # "isCallingUidForeground":Z
    .end local v27    # "callingUidHasAnyVisibleWindow":Z
    .end local v28    # "callingUidProcState":I
    .end local v29    # "callingUserId":I
    .restart local v4    # "isRealCallingUidForeground":Z
    .restart local v5    # "isCallingUidForeground":Z
    .restart local v6    # "realCallingUidProcState":I
    .restart local v7    # "callingUidHasAnyVisibleWindow":Z
    .restart local v8    # "callingUidProcState":I
    .local v9, "realCallingUidHasAnyVisibleWindow":Z
    .restart local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .local v18, "realCallingAppId":I
    .local v19, "callingAppId":I
    .local v20, "isCallingUidPersistentSystemProcess":Z
    .local v22, "callingUserId":I
    .local v23, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_27
    move/from16 v25, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v21, v9

    move/from16 v26, v17

    move/from16 v0, v20

    move/from16 v29, v22

    move-object/from16 v20, v23

    move/from16 v23, v4

    move/from16 v17, v6

    move/from16 v22, v11

    move/from16 v30, v19

    move/from16 v19, v18

    move/from16 v18, v30

    .line 1691
    .end local v4    # "isRealCallingUidForeground":Z
    .end local v5    # "isCallingUidForeground":Z
    .end local v6    # "realCallingUidProcState":I
    .end local v7    # "callingUidHasAnyVisibleWindow":Z
    .end local v8    # "callingUidProcState":I
    .end local v9    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v0    # "isCallingUidPersistentSystemProcess":Z
    .restart local v17    # "realCallingUidProcState":I
    .local v18, "callingAppId":I
    .local v19, "realCallingAppId":I
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v21    # "realCallingUidHasAnyVisibleWindow":Z
    .local v22, "isRealCallingUidPersistentSystemProcess":Z
    .local v23, "isRealCallingUidForeground":Z
    .restart local v25    # "isCallingUidForeground":Z
    .restart local v27    # "callingUidHasAnyVisibleWindow":Z
    .restart local v28    # "callingUidProcState":I
    .restart local v29    # "callingUserId":I
    :goto_f
    return v26

    .line 1524
    .end local v0    # "isCallingUidPersistentSystemProcess":Z
    .end local v18    # "callingAppId":I
    .end local v19    # "realCallingAppId":I
    .end local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v21    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v22    # "isRealCallingUidPersistentSystemProcess":Z
    .end local v23    # "isRealCallingUidForeground":Z
    .end local v24    # "callerAppUid":I
    .end local v25    # "isCallingUidForeground":Z
    .end local v27    # "callingUidHasAnyVisibleWindow":Z
    .end local v28    # "callingUidProcState":I
    .end local v29    # "callingUserId":I
    .restart local v5    # "isCallingUidForeground":Z
    .restart local v7    # "callingUidHasAnyVisibleWindow":Z
    .restart local v8    # "callingUidProcState":I
    .local v9, "callingAppId":I
    .local v17, "isCallingUidPersistentSystemProcess":Z
    .local p6, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_28
    move/from16 v25, v5

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v18, v9

    move/from16 v0, v17

    .line 1525
    .end local v5    # "isCallingUidForeground":Z
    .end local v7    # "callingUidHasAnyVisibleWindow":Z
    .end local v8    # "callingUidProcState":I
    .end local v9    # "callingAppId":I
    .end local v17    # "isCallingUidPersistentSystemProcess":Z
    .restart local v0    # "isCallingUidPersistentSystemProcess":Z
    .restart local v18    # "callingAppId":I
    .restart local v25    # "isCallingUidForeground":Z
    .restart local v27    # "callingUidHasAnyVisibleWindow":Z
    .restart local v28    # "callingUidProcState":I
    :goto_10
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_29

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity start allowed: callingUidHasAnyVisibleWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCallingUidPersistentSystemProcess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_29
    const/4 v1, 0x0

    return v1

    .line 1507
    .end local v0    # "isCallingUidPersistentSystemProcess":Z
    .end local v18    # "callingAppId":I
    .end local v25    # "isCallingUidForeground":Z
    .end local v27    # "callingUidHasAnyVisibleWindow":Z
    .end local v28    # "callingUidProcState":I
    .restart local v9    # "callingAppId":I
    :cond_2a
    move/from16 v18, v9

    .line 1509
    .end local v9    # "callingAppId":I
    .restart local v18    # "callingAppId":I
    :goto_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_2b

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity start allowed for important callingUid ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I
    .locals 28
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/Task;
    .param p9, "restrictedBgActivity"    # Z
    .param p10, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 1894
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V

    .line 1897
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1899
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeSourceStack()V

    .line 1901
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1903
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getReusableTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 1923
    .local v6, "reusedTask":Lcom/android/server/wm/Task;
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1924
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1925
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1926
    iput-boolean v7, v10, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 1927
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 1931
    :cond_0
    if-eqz v6, :cond_1

    move-object v0, v6

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeTargetTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 1932
    .local v8, "targetTask":Lcom/android/server/wm/Task;
    const/4 v9, 0x0

    if-nez v8, :cond_2

    move v0, v7

    goto :goto_1

    :cond_2
    move v0, v9

    :goto_1
    move v15, v0

    .line 1933
    .local v15, "newTask":Z
    iput-object v8, v10, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 1935
    invoke-direct {v10, v11, v12, v8}, Lcom/android/server/wm/ActivityStarter;->computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 1940
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpQuickReplyInjector;->exitQuicReplyOnCameraStart(Landroid/content/Intent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;)V

    .line 1944
    invoke-direct {v10, v11, v15, v8}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v0

    .line 1945
    .local v0, "startResult":I
    if-eqz v0, :cond_3

    .line 1946
    return v0

    .line 1949
    :cond_3
    if-eqz v15, :cond_4

    .line 1950
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :goto_2
    move-object v5, v1

    .line 1951
    .local v5, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_8

    .line 1954
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_5

    .line 1955
    invoke-static {v6}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->handleZoomStackByTargetTask(Lcom/android/server/wm/Task;)V

    .line 1959
    :cond_5
    invoke-virtual {v10, v8, v5, v6, v13}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v16

    .line 1960
    .end local v0    # "startResult":I
    .local v16, "startResult":I
    if-eqz v16, :cond_7

    .line 1963
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_6

    if-eqz v8, :cond_6

    .line 1964
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move-object/from16 v1, p7

    move-object/from16 v3, p2

    move-object/from16 v20, v5

    .end local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .local v20, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    goto :goto_3

    .line 1963
    .end local v20    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    move-object/from16 v20, v5

    .line 1967
    .end local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :goto_3
    return v16

    .line 1960
    .end local v20    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    move-object/from16 v20, v5

    .end local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    goto :goto_4

    .line 1970
    .end local v16    # "startResult":I
    .end local v20    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "startResult":I
    .restart local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    move-object/from16 v20, v5

    .end local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    iput-boolean v7, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    move/from16 v16, v0

    .line 1975
    .end local v0    # "startResult":I
    .restart local v16    # "startResult":I
    :goto_4
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_9

    if-eqz v6, :cond_9

    .line 1976
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move-object/from16 v1, p7

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    .line 1982
    :cond_9
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1983
    .local v5, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_b

    .line 1984
    invoke-direct {v10, v5, v13}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/ActivityStack;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v16

    .line 1985
    if-eqz v16, :cond_a

    .line 1986
    return v16

    .line 1985
    :cond_a
    move/from16 v21, v16

    goto :goto_5

    .line 1983
    :cond_b
    move/from16 v21, v16

    .line 1990
    .end local v16    # "startResult":I
    .local v21, "startResult":I
    :goto_5
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v0, :cond_c

    .line 1991
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v10, v0, v1, v8, v2}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1993
    :cond_c
    if-eqz v15, :cond_10

    .line 1994
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_d

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_d

    .line 1995
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    .line 1996
    .local v0, "taskToAffiliate":Lcom/android/server/wm/Task;
    :goto_6
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1997
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_e

    .line 1998
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v4, 0x1081

    const/4 v14, -0x1

    .line 1999
    invoke-virtual {v2, v4, v1, v14, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v2

    iput v2, v3, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 2004
    :cond_e
    const-string v2, "display"

    invoke-static {v2}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    .line 2006
    invoke-direct {v10, v0}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    .line 2007
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2008
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2007
    invoke-virtual {v2, v3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/16 v2, 0x65

    return v2

    .line 2007
    .end local v0    # "taskToAffiliate":Lcom/android/server/wm/Task;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_f
    goto :goto_7

    .line 2012
    :cond_10
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v0, :cond_11

    .line 2013
    const-string v0, "adding to task"

    invoke-direct {v10, v8, v0}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    goto :goto_8

    .line 2012
    :cond_11
    :goto_7
    nop

    .line 2016
    :goto_8
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_13

    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_13

    .line 2017
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const-string v1, "reuseOrNewTask"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2018
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_12

    .line 2019
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2020
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    .line 2023
    :cond_12
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2026
    iput-boolean v7, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2027
    iput-boolean v7, v11, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2033
    :cond_13
    iget-object v7, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2034
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_15

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_15

    .line 2035
    const/4 v0, 0x0

    .line 2036
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v12, :cond_14

    .line 2037
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2039
    :cond_14
    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityLocked name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 2043
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_15
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2044
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v1

    .line 2043
    invoke-interface {v0, v13, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2046
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_16

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_16

    .line 2048
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2049
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 2050
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v1

    .line 2052
    .local v1, "resultToUid":I
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2053
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    const/16 v27, 0x1

    .line 2052
    move-object/from16 v22, v0

    move/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v26, v1

    invoke-virtual/range {v22 .. v27}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2056
    .end local v0    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "resultToUid":I
    :cond_16
    if-eqz v15, :cond_17

    .line 2057
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2058
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2057
    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmCreateTask(II)V

    .line 2060
    :cond_17
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v1, 0x7535

    .line 2061
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2060
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 2063
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2065
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v9, v2}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2068
    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2069
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_9

    :cond_18
    move-object/from16 v16, v1

    :goto_9
    iget-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2068
    move-object v4, v1

    move/from16 v22, v15

    .end local v15    # "newTask":Z
    .local v22, "newTask":Z
    move-object v15, v0

    move/from16 v17, v22

    move/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/wm/ActivityStack;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 2074
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_19

    .line 2075
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v14, 0x0

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v15, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move-object/from16 v1, p7

    move-object/from16 v3, p2

    move-object v9, v4

    move v4, v14

    move-object v14, v5

    .end local v5    # "topStack":Lcom/android/server/wm/ActivityStack;
    .local v14, "topStack":Lcom/android/server/wm/ActivityStack;
    move v5, v15

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    goto :goto_a

    .line 2074
    .end local v14    # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v5    # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_19
    move-object v9, v4

    move-object v14, v5

    .line 2079
    .end local v5    # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v14    # "topStack":Lcom/android/server/wm/ActivityStack;
    :goto_a
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_1d

    .line 2080
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2081
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2082
    .local v0, "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1a

    .line 2083
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v0, :cond_1a

    goto :goto_b

    .line 2104
    :cond_1a
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2105
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2106
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v2, "startActivityInner"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2108
    :cond_1b
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_c

    .line 2093
    :cond_1c
    :goto_b
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2, v2}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2097
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2112
    .end local v0    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1d
    :goto_c
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 2115
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2116
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v2, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 2119
    const/4 v0, 0x0

    return v0
.end method

.method startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/Task;
    .param p9, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    move-object v12, p0

    move-object v13, p1

    .line 690
    :try_start_0
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 691
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v0

    .line 692
    .local v0, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    const-string v1, "startResolvedActivity"

    iput-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 694
    iput-object v13, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 695
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v1

    iput v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 698
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    iget v2, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-object v3, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v0    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 702
    nop

    .line 703
    return-void

    .line 701
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 702
    throw v0
.end method
