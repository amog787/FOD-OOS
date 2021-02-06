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

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 262
    new-instance v0, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 608
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 609
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 610
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 611
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 612
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 613
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 614
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 615
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2897
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2898
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    .line 2899
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v3, 0x1081

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 2900
    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v1

    iput v1, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 2905
    :cond_0
    const-string v1, "display"

    invoke-static {v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    .line 2907
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 2910
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    goto :goto_1

    .line 2908
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 2912
    :goto_1
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 2916
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2919
    :cond_0
    const-string v0, "ActivityTaskManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_0

    .line 2924
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

    .line 2934
    :cond_2
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_0

    .line 2931
    :cond_3
    or-int/2addr p4, v0

    .line 2932
    goto :goto_0

    .line 2928
    :cond_4
    or-int/2addr p4, v0

    .line 2929
    nop

    .line 2938
    :goto_0
    return p4
.end method

.method private complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 9
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2289
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2290
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

    .line 2292
    .local v3, "resetTask":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 2293
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2296
    :cond_1
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int v6, v4, v5

    if-ne v6, v5, :cond_2

    .line 2307
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->performClearTaskLocked()V

    .line 2308
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2309
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2310
    :cond_2
    const/high16 v5, 0x4000000

    and-int v6, v4, v5

    const/4 v7, 0x0

    if-nez v6, :cond_d

    .line 2311
    invoke-static {v4}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x3

    const/4 v6, 0x2

    .line 2312
    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    .line 2357
    :cond_3
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v4, v1, v5

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v4, :cond_5

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    .line 2362
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2363
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2364
    .local v1, "act":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_4

    .line 2365
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2366
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2367
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2368
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2369
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v7, v4, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2370
    .end local v2    # "task":Lcom/android/server/wm/Task;
    goto :goto_1

    .line 2371
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2373
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

    .line 2374
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_6

    goto/16 :goto_4

    .line 2377
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

    .line 2379
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_9

    .line 2385
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2386
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2388
    :cond_8
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto/16 :goto_4

    .line 2389
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2392
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2393
    :cond_a
    if-nez p2, :cond_15

    .line 2394
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2396
    :cond_b
    if-nez v3, :cond_c

    .line 2401
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_4

    .line 2402
    :cond_c
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v1, :cond_15

    .line 2408
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_4

    .line 2316
    :cond_d
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {p1, v4, v5}, Lcom/android/server/wm/Task;->performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2326
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_e

    .line 2327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task addChild--finish: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
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

    .line 2327
    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_10

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_f

    .line 2331
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_10

    .line 2333
    :cond_f
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 2336
    :cond_10
    if-eqz v4, :cond_12

    .line 2337
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2340
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2342
    :cond_11
    invoke-direct {p0, v4, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_3

    .line 2347
    :cond_12
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2348
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_14

    .line 2351
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2352
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2353
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

    .line 2357
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_14
    :goto_3
    nop

    .line 2410
    :cond_15
    :goto_4
    return-void
.end method

.method private computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2046
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    :goto_0
    nop

    .line 2048
    .local v0, "sourceStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_1

    .line 2050
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 2052
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2053
    .local v1, "windowingMode":I
    :goto_1
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_4

    .line 2054
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2055
    const/4 v1, 0x4

    goto :goto_2

    .line 2056
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2057
    const/4 v1, 0x3

    .line 2061
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_5

    .line 2062
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2064
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2067
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

    .line 2069
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2070
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_3

    .line 2071
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2072
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2073
    return-void
.end method

.method private computeLaunchingTaskFlags()V
    .locals 10

    .line 2605
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

    .line 2606
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2607
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2608
    .local v5, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_5

    .line 2616
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2617
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2622
    if-nez v5, :cond_0

    goto :goto_0

    .line 2623
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2624
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

    .line 2618
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2619
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

    .line 2631
    :cond_2
    :goto_0
    if-nez v5, :cond_3

    .line 2632
    const v6, 0x18082000

    .line 2634
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 2635
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2636
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2637
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2638
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2643
    .end local v6    # "flagsOfInterest":I
    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 2644
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 2647
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2650
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 2651
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_2

    .line 2609
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2610
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

    .line 2652
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2658
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

    .line 2659
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2660
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2664
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_b

    .line 2665
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_9

    .line 2668
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_b

    if-nez v0, :cond_b

    .line 2669
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

    .line 2671
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 2673
    :cond_9
    iget v0, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v2, :cond_a

    .line 2677
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 2678
    :cond_a
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2681
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2684
    :cond_b
    :goto_3
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .locals 1
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1736
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    .line 1737
    move v0, p2

    goto :goto_0

    .line 1738
    :cond_0
    if-ltz p0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1736
    :goto_0
    return v0
.end method

.method private computeSourceStack()V
    .locals 4

    .line 2687
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2688
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2689
    return-void

    .line 2691
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2692
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2693
    return-void

    .line 2700
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 2701
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

    .line 2703
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2704
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2710
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2711
    .local v0, "sourceTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2713
    .end local v0    # "sourceTask":Lcom/android/server/wm/Task;
    :cond_3
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2714
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2715
    return-void
.end method

.method private computeTargetTask()Lcom/android/server/wm/Task;
    .locals 4

    .line 2022
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

    .line 2025
    return-object v1

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 2027
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 2028
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    .line 2029
    return-object v0

    .line 2031
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2033
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2034
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3

    .line 2035
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    .line 2038
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 2041
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

    .line 1643
    move-object/from16 v9, p1

    if-eqz v9, :cond_0

    iget-boolean v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 1645
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 1646
    .local v11, "packageManager":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v15, p3

    move/from16 v14, p7

    invoke-virtual {v11, v15, v14}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v12

    .line 1647
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

    .line 1643
    .end local v11    # "packageManager":Landroid/content/pm/PackageManagerInternal;
    .end local v12    # "isRequesterInstantApp":Z
    :cond_0
    move-object/from16 v10, p0

    move-object/from16 v15, p3

    move/from16 v14, p7

    .line 1651
    :goto_0
    nop

    .line 1653
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    .line 1654
    const/4 v0, 0x0

    if-nez v9, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, v9, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 1660
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v20, v0

    goto :goto_2

    :cond_2
    iget-object v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v2

    .line 1661
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

    .line 1663
    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    :goto_5
    move-object/from16 v23, v0

    .line 1651
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

    .line 2886
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    .line 2887
    return-void

    .line 2890
    :cond_0
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 2891
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    .line 2893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2894
    return-void
.end method

.method private deliverToCurrentTopIfNeeded(Lcom/android/server/wm/ActivityStack;Lcom/android/server/uri/NeededUriGrants;)I
    .locals 6
    .param p1, "topStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2246
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2247
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

    .line 2248
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v4, :cond_2

    .line 2250
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x2

    .line 2252
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2256
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

    .line 2257
    .local v3, "dontStart":Z
    :goto_0
    if-nez v3, :cond_3

    .line 2258
    return v1

    .line 2262
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2263
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_4

    .line 2264
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 2266
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2267
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 2270
    return v2

    .line 2273
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2277
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v2, v4, v5, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 2280
    const/4 v1, 0x3

    return v1
.end method

.method private executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .locals 86
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 916
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 922
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canActivityGo(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 923
    return v13

    .line 927
    :cond_0
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 929
    const/4 v12, 0x0

    iput-object v12, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 931
    iget-object v11, v14, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 932
    .local v11, "caller":Landroid/app/IApplicationThread;
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 933
    .local v9, "intent":Landroid/content/Intent;
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 934
    .local v10, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 935
    .local v8, "resolvedType":Ljava/lang/String;
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 936
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 937
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 938
    .local v5, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 939
    .local v4, "resultTo":Landroid/os/IBinder;
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 940
    .local v3, "resultWho":Ljava/lang/String;
    iget v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 941
    .local v2, "requestCode":I
    iget v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 942
    .local v0, "callingPid":I
    iget v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 943
    .local v1, "callingUid":I
    iget-object v12, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 944
    .local v12, "callingPackage":Ljava/lang/String;
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 945
    .local v13, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v25, v13

    .end local v13    # "callingFeatureId":Ljava/lang/String;
    .local v25, "callingFeatureId":Ljava/lang/String;
    iget v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 946
    .local v13, "realCallingPid":I
    move-object/from16 v26, v10

    .end local v10    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v26, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 947
    .local v10, "realCallingUid":I
    move/from16 v32, v13

    .end local v13    # "realCallingPid":I
    .local v32, "realCallingPid":I
    iget v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 948
    .local v13, "startFlags":I
    move/from16 v33, v13

    .end local v13    # "startFlags":I
    .local v33, "startFlags":I
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 949
    .local v13, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v27, v8

    .end local v8    # "resolvedType":Ljava/lang/String;
    .local v27, "resolvedType":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 953
    .local v8, "inTask":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_1

    invoke-static {v12, v10, v9, v7}, Lcom/android/server/am/OpStartAppControlInjector;->canActivityGo(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 954
    const/16 v16, -0x5e

    return v16

    .line 958
    :cond_1
    const/16 v19, 0x0

    .line 961
    .local v19, "err":I
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v16

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 963
    .local v16, "verificationBundle":Landroid/os/Bundle;
    :goto_0
    const/16 v20, 0x0

    .line 964
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v28, v10

    .end local v10    # "realCallingUid":I
    .local v28, "realCallingUid":I
    const-string v10, "ActivityTaskManager"

    if-eqz v11, :cond_4

    .line 965
    move/from16 v21, v1

    .end local v1    # "callingUid":I
    .local v21, "callingUid":I
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 966
    .end local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v1, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_3

    .line 967
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    .line 968
    move/from16 v20, v0

    .end local v0    # "callingPid":I
    .local v20, "callingPid":I
    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v14, v1

    move-object/from16 v29, v3

    move/from16 v3, v20

    move v1, v0

    move/from16 v0, v19

    .end local v21    # "callingUid":I
    .local v0, "callingUid":I
    goto :goto_1

    .line 970
    .end local v20    # "callingPid":I
    .local v0, "callingPid":I
    .restart local v21    # "callingUid":I
    :cond_3
    move-object/from16 v20, v1

    .end local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v3

    .end local v3    # "resultWho":Ljava/lang/String;
    .local v29, "resultWho":Ljava/lang/String;
    const-string v3, "Unable to find app for caller "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when starting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 970
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/16 v19, -0x5e

    move v3, v0

    move/from16 v0, v19

    move-object/from16 v14, v20

    move/from16 v1, v21

    goto :goto_1

    .line 964
    .end local v21    # "callingUid":I
    .end local v29    # "resultWho":Ljava/lang/String;
    .local v1, "callingUid":I
    .restart local v3    # "resultWho":Ljava/lang/String;
    :cond_4
    move/from16 v21, v1

    move-object/from16 v29, v3

    .end local v1    # "callingUid":I
    .end local v3    # "resultWho":Ljava/lang/String;
    .restart local v21    # "callingUid":I
    .restart local v29    # "resultWho":Ljava/lang/String;
    move v3, v0

    move/from16 v0, v19

    move-object/from16 v14, v20

    .line 976
    .end local v19    # "err":I
    .end local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v21    # "callingUid":I
    .local v0, "err":I
    .restart local v1    # "callingUid":I
    .local v3, "callingPid":I
    .local v14, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_1
    if-eqz v7, :cond_5

    move/from16 v30, v0

    .end local v0    # "err":I
    .local v30, "err":I
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6

    .line 977
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_2

    .line 976
    .end local v30    # "err":I
    .restart local v0    # "err":I
    :cond_5
    move/from16 v30, v0

    .line 977
    .end local v0    # "err":I
    .restart local v30    # "err":I
    :cond_6
    const/4 v0, 0x0

    .line 981
    .local v0, "userId":I
    :goto_2
    if-eqz v13, :cond_7

    .line 982
    move/from16 v31, v0

    .end local v0    # "userId":I
    .local v31, "userId":I
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v13, v9, v7, v14, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_3

    .end local v31    # "userId":I
    .restart local v0    # "userId":I
    :cond_7
    move/from16 v31, v0

    .end local v0    # "userId":I
    .restart local v31    # "userId":I
    const/4 v0, 0x0

    :goto_3
    move-object/from16 v67, v0

    .line 983
    .local v67, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v67, :cond_8

    invoke-virtual/range {v67 .. v67}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 984
    invoke-virtual/range {v67 .. v67}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v34, v3

    .end local v3    # "callingPid":I
    .local v34, "callingPid":I
    const-string v3, "OP_EXTRA_REMOTE_INPUT_DRAFT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v24, v0

    goto :goto_4

    .line 983
    .end local v34    # "callingPid":I
    .restart local v3    # "callingPid":I
    :cond_8
    move/from16 v34, v3

    .line 984
    .end local v3    # "callingPid":I
    .restart local v34    # "callingPid":I
    const/16 v24, 0x0

    .line 985
    .local v24, "isFromSystemUI":Z
    :goto_4
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 986
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v20

    .line 985
    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move/from16 v23, v1

    invoke-static/range {v19 .. v24}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 987
    const/4 v3, 0x0

    return v3

    .line 998
    :cond_9
    const/4 v3, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 999
    .local v3, "callingUserId":I
    move-object/from16 v19, v14

    .end local v14    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v19, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-static {v7}, Lcom/android/server/wm/OpActivityStarterInjector;->getTargetPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v14

    .line 1000
    .local v14, "targetPkgName":Ljava/lang/String;
    move-object/from16 v20, v10

    const/4 v10, 0x1

    new-array v0, v10, [I

    const/16 v21, 0x1a

    const/16 v18, 0x0

    aput v21, v0, v18

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v7, :cond_e

    if-eqz v9, :cond_e

    .line 1001
    move/from16 v68, v30

    move/from16 v21, v31

    .end local v30    # "err":I
    .end local v31    # "userId":I
    .local v21, "userId":I
    .local v68, "err":I
    move-object v0, v11

    move v10, v1

    .end local v1    # "callingUid":I
    .local v10, "callingUid":I
    move v1, v2

    move-object/from16 v23, v11

    move v11, v2

    .end local v2    # "requestCode":I
    .local v11, "requestCode":I
    .local v23, "caller":Landroid/app/IApplicationThread;
    move-object v2, v14

    move/from16 v70, v3

    move/from16 v69, v34

    .end local v3    # "callingUserId":I
    .end local v34    # "callingPid":I
    .local v69, "callingPid":I
    .local v70, "callingUserId":I
    move/from16 v3, v21

    move-object/from16 v71, v4

    .end local v4    # "resultTo":Landroid/os/IBinder;
    .local v71, "resultTo":Landroid/os/IBinder;
    move-object v4, v12

    move-object/from16 v72, v5

    .end local v5    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v72, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    move/from16 v5, v70

    move-object/from16 v48, v6

    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v48, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object v6, v7

    move-object/from16 v30, v7

    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v30, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object v7, v9

    move-object/from16 v49, v8

    move-object/from16 v73, v27

    .end local v8    # "inTask":Lcom/android/server/wm/Task;
    .end local v27    # "resolvedType":Ljava/lang/String;
    .local v49, "inTask":Lcom/android/server/wm/Task;
    .local v73, "resolvedType":Ljava/lang/String;
    move-object v8, v13

    invoke-static/range {v0 .. v8}, Lcom/android/server/wm/OpActivityStarterInjector;->checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;ILjava/lang/String;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1004
    nop

    .line 1005
    invoke-static {v14, v12}, Lcom/android/server/wm/OpActivityStarterInjector;->getBackUserIdFromStoredCallingRelation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1007
    .local v0, "backUserId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_b

    .line 1011
    move/from16 v1, v21

    .end local v21    # "userId":I
    .local v1, "userId":I
    if-eq v0, v1, :cond_a

    .line 1012
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move/from16 v8, v33

    .end local v33    # "startFlags":I
    .local v8, "startFlags":I
    invoke-static {v9, v0, v2, v8, v10}, Lcom/android/server/wm/OpActivityStarterInjector;->resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 1014
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    move v1, v0

    move-object v6, v7

    move-object v0, v9

    move/from16 v7, v70

    move v9, v1

    goto/16 :goto_6

    .line 1011
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "startFlags":I
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "startFlags":I
    :cond_a
    move/from16 v8, v33

    .end local v33    # "startFlags":I
    .restart local v8    # "startFlags":I
    move/from16 v7, v70

    goto :goto_5

    .line 1017
    .end local v1    # "userId":I
    .end local v8    # "startFlags":I
    .restart local v21    # "userId":I
    .restart local v33    # "startFlags":I
    :cond_b
    move/from16 v1, v21

    move/from16 v8, v33

    .end local v21    # "userId":I
    .end local v33    # "startFlags":I
    .restart local v1    # "userId":I
    .restart local v8    # "startFlags":I
    const-string v2, "android.intent.extra.IS_FROM_CHOOSER_ACTIVITY"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1020
    move/from16 v7, v70

    .end local v70    # "callingUserId":I
    .local v7, "callingUserId":I
    invoke-static {v14, v12, v7}, Lcom/android/server/wm/OpActivityStarterInjector;->storeCallingRelation(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 1023
    .end local v7    # "callingUserId":I
    .restart local v70    # "callingUserId":I
    :cond_c
    move/from16 v7, v70

    .end local v70    # "callingUserId":I
    .restart local v7    # "callingUserId":I
    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1024
    invoke-static {v9, v11}, Lcom/android/server/wm/OpActivityStarterInjector;->toChooserActivity(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v9

    .line 1025
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1026
    const/4 v3, 0x0

    invoke-static {v9, v3, v2, v8, v10}, Lcom/android/server/wm/OpActivityStarterInjector;->resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1028
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    move-object v6, v2

    move-object v0, v9

    move v9, v1

    goto :goto_6

    .line 1001
    .end local v0    # "backUserId":I
    .end local v1    # "userId":I
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "callingUserId":I
    .end local v8    # "startFlags":I
    .restart local v21    # "userId":I
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "startFlags":I
    .restart local v70    # "callingUserId":I
    :cond_d
    move/from16 v1, v21

    move/from16 v8, v33

    move/from16 v7, v70

    .end local v21    # "userId":I
    .end local v33    # "startFlags":I
    .end local v70    # "callingUserId":I
    .restart local v1    # "userId":I
    .restart local v7    # "callingUserId":I
    .restart local v8    # "startFlags":I
    goto :goto_5

    .line 1000
    .end local v10    # "callingUid":I
    .end local v23    # "caller":Landroid/app/IApplicationThread;
    .end local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v49    # "inTask":Lcom/android/server/wm/Task;
    .end local v68    # "err":I
    .end local v69    # "callingPid":I
    .end local v71    # "resultTo":Landroid/os/IBinder;
    .end local v72    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v73    # "resolvedType":Ljava/lang/String;
    .local v1, "callingUid":I
    .local v2, "requestCode":I
    .restart local v3    # "callingUserId":I
    .restart local v4    # "resultTo":Landroid/os/IBinder;
    .restart local v5    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v8, "inTask":Lcom/android/server/wm/Task;
    .local v11, "caller":Landroid/app/IApplicationThread;
    .restart local v27    # "resolvedType":Ljava/lang/String;
    .local v30, "err":I
    .restart local v31    # "userId":I
    .restart local v33    # "startFlags":I
    .restart local v34    # "callingPid":I
    :cond_e
    move v10, v1

    move-object/from16 v71, v4

    move-object/from16 v72, v5

    move-object/from16 v48, v6

    move-object/from16 v49, v8

    move-object/from16 v23, v11

    move-object/from16 v73, v27

    move/from16 v68, v30

    move/from16 v1, v31

    move/from16 v8, v33

    move/from16 v69, v34

    move v11, v2

    move-object/from16 v30, v7

    move v7, v3

    .line 1035
    .end local v2    # "requestCode":I
    .end local v3    # "callingUserId":I
    .end local v4    # "resultTo":Landroid/os/IBinder;
    .end local v5    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "resolvedType":Ljava/lang/String;
    .end local v31    # "userId":I
    .end local v33    # "startFlags":I
    .end local v34    # "callingPid":I
    .local v1, "userId":I
    .local v7, "callingUserId":I
    .local v8, "startFlags":I
    .restart local v10    # "callingUid":I
    .local v11, "requestCode":I
    .restart local v23    # "caller":Landroid/app/IApplicationThread;
    .local v30, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v49    # "inTask":Lcom/android/server/wm/Task;
    .restart local v68    # "err":I
    .restart local v69    # "callingPid":I
    .restart local v71    # "resultTo":Landroid/os/IBinder;
    .restart local v72    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local v73    # "resolvedType":Ljava/lang/String;
    :goto_5
    move-object v0, v9

    move-object/from16 v6, v30

    move v9, v1

    .end local v1    # "userId":I
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "intent":Landroid/content/Intent;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v9, "userId":I
    :goto_6
    invoke-static {v10, v0, v9}, Lcom/oneplus/android/os/OpParallelStorage;->updateSharedParalleledIntentIfNeeded(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 1041
    invoke-static {v10, v0, v9}, Lcom/android/server/wm/OpActivityStarterInjector;->maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v5

    .line 1046
    .end local v0    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    move/from16 v0, v68

    move/from16 v4, v69

    .end local v68    # "err":I
    .end local v69    # "callingPid":I
    .local v0, "err":I
    .local v4, "callingPid":I
    invoke-static {v0, v6, v12, v10, v4}, Lcom/android/server/wm/OpActivityStarterInjector;->isAllowToLaunch(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;II)I

    move-result v0

    .line 1051
    invoke-static {v6, v10}, Lcom/android/server/wm/OpActivityStarterInjector;->isNotAllowToLaunchFactoryMode(Landroid/content/pm/ActivityInfo;I)Z

    move-result v1

    const/16 v21, 0x64

    if-eqz v1, :cond_f

    .line 1052
    return v21

    .line 1056
    :cond_f
    const-string v3, " pid "

    const-string v2, "} from uid "

    const-string v1, " {"

    move-object/from16 v27, v12

    .end local v12    # "callingPackage":Ljava/lang/String;
    .local v27, "callingPackage":Ljava/lang/String;
    const-string v12, "START u"

    const/16 v50, 0x80

    if-nez v0, :cond_11

    .line 1059
    move/from16 v70, v7

    move/from16 v33, v8

    const/4 v7, 0x1

    .end local v7    # "callingUserId":I
    .end local v8    # "startFlags":I
    .restart local v33    # "startFlags":I
    .restart local v70    # "callingUserId":I
    new-array v8, v7, [I

    const/16 v18, 0x0

    aput v50, v8, v18

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_10

    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v8, :cond_10

    .line 1060
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setDataStringSecure(Z)V

    .line 1063
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v1

    move/from16 v31, v9

    const/4 v1, 0x1

    const/4 v8, 0x0

    .end local v9    # "userId":I
    .restart local v31    # "userId":I
    invoke-virtual {v5, v1, v1, v1, v8}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v20

    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-static {v5}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    goto :goto_7

    .line 1056
    .end local v31    # "userId":I
    .end local v33    # "startFlags":I
    .end local v70    # "callingUserId":I
    .restart local v7    # "callingUserId":I
    .restart local v8    # "startFlags":I
    .restart local v9    # "userId":I
    :cond_11
    move-object/from16 v30, v1

    move/from16 v70, v7

    move/from16 v33, v8

    move/from16 v31, v9

    move-object/from16 v9, v20

    .line 1080
    .end local v7    # "callingUserId":I
    .end local v8    # "startFlags":I
    .end local v9    # "userId":I
    .restart local v31    # "userId":I
    .restart local v33    # "startFlags":I
    .restart local v70    # "callingUserId":I
    :goto_7
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1, v6}, Lcom/android/server/wm/OpQuickReplyInjector;->killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V

    .line 1082
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v7, v15, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v5, v1, v7}, Lcom/android/server/wm/OpQuickReplyInjector;->exitQuicReplyOnCameraStart(Landroid/content/Intent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;)V

    .line 1085
    const/4 v1, 0x0

    .line 1086
    .local v1, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    const/4 v7, 0x0

    .line 1087
    .local v7, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v8, v71

    .end local v71    # "resultTo":Landroid/os/IBinder;
    .local v8, "resultTo":Landroid/os/IBinder;
    if-eqz v8, :cond_14

    .line 1088
    move-object/from16 v20, v1

    .end local v1    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v20, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/RootWindowContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1089
    .end local v20    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v20, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v20, :cond_12

    .line 1090
    move-object/from16 v51, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v52, v3

    const-string v3, "Will send result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1089
    :cond_12
    move-object/from16 v51, v2

    move-object/from16 v52, v3

    .line 1092
    :goto_8
    if-eqz v1, :cond_13

    .line 1093
    if-ltz v11, :cond_13

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_13

    .line 1094
    move-object v7, v1

    move-object/from16 v85, v7

    move-object/from16 v1, v85

    goto :goto_9

    .line 1099
    :cond_13
    move-object/from16 v85, v7

    move-object v7, v1

    move-object/from16 v1, v85

    goto :goto_9

    .line 1087
    :cond_14
    move-object/from16 v20, v1

    move-object/from16 v51, v2

    move-object/from16 v52, v3

    .end local v1    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object v1, v7

    move-object/from16 v7, v20

    .line 1099
    .end local v20    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v1, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v7, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_9
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v20

    .line 1100
    .local v20, "launchFlags":I
    const/high16 v2, 0x2000000

    and-int v2, v20, v2

    if-eqz v2, :cond_19

    if-eqz v7, :cond_19

    .line 1103
    if-ltz v11, :cond_15

    .line 1104
    invoke-static {v13}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1105
    const/16 v2, -0x5d

    return v2

    .line 1107
    :cond_15
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1108
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1109
    const/4 v1, 0x0

    .line 1111
    :cond_16
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1112
    .end local v29    # "resultWho":Ljava/lang/String;
    .local v3, "resultWho":Ljava/lang/String;
    iget v2, v7, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1113
    .end local v11    # "requestCode":I
    .restart local v2    # "requestCode":I
    const/4 v11, 0x0

    iput-object v11, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1114
    if-eqz v1, :cond_17

    .line 1115
    invoke-virtual {v1, v7, v3, v2}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1117
    :cond_17
    iget v11, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v11, v10, :cond_18

    .line 1128
    iget-object v11, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1129
    .end local v27    # "callingPackage":Ljava/lang/String;
    .local v11, "callingPackage":Ljava/lang/String;
    move-object/from16 v34, v1

    .end local v1    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v34, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object/from16 v74, v1

    move/from16 v69, v2

    move-object/from16 v71, v3

    move-object/from16 v68, v34

    .end local v25    # "callingFeatureId":Ljava/lang/String;
    .local v1, "callingFeatureId":Ljava/lang/String;
    goto :goto_a

    .line 1117
    .end local v11    # "callingPackage":Ljava/lang/String;
    .end local v34    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v1, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "callingFeatureId":Ljava/lang/String;
    .restart local v27    # "callingPackage":Ljava/lang/String;
    :cond_18
    move-object/from16 v34, v1

    .end local v1    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v34    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    move/from16 v69, v2

    move-object/from16 v71, v3

    move-object/from16 v74, v25

    move-object/from16 v11, v27

    move-object/from16 v68, v34

    goto :goto_a

    .line 1133
    .end local v2    # "requestCode":I
    .end local v3    # "resultWho":Ljava/lang/String;
    .end local v34    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v11, "requestCode":I
    .restart local v29    # "resultWho":Ljava/lang/String;
    :cond_19
    move-object/from16 v68, v1

    move/from16 v69, v11

    move-object/from16 v74, v25

    move-object/from16 v11, v27

    move-object/from16 v71, v29

    .end local v1    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v25    # "callingFeatureId":Ljava/lang/String;
    .end local v27    # "callingPackage":Ljava/lang/String;
    .end local v29    # "resultWho":Ljava/lang/String;
    .local v11, "callingPackage":Ljava/lang/String;
    .local v68, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v69, "requestCode":I
    .local v71, "resultWho":Ljava/lang/String;
    .local v74, "callingFeatureId":Ljava/lang/String;
    :goto_a
    if-nez v0, :cond_1a

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 1136
    const/16 v0, -0x5b

    .line 1139
    :cond_1a
    if-nez v0, :cond_1b

    if-nez v6, :cond_1b

    .line 1142
    const/16 v0, -0x5c

    move v1, v0

    goto :goto_b

    .line 1145
    :cond_1b
    move v1, v0

    .end local v0    # "err":I
    .local v1, "err":I
    :goto_b
    const-string v2, "Failure checking voice capabilities"

    if-nez v1, :cond_1f

    if-eqz v7, :cond_1f

    .line 1146
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1e

    .line 1151
    const/high16 v0, 0x10000000

    and-int v0, v20, v0

    if-nez v0, :cond_1d

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v3, :cond_1d

    .line 1154
    :try_start_0
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1156
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1155
    move-object/from16 v53, v14

    move-object/from16 v14, v73

    .end local v73    # "resolvedType":Ljava/lang/String;
    .local v14, "resolvedType":Ljava/lang/String;
    .local v53, "targetPkgName":Ljava/lang/String;
    :try_start_1
    invoke-interface {v0, v3, v5, v14}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1159
    const/16 v0, -0x61

    move v1, v0

    .line 1164
    :cond_1c
    goto :goto_d

    .line 1161
    :catch_0
    move-exception v0

    goto :goto_c

    .end local v53    # "targetPkgName":Ljava/lang/String;
    .local v14, "targetPkgName":Ljava/lang/String;
    .restart local v73    # "resolvedType":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v53, v14

    move-object/from16 v14, v73

    .line 1162
    .end local v73    # "resolvedType":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .local v14, "resolvedType":Ljava/lang/String;
    .restart local v53    # "targetPkgName":Ljava/lang/String;
    :goto_c
    invoke-static {v9, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    const/16 v1, -0x61

    goto :goto_d

    .line 1151
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v53    # "targetPkgName":Ljava/lang/String;
    .local v14, "targetPkgName":Ljava/lang/String;
    .restart local v73    # "resolvedType":Ljava/lang/String;
    :cond_1d
    move-object/from16 v53, v14

    move-object/from16 v14, v73

    .end local v73    # "resolvedType":Ljava/lang/String;
    .local v14, "resolvedType":Ljava/lang/String;
    .restart local v53    # "targetPkgName":Ljava/lang/String;
    goto :goto_d

    .line 1146
    .end local v53    # "targetPkgName":Ljava/lang/String;
    .local v14, "targetPkgName":Ljava/lang/String;
    .restart local v73    # "resolvedType":Ljava/lang/String;
    :cond_1e
    move-object/from16 v53, v14

    move-object/from16 v14, v73

    .end local v73    # "resolvedType":Ljava/lang/String;
    .local v14, "resolvedType":Ljava/lang/String;
    .restart local v53    # "targetPkgName":Ljava/lang/String;
    goto :goto_d

    .line 1145
    .end local v53    # "targetPkgName":Ljava/lang/String;
    .local v14, "targetPkgName":Ljava/lang/String;
    .restart local v73    # "resolvedType":Ljava/lang/String;
    :cond_1f
    move-object/from16 v53, v14

    move-object/from16 v14, v73

    .line 1168
    .end local v73    # "resolvedType":Ljava/lang/String;
    .local v14, "resolvedType":Ljava/lang/String;
    .restart local v53    # "targetPkgName":Ljava/lang/String;
    :goto_d
    if-nez v1, :cond_21

    if-eqz v72, :cond_21

    .line 1172
    :try_start_2
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v0, v3, v5, v14}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1176
    const/16 v0, -0x61

    move v1, v0

    .line 1181
    :cond_20
    move/from16 v73, v1

    goto :goto_e

    .line 1178
    :catch_2
    move-exception v0

    .line 1179
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v9, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1180
    const/16 v1, -0x61

    move/from16 v73, v1

    goto :goto_e

    .line 1184
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    move/from16 v73, v1

    .end local v1    # "err":I
    .local v73, "err":I
    :goto_e
    if-nez v68, :cond_22

    .line 1185
    const/16 v47, 0x0

    goto :goto_f

    :cond_22
    invoke-virtual/range {v68 .. v68}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object/from16 v47, v0

    .line 1187
    .local v47, "resultStack":Lcom/android/server/wm/ActivityStack;
    :goto_f
    if-eqz v73, :cond_24

    .line 1188
    if-eqz v68, :cond_23

    .line 1189
    const/16 v36, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v35, v68

    move-object/from16 v37, v71

    move/from16 v38, v69

    invoke-virtual/range {v35 .. v41}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1192
    :cond_23
    invoke-static {v13}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1193
    return v73

    .line 1196
    :cond_24
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v3, p1

    move-object/from16 v2, v19

    .end local v19    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v2, "callerApp":Lcom/android/server/wm/WindowProcessController;
    iget-boolean v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    if-eqz v49, :cond_25

    const/16 v44, 0x1

    goto :goto_10

    :cond_25
    const/16 v44, 0x0

    :goto_10
    move-object/from16 v34, v0

    move-object/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v71

    move/from16 v38, v69

    move/from16 v39, v4

    move/from16 v40, v10

    move-object/from16 v41, v11

    move-object/from16 v42, v74

    move/from16 v43, v1

    move-object/from16 v45, v2

    move-object/from16 v46, v68

    invoke-virtual/range {v34 .. v47}, Lcom/android/server/wm/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v19, v0

    .line 1199
    .local v19, "abort":Z
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v1

    move-object/from16 v75, v30

    move-object v1, v5

    move-object/from16 v46, v2

    move-object/from16 v76, v51

    .end local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v46, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move v2, v10

    move-object/from16 v51, v12

    move-object/from16 v77, v52

    move-object v12, v3

    move v3, v4

    move/from16 v34, v4

    .end local v4    # "callingPid":I
    .local v34, "callingPid":I
    move-object v4, v14

    move-object/from16 v35, v14

    move-object v14, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .local v14, "intent":Landroid/content/Intent;
    .local v35, "resolvedType":Ljava/lang/String;
    move-object/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/16 v22, 0x1

    xor-int/lit8 v0, v0, 0x1

    or-int v0, v19, v0

    .line 1201
    .end local v19    # "abort":Z
    .local v0, "abort":Z
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v1

    invoke-virtual {v1, v14, v10, v11}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int v19, v0, v1

    .line 1204
    .end local v0    # "abort":Z
    .restart local v19    # "abort":Z
    const/16 v25, 0x0

    .line 1205
    .local v25, "restrictedBgActivity":Z
    if-nez v19, :cond_26

    .line 1207
    const-wide/16 v4, 0x20

    :try_start_3
    const-string v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1209
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iget-boolean v3, v12, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v27, v3

    move/from16 v3, v34

    move-wide/from16 v29, v4

    move-object v4, v11

    move/from16 v5, v28

    move-object/from16 v52, v11

    move-object v11, v6

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v52, "callingPackage":Ljava/lang/String;
    move/from16 v6, v32

    move-object/from16 v78, v7

    .end local v7    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v78, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v7, v46

    move-object/from16 v79, v8

    move/from16 v54, v33

    .end local v8    # "resultTo":Landroid/os/IBinder;
    .end local v33    # "startFlags":I
    .local v54, "startFlags":I
    .local v79, "resultTo":Landroid/os/IBinder;
    move-object v8, v0

    move/from16 v80, v31

    move-object/from16 v31, v9

    .end local v31    # "userId":I
    .local v80, "userId":I
    move/from16 v9, v27

    move/from16 v33, v10

    move-object/from16 v22, v26

    move/from16 v81, v28

    move-object/from16 v82, v31

    .end local v10    # "callingUid":I
    .end local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v28    # "realCallingUid":I
    .local v22, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v33, "callingUid":I
    .local v81, "realCallingUid":I
    move-object v10, v14

    :try_start_4
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v25, v0

    .line 1214
    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    .line 1215
    move/from16 v84, v25

    goto :goto_12

    .line 1214
    :catchall_0
    move-exception v0

    goto :goto_11

    .end local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v52    # "callingPackage":Ljava/lang/String;
    .end local v54    # "startFlags":I
    .end local v78    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v79    # "resultTo":Landroid/os/IBinder;
    .end local v80    # "userId":I
    .end local v81    # "realCallingUid":I
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "resultTo":Landroid/os/IBinder;
    .restart local v10    # "callingUid":I
    .local v11, "callingPackage":Ljava/lang/String;
    .restart local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v28    # "realCallingUid":I
    .restart local v31    # "userId":I
    .local v33, "startFlags":I
    :catchall_1
    move-exception v0

    move-wide/from16 v29, v4

    move-object/from16 v78, v7

    move-object/from16 v79, v8

    move-object/from16 v52, v11

    move-object/from16 v22, v26

    move/from16 v81, v28

    move/from16 v80, v31

    move/from16 v54, v33

    move-object v11, v6

    move/from16 v33, v10

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "resultTo":Landroid/os/IBinder;
    .end local v10    # "callingUid":I
    .end local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v28    # "realCallingUid":I
    .end local v31    # "userId":I
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v33, "callingUid":I
    .restart local v52    # "callingPackage":Ljava/lang/String;
    .restart local v54    # "startFlags":I
    .restart local v78    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v79    # "resultTo":Landroid/os/IBinder;
    .restart local v80    # "userId":I
    .restart local v81    # "realCallingUid":I
    :goto_11
    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    .line 1215
    throw v0

    .line 1205
    .end local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v52    # "callingPackage":Ljava/lang/String;
    .end local v54    # "startFlags":I
    .end local v78    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v79    # "resultTo":Landroid/os/IBinder;
    .end local v80    # "userId":I
    .end local v81    # "realCallingUid":I
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "resultTo":Landroid/os/IBinder;
    .restart local v10    # "callingUid":I
    .local v11, "callingPackage":Ljava/lang/String;
    .restart local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v28    # "realCallingUid":I
    .restart local v31    # "userId":I
    .local v33, "startFlags":I
    :cond_26
    move-object/from16 v78, v7

    move-object/from16 v79, v8

    move-object/from16 v82, v9

    move-object/from16 v52, v11

    move-object/from16 v22, v26

    move/from16 v81, v28

    move/from16 v80, v31

    move/from16 v54, v33

    move-object v11, v6

    move/from16 v33, v10

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "resultTo":Landroid/os/IBinder;
    .end local v10    # "callingUid":I
    .end local v26    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v28    # "realCallingUid":I
    .end local v31    # "userId":I
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v33, "callingUid":I
    .restart local v52    # "callingPackage":Ljava/lang/String;
    .restart local v54    # "startFlags":I
    .restart local v78    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v79    # "resultTo":Landroid/os/IBinder;
    .restart local v80    # "userId":I
    .restart local v81    # "realCallingUid":I
    move/from16 v84, v25

    .line 1219
    .end local v25    # "restrictedBgActivity":Z
    .local v84, "restrictedBgActivity":Z
    :goto_12
    if-eqz v13, :cond_27

    .line 1220
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v10, v46

    .end local v46    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v10, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v13, v14, v11, v10, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_13

    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v46    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_27
    move-object/from16 v10, v46

    .end local v46    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const/4 v0, 0x0

    .line 1221
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_13
    iget-boolean v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v1, :cond_28

    .line 1222
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 1223
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v1

    .line 1224
    move-object/from16 v9, v52

    .end local v52    # "callingPackage":Ljava/lang/String;
    .local v9, "callingPackage":Ljava/lang/String;
    invoke-virtual {v1, v9, v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v36, v0

    goto :goto_14

    .line 1221
    .end local v9    # "callingPackage":Ljava/lang/String;
    .restart local v52    # "callingPackage":Ljava/lang/String;
    :cond_28
    move-object/from16 v9, v52

    .end local v52    # "callingPackage":Ljava/lang/String;
    .restart local v9    # "callingPackage":Ljava/lang/String;
    move-object/from16 v36, v0

    .line 1226
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v36, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_14
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_29

    .line 1230
    :try_start_5
    invoke-virtual {v14}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 1231
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

    or-int v19, v19, v1

    .line 1235
    .end local v0    # "watchIntent":Landroid/content/Intent;
    goto :goto_15

    .line 1233
    :catch_3
    move-exception v0

    const/4 v8, 0x1

    .line 1234
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_15

    .line 1226
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_29
    const/4 v8, 0x1

    .line 1238
    :goto_15
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v25, v0

    move/from16 v26, v80

    move/from16 v27, v32

    move/from16 v28, v81

    move/from16 v29, v54

    move-object/from16 v30, v9

    move-object/from16 v31, v74

    invoke-virtual/range {v25 .. v31}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object v1, v14

    move-object/from16 v2, v48

    move-object v3, v11

    move-object/from16 v4, v35

    move-object/from16 v5, v49

    move/from16 v6, v34

    move/from16 v7, v33

    move-object/from16 v46, v10

    move v10, v8

    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v46    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v8, v36

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1244
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1245
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1246
    .end local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1247
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1248
    .end local v35    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1249
    .end local v49    # "inTask":Lcom/android/server/wm/Task;
    .local v1, "inTask":Lcom/android/server/wm/Task;
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v3, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1250
    .end local v34    # "callingPid":I
    .local v3, "callingPid":I
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v2, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1251
    .end local v33    # "callingUid":I
    .local v2, "callingUid":I
    iget-object v4, v15, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 1255
    .end local v36    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v4, "checkedOptions":Landroid/app/ActivityOptions;
    const/4 v7, 0x0

    move-object/from16 v83, v4

    move-object/from16 v48, v6

    move-object/from16 v22, v7

    move-object v6, v0

    move-object v0, v1

    move v1, v2

    .end local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v7, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_16

    .line 1240
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "inTask":Lcom/android/server/wm/Task;
    .end local v2    # "callingUid":I
    .end local v3    # "callingPid":I
    .end local v4    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v33    # "callingUid":I
    .restart local v34    # "callingPid":I
    .restart local v35    # "resolvedType":Ljava/lang/String;
    .restart local v36    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v49    # "inTask":Lcom/android/server/wm/Task;
    :cond_2a
    move-object v6, v11

    move-object v5, v14

    move/from16 v1, v33

    move/from16 v3, v34

    move-object/from16 v8, v35

    move-object/from16 v83, v36

    move-object/from16 v0, v49

    .line 1258
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v33    # "callingUid":I
    .end local v34    # "callingPid":I
    .end local v35    # "resolvedType":Ljava/lang/String;
    .end local v36    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v49    # "inTask":Lcom/android/server/wm/Task;
    .local v0, "inTask":Lcom/android/server/wm/Task;
    .local v1, "callingUid":I
    .restart local v3    # "callingPid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    .local v83, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_16
    if-eqz v19, :cond_2c

    .line 1259
    if-eqz v68, :cond_2b

    .line 1260
    const/16 v36, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v35, v68

    move-object/from16 v37, v71

    move/from16 v38, v69

    invoke-virtual/range {v35 .. v41}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1265
    :cond_2b
    invoke-static/range {v83 .. v83}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1266
    const/16 v2, 0x66

    return v2

    .line 1272
    :cond_2c
    if-eqz v6, :cond_33

    .line 1273
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v7, v80

    .end local v80    # "userId":I
    .local v7, "userId":I
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1275
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v34, 0x2

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    new-array v4, v10, [Landroid/content/Intent;

    const/4 v11, 0x0

    aput-object v5, v4, v11

    new-array v14, v10, [Ljava/lang/String;

    aput-object v8, v14, v11

    const/high16 v44, 0x50000000

    const/16 v45, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v9

    move-object/from16 v36, v74

    move/from16 v37, v1

    move/from16 v38, v7

    move-object/from16 v42, v4

    move-object/from16 v43, v14

    invoke-virtual/range {v33 .. v45}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 1281
    .local v2, "target":Landroid/content/IIntentSender;
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v4, "newIntent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v11

    .line 1284
    .local v11, "flags":I
    const/high16 v14, 0x800000

    or-int/2addr v11, v14

    .line 1295
    const/high16 v14, 0x10080000

    and-int/2addr v14, v11

    if-eqz v14, :cond_2d

    .line 1296
    const/high16 v14, 0x8000000

    or-int/2addr v11, v14

    .line 1298
    :cond_2d
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1300
    iget-object v14, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    new-instance v10, Landroid/content/IntentSender;

    invoke-direct {v10, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v14, "android.intent.extra.INTENT"

    invoke-virtual {v4, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1302
    if-eqz v68, :cond_2e

    .line 1303
    const-string v10, "android.intent.extra.RESULT_NEEDED"

    const/4 v14, 0x1

    invoke-virtual {v4, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1305
    :cond_2e
    move-object v5, v4

    .line 1309
    const/16 v22, 0x0

    .line 1311
    const/4 v8, 0x0

    .line 1312
    move/from16 v1, v81

    .line 1313
    move/from16 v3, v32

    .line 1315
    iget-object v10, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v37, 0x0

    iget v14, v12, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1316
    move-object/from16 v52, v9

    move/from16 v9, v81

    .end local v81    # "realCallingUid":I
    .local v9, "realCallingUid":I
    .restart local v52    # "callingPackage":Ljava/lang/String;
    invoke-static {v1, v9, v14}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v38

    .line 1315
    move-object/from16 v33, v10

    move-object/from16 v34, v5

    move-object/from16 v35, v8

    move/from16 v36, v7

    invoke-virtual/range {v33 .. v38}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1318
    .end local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v26, v2

    move-object/from16 v17, v4

    move/from16 v2, v54

    const/4 v4, 0x0

    .end local v4    # "newIntent":Landroid/content/Intent;
    .end local v54    # "startFlags":I
    .local v2, "startFlags":I
    .local v17, "newIntent":Landroid/content/Intent;
    .local v26, "target":Landroid/content/IIntentSender;
    invoke-virtual {v14, v5, v10, v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1321
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v14, :cond_31

    .line 1322
    iget-object v14, v15, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1323
    invoke-virtual {v14}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v14

    .line 1326
    .local v14, "focusedStack":Lcom/android/server/wm/ActivityStack;
    move/from16 v33, v2

    const/4 v4, 0x1

    .end local v2    # "startFlags":I
    .local v33, "startFlags":I
    new-array v2, v4, [I

    const/16 v18, 0x0

    aput v50, v2, v18

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v2, :cond_2f

    .line 1327
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setDataStringSecure(Z)V

    .line 1330
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v51

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v75

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "resolvedType":Ljava/lang/String;
    invoke-virtual {v5, v6, v6, v6, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v76

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v77

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " on display "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    if-nez v14, :cond_30

    move v8, v4

    goto :goto_17

    .line 1340
    :cond_30
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v8

    :goto_17
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1330
    move-object/from16 v8, v82

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1321
    .end local v14    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "resolvedType":Ljava/lang/String;
    .end local v33    # "startFlags":I
    .restart local v2    # "startFlags":I
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    :cond_31
    move/from16 v33, v2

    move-object/from16 v18, v6

    move-object/from16 v25, v8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1349
    .end local v2    # "startFlags":I
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v11    # "flags":I
    .end local v17    # "newIntent":Landroid/content/Intent;
    .end local v26    # "target":Landroid/content/IIntentSender;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v25    # "resolvedType":Ljava/lang/String;
    .restart local v33    # "startFlags":I
    :goto_18
    move-object/from16 v2, v18

    move-object/from16 v8, v25

    goto :goto_1a

    .line 1273
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "resolvedType":Ljava/lang/String;
    .end local v33    # "startFlags":I
    .end local v52    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    .local v9, "callingPackage":Ljava/lang/String;
    .restart local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v54    # "startFlags":I
    .restart local v81    # "realCallingUid":I
    :cond_32
    move-object v11, v6

    move-object/from16 v52, v9

    move v6, v10

    move/from16 v33, v54

    move/from16 v9, v81

    const/4 v4, 0x0

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v54    # "startFlags":I
    .end local v81    # "realCallingUid":I
    .local v9, "realCallingUid":I
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "startFlags":I
    .restart local v52    # "callingPackage":Ljava/lang/String;
    goto :goto_19

    .line 1272
    .end local v7    # "userId":I
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "startFlags":I
    .end local v52    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v9, "callingPackage":Ljava/lang/String;
    .restart local v54    # "startFlags":I
    .restart local v80    # "userId":I
    .restart local v81    # "realCallingUid":I
    :cond_33
    move-object v11, v6

    move-object/from16 v52, v9

    move v6, v10

    move/from16 v33, v54

    move/from16 v7, v80

    move/from16 v9, v81

    const/4 v4, 0x0

    .line 1349
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v54    # "startFlags":I
    .end local v80    # "userId":I
    .end local v81    # "realCallingUid":I
    .restart local v7    # "userId":I
    .local v9, "realCallingUid":I
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "startFlags":I
    .restart local v52    # "callingPackage":Ljava/lang/String;
    :goto_19
    move-object v2, v11

    move-object/from16 v10, v48

    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_1a
    if-eqz v10, :cond_34

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v11, :cond_34

    .line 1350
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v11, v12, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    move-object/from16 v17, v11

    move-object/from16 v34, v52

    .end local v52    # "callingPackage":Ljava/lang/String;
    .local v34, "callingPackage":Ljava/lang/String;
    move-object/from16 v11, p0

    const/4 v4, 0x0

    move-object v12, v14

    move-object/from16 v36, v13

    move/from16 v35, v32

    move/from16 v4, v33

    const/4 v14, 0x0

    .end local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v32    # "realCallingPid":I
    .end local v33    # "startFlags":I
    .local v4, "startFlags":I
    .local v35, "realCallingPid":I
    .local v36, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v13, v17

    move-object/from16 v6, p1

    move-object/from16 v26, v5

    move v5, v14

    move-object/from16 v37, v53

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v53    # "targetPkgName":Ljava/lang/String;
    .local v26, "intent":Landroid/content/Intent;
    .local v37, "targetPkgName":Ljava/lang/String;
    move-object/from16 v14, v34

    move-object v5, v15

    move-object/from16 v15, v74

    move-object/from16 v17, v8

    move/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 1352
    .end local v26    # "intent":Landroid/content/Intent;
    .local v11, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 1353
    move v1, v9

    .line 1354
    move/from16 v3, v35

    .line 1358
    const/16 v22, 0x0

    .line 1360
    iget-object v12, v5, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v10, v4, v13}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move v12, v1

    move-object v13, v2

    move v14, v3

    move-object/from16 v17, v8

    move-object v15, v11

    goto :goto_1b

    .line 1349
    .end local v4    # "startFlags":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v34    # "callingPackage":Ljava/lang/String;
    .end local v35    # "realCallingPid":I
    .end local v36    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v37    # "targetPkgName":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v32    # "realCallingPid":I
    .restart local v33    # "startFlags":I
    .restart local v52    # "callingPackage":Ljava/lang/String;
    .restart local v53    # "targetPkgName":Ljava/lang/String;
    :cond_34
    move-object/from16 v26, v5

    move-object v6, v12

    move-object/from16 v36, v13

    move-object v5, v15

    move/from16 v35, v32

    move/from16 v4, v33

    move-object/from16 v34, v52

    move-object/from16 v37, v53

    .line 1363
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v32    # "realCallingPid":I
    .end local v33    # "startFlags":I
    .end local v52    # "callingPackage":Ljava/lang/String;
    .end local v53    # "targetPkgName":Ljava/lang/String;
    .restart local v4    # "startFlags":I
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v34    # "callingPackage":Ljava/lang/String;
    .restart local v35    # "realCallingPid":I
    .restart local v36    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v37    # "targetPkgName":Ljava/lang/String;
    move v12, v1

    move-object v13, v2

    move v14, v3

    move-object/from16 v17, v8

    move-object/from16 v15, v26

    .end local v1    # "callingUid":I
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "callingPid":I
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v26    # "intent":Landroid/content/Intent;
    .local v12, "callingUid":I
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v14, "callingPid":I
    .local v15, "intent":Landroid/content/Intent;
    .local v17, "resolvedType":Ljava/lang/String;
    :goto_1b
    new-instance v1, Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v5, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1365
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v58

    iget-boolean v3, v6, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    if-eqz v72, :cond_35

    const/16 v63, 0x1

    goto :goto_1c

    :cond_35
    const/16 v63, 0x0

    :goto_1c
    iget-object v8, v5, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v64, v8

    move-object/from16 v48, v1

    move-object/from16 v49, v2

    move-object/from16 v50, v46

    move/from16 v51, v14

    move/from16 v52, v12

    move-object/from16 v53, v34

    move-object/from16 v54, v74

    move-object/from16 v55, v15

    move-object/from16 v56, v17

    move-object/from16 v57, v13

    move-object/from16 v59, v68

    move-object/from16 v60, v71

    move/from16 v61, v69

    move/from16 v62, v3

    move-object/from16 v65, v83

    move-object/from16 v66, v78

    invoke-direct/range {v48 .. v66}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    move-object v11, v1

    .line 1368
    .local v11, "r":Lcom/android/server/wm/ActivityRecord;
    iput-object v11, v5, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1370
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v1, :cond_36

    move-object/from16 v8, v78

    .end local v78    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v8, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_37

    .line 1373
    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_1d

    .line 1370
    .end local v8    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v78    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_36
    move-object/from16 v8, v78

    .line 1376
    .end local v78    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_37
    :goto_1d
    iget-object v1, v5, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v18

    .line 1380
    .local v18, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v72, :cond_3b

    if-eqz v18, :cond_3b

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1381
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v9, :cond_3b

    .line 1382
    :cond_38
    iget-object v1, v5, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v30, "Activity start"

    move-object/from16 v25, v1

    move/from16 v26, v14

    move/from16 v27, v12

    move/from16 v28, v35

    move/from16 v29, v9

    invoke-virtual/range {v25 .. v30}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1384
    if-eqz v84, :cond_39

    invoke-direct {v5, v11}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1385
    :cond_39
    iget-object v1, v5, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    new-instance v2, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v27, v2

    move-object/from16 v28, v11

    move-object/from16 v29, v8

    move/from16 v30, v4

    move-object/from16 v31, v18

    move-object/from16 v32, v46

    move-object/from16 v33, v22

    invoke-direct/range {v27 .. v33}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 1388
    :cond_3a
    invoke-static/range {v83 .. v83}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1389
    return v21

    .line 1393
    :cond_3b
    iget-object v1, v5, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->onStartActivitySetDidAppSwitch()V

    .line 1394
    iget-object v1, v5, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 1396
    iget-object v2, v6, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/16 v21, 0x1

    move-object/from16 v1, p0

    move-object/from16 v25, v2

    move-object v2, v11

    move/from16 v26, v3

    move-object v3, v8

    move/from16 v27, v4

    .end local v4    # "startFlags":I
    .local v27, "startFlags":I
    move-object/from16 v4, v72

    move-object/from16 v5, v25

    move/from16 v25, v12

    move-object v12, v6

    .end local v12    # "callingUid":I
    .local v25, "callingUid":I
    move/from16 v6, v27

    move/from16 v28, v7

    .end local v7    # "userId":I
    .local v28, "userId":I
    move/from16 v7, v21

    move-object/from16 v21, v8

    .end local v8    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v21, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v8, v83

    move/from16 v29, v9

    .end local v9    # "realCallingUid":I
    .local v29, "realCallingUid":I
    move-object v9, v0

    move-object/from16 v48, v10

    move-object/from16 v30, v46

    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v46    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v30, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    move/from16 v10, v84

    move-object/from16 v31, v11

    .end local v11    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v31, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v11, v22

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v1

    move-object/from16 v2, p0

    iput v1, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 1400
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3c

    .line 1401
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v3, v1, v26

    .line 1404
    :cond_3c
    iget v1, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    return v1

    .line 917
    .end local v0    # "inTask":Lcom/android/server/wm/Task;
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "callingPid":I
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "verificationBundle":Landroid/os/Bundle;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v18    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v19    # "abort":Z
    .end local v20    # "launchFlags":I
    .end local v21    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v23    # "caller":Landroid/app/IApplicationThread;
    .end local v24    # "isFromSystemUI":Z
    .end local v25    # "callingUid":I
    .end local v27    # "startFlags":I
    .end local v28    # "userId":I
    .end local v29    # "realCallingUid":I
    .end local v30    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v31    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v34    # "callingPackage":Ljava/lang/String;
    .end local v35    # "realCallingPid":I
    .end local v36    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v37    # "targetPkgName":Ljava/lang/String;
    .end local v47    # "resultStack":Lcom/android/server/wm/ActivityStack;
    .end local v48    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v67    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v68    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v69    # "requestCode":I
    .end local v70    # "callingUserId":I
    .end local v71    # "resultWho":Ljava/lang/String;
    .end local v72    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v73    # "err":I
    .end local v74    # "callingFeatureId":Ljava/lang/String;
    .end local v79    # "resultTo":Landroid/os/IBinder;
    .end local v83    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v84    # "restrictedBgActivity":Z
    :cond_3d
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

    .line 1433
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

    .line 2946
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0, p1, v1}, Lcom/android/server/wm/OpQuickReplyInjector;->enableFreeFormWindowManagement(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 2950
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 2951
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2954
    :cond_0
    if-eqz p4, :cond_1

    .line 2955
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

    .line 2956
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

    .line 2723
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2724
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2725
    .local v0, "launchTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 2726
    return-object v0

    .line 2728
    :cond_0
    return-object v1

    .line 2736
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

    .line 2738
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v5

    .line 2742
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

    .line 2743
    const/4 v2, 0x0

    .line 2744
    .local v2, "intentActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_9

    .line 2745
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v4, v7, :cond_6

    .line 2748
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2749
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    .line 2748
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_2

    .line 2750
    :cond_6
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_8

    .line 2753
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

    .line 2757
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2758
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2762
    :cond_9
    :goto_2
    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2763
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2764
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v3, v4, :cond_b

    .line 2766
    const/4 v2, 0x0

    .line 2769
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

    .line 1414
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1415
    .local v0, "abort":Z
    if-nez v0, :cond_0

    .line 1416
    const/4 v1, 0x0

    return v1

    .line 1418
    :cond_0
    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1419
    .local v9, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1420
    .local v10, "resultWho":Ljava/lang/String;
    iget v11, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1421
    .local v11, "requestCode":I
    if-eqz v9, :cond_1

    .line 1422
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1427
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1428
    return v1
.end method

.method private handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;
    .locals 7
    .param p1, "started"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I

    .line 1787
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1788
    .local v0, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1790
    .local v1, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1791
    if-eqz v1, :cond_1

    .line 1795
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1796
    .local v2, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1797
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1798
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    const/4 v6, 0x0

    .line 1797
    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1802
    .end local v2    # "currentTop":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    return-object v1

    .line 1808
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1809
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_3

    .line 1810
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "startActivity"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1814
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1815
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->hasActivity()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1816
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1817
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 1818
    const/4 v1, 0x0

    .line 1820
    :cond_4
    return-object v1
.end method

.method private isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2076
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2077
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 2078
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

    .line 2082
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2083
    const/16 v0, -0x5c

    return v0

    .line 2089
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_2

    .line 2090
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot launch home on display area "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/16 v0, -0x60

    return v0

    .line 2097
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

    .line 2098
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abort background activity starts from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    const/16 v0, 0x66

    return v0

    .line 2106
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

    .line 2109
    .local v0, "isNewClearTask":Z
    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    const/16 v1, 0x65

    return v1

    .line 2115
    :cond_6
    return v4
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 2965
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

    .line 2961
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

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    .line 1442
    return-void
.end method

.method private resolveToHeavyWeightSwitcherIfNeeded()I
    .locals 18

    .line 789
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

    .line 795
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

    .line 797
    return v2

    .line 800
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 801
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

    .line 802
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 806
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 807
    .local v3, "appCallingUid":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_4

    .line 808
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 809
    .local v4, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v4, :cond_3

    .line 810
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    .line 812
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

    .line 813
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 812
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 815
    const/16 v2, -0x5e

    return v2

    .line 819
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

    .line 827
    .local v5, "target":Landroid/content/IIntentSender;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 828
    .local v6, "newIntent":Landroid/content/Intent;
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    if-ltz v7, :cond_5

    .line 830
    const-string v7, "has_result"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 832
    :cond_5
    new-instance v7, Landroid/content/IntentSender;

    invoke-direct {v7, v5}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v8, "intent"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 833
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 834
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "new_app"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 837
    const-class v7, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 838
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 837
    const-string v8, "android"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v6, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 840
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 841
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v8, v7, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 842
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    iput v9, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 843
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    iput v9, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 844
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 845
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

    .line 847
    invoke-static {v7, v14, v15}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v14

    .line 845
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 849
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 850
    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_6
    iput-object v8, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 851
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_7

    .line 852
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

    .line 856
    :cond_7
    return v2

    .line 803
    .end local v3    # "appCallingUid":I
    .end local v5    # "target":Landroid/content/IIntentSender;
    .end local v6    # "newIntent":Landroid/content/Intent;
    :cond_8
    :goto_1
    return v2

    .line 792
    .end local v1    # "heavy":Lcom/android/server/wm/WindowProcessController;
    :cond_9
    :goto_2
    return v2
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .line 2850
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2851
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    .line 2853
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2855
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 2856
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 8

    .line 2589
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2594
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
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

    .line 2598
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2600
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

    .line 2466
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 2468
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2469
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2470
    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2471
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2472
    move-object/from16 v15, p6

    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2473
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2474
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2475
    move/from16 v6, p9

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2477
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2481
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

    .line 2483
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2484
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    .line 2485
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2486
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2488
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2490
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

    .line 2492
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 2490
    invoke-direct {v0, v9, v1, v4, v6}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2493
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_3

    .line 2494
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

    .line 2497
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 2499
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_4

    .line 2500
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2505
    :cond_4
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 2506
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_5

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_6

    .line 2508
    :cond_5
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2514
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

    .line 2515
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

    .line 2521
    :cond_8
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2522
    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_a

    .line 2523
    :cond_9
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2524
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2527
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v4, 0x0

    if-eqz v1, :cond_e

    .line 2528
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2529
    invoke-virtual {v9, v3}, Lcom/android/server/wm/ActivityRecord;->setTaskOverlay(Z)V

    .line 2530
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2531
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2532
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    .line 2531
    invoke-virtual {v1, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2533
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_b

    .line 2534
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_5

    :cond_b
    move-object v5, v4

    .line 2535
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    :goto_5
    if-eqz v5, :cond_c

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2539
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2540
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2542
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_c
    goto :goto_6

    .line 2543
    :cond_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2544
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2545
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2549
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

    .line 2551
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2556
    if-eqz v10, :cond_10

    iget-boolean v1, v10, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v1, :cond_10

    .line 2557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2561
    :cond_10
    iput v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2565
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_13

    .line 2566
    move-object/from16 v1, p6

    .line 2567
    .local v1, "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 2568
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2569
    .local v2, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_11

    .line 2570
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2573
    .end local v2    # "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_11
    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2574
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2576
    :cond_12
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2580
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

    .line 2582
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2583
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2584
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2586
    :cond_15
    return-void
.end method

.method private setNewTask(Lcom/android/server/wm/Task;)V
    .locals 11
    .param p1, "taskToAffiliate"    # Lcom/android/server/wm/Task;

    .line 2859
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

    .line 2860
    .local v7, "toTop":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2861
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_1
    move-object v3, v0

    .line 2862
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

    .line 2860
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityStack;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2864
    .local v0, "task":Lcom/android/server/wm/Task;
    const-string v2, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 2868
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpQuickReplyInjector;->updateLaunchParams(Landroid/app/ActivityOptions;Ljava/lang/String;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2869
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

    .line 2870
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2871
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    .line 2875
    :cond_3
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_4

    .line 2876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting new activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in new task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2877
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2876
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :cond_4
    if-eqz p1, :cond_5

    .line 2881
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 2883
    :cond_5
    return-void
.end method

.method private setTargetStackIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 13
    .param p1, "intentActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2779
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2780
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2781
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2787
    .local v0, "intentTask":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v2, v3, :cond_4

    .line 2788
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2789
    .local v2, "focusStack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_0

    .line 2790
    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2791
    .local v3, "curTop":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 2792
    .local v4, "topTask":Lcom/android/server/wm/Task;
    :goto_1
    if-ne v4, v0, :cond_3

    if-eqz v2, :cond_2

    .line 2793
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

    .line 2794
    .end local v3    # "curTop":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "topTask":Lcom/android/server/wm/Task;
    .local v2, "differentTopTask":Z
    move v11, v2

    goto :goto_4

    .line 2796
    .end local v2    # "differentTopTask":Z
    :cond_4
    const/4 v2, 0x1

    move v11, v2

    .line 2799
    .local v11, "differentTopTask":Z
    :goto_4
    if-eqz v11, :cond_a

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v2, :cond_a

    .line 2800
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2801
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2802
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2803
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v2, v3, :cond_a

    .line 2805
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_6

    .line 2806
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 2809
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2810
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 2811
    .local v12, "launchStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v12, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-ne v12, v2, :cond_7

    goto :goto_5

    .line 2835
    :cond_7
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "reparentToTargetStack"

    move-object v2, v0

    move-object v3, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2837
    iput-boolean v9, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 2815
    :cond_8
    :goto_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isTopSplitScreenStack()Z

    move-result v2

    .line 2819
    .local v2, "isSplitScreenTopStack":Z
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-eq v3, v0, :cond_9

    .line 2820
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v3, v4, :cond_9

    .line 2821
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v4, v0, v10}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2823
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2830
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

    .line 2833
    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2834
    .end local v2    # "isSplitScreenTopStack":Z
    nop

    .line 2839
    :goto_6
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2844
    .end local v12    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2845
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2846
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2845
    invoke-virtual {v1, v0, v10, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 2847
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

    .line 1750
    const/16 v0, -0x60

    .line 1753
    .local v0, "result":I
    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1754
    const-string v4, "startActivityInner"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1757
    invoke-static {p1, p2}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1761
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1763
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1766
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1767
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1768
    .local v2, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1771
    invoke-static {v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1773
    nop

    .line 1775
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 1777
    return v0

    .line 1766
    .end local v2    # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1767
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1768
    .restart local v2    # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1771
    invoke-static {v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 1773
    throw v4
.end method

.method private waitForResult(ILcom/android/server/wm/ActivityRecord;)I
    .locals 6
    .param p1, "res"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 863
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput p1, v0, Landroid/app/WaitResult;->result:I

    .line 864
    const/4 v0, 0x2

    if-eqz p1, :cond_5

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v4, :cond_0

    goto/16 :goto_3

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-boolean v3, v0, Landroid/app/WaitResult;->timeout:Z

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-wide v1, v0, Landroid/app/WaitResult;->totalTime:J

    .line 883
    goto/16 :goto_3

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 887
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :goto_0
    iput v4, v0, Landroid/app/WaitResult;->launchState:I

    .line 890
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-boolean v3, v0, Landroid/app/WaitResult;->timeout:Z

    .line 892
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v3, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-wide v1, v0, Landroid/app/WaitResult;->totalTime:J

    goto :goto_3

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V

    .line 899
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    goto :goto_1

    .line 900
    :catch_0
    move-exception v0

    .line 902
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

    .line 866
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 871
    goto :goto_2

    .line 870
    :catch_1
    move-exception v1

    .line 872
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

    .line 874
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget v1, v1, Landroid/app/WaitResult;->result:I

    if-ne v1, v0, :cond_8

    .line 875
    const/4 p1, 0x2

    .line 907
    :cond_8
    :goto_3
    return p1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3166
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3167
    const-string v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3168
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3169
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3170
    const-string v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3171
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3173
    const-string v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3174
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    const-string v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3177
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3178
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3179
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3180
    const-string v0, "mLastStartActivityRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3183
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 3184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3185
    const-string v0, "mStartActivity:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3186
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3188
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 3189
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3190
    const-string v0, "mIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3193
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_3

    .line 3194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3195
    const-string v0, "mOptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3196
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3198
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3199
    const-string v0, "mLaunchSingleTop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3200
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v1, 0x0

    if-ne v2, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3201
    const-string v0, " mLaunchSingleInstance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3202
    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3203
    const-string v0, " mLaunchSingleTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3204
    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3206
    const-string v0, "mLaunchFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3208
    const-string v0, " mDoResume="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3209
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3210
    const-string v0, " mAddingToTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3211
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3212
    return-void
.end method

.method execute()I
    .locals 11

    .line 704
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

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0

    .line 709
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

    .line 710
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 711
    .local v1, "caller":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v2

    move-object v1, v2

    .line 713
    .local v1, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 719
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 725
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 726
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

    .line 729
    .local v2, "globalConfigWillChange":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v4, :cond_4

    .line 730
    const-string v3, "ActivityTaskManager"

    const-string v4, "root window container is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/16 v3, 0x66

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 780
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 731
    return v3

    .line 734
    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 735
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_5

    .line 736
    iput-boolean v2, v4, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 738
    :cond_5
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_6

    .line 739
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting activity when config will change = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 745
    .local v5, "origId":J
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v7

    .line 746
    .local v7, "res":I
    if-eqz v7, :cond_7

    .line 747
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 780
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 747
    return v7

    .line 749
    :cond_7
    :try_start_5
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {p0, v8}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v8

    move v7, v8

    .line 751
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    if-eqz v2, :cond_a

    .line 758
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v9, "android.permission.CHANGE_CONFIGURATION"

    const-string v10, "updateConfiguration()"

    invoke-virtual {v8, v9, v10}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    if-eqz v4, :cond_8

    .line 762
    iput-boolean v3, v4, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 764
    :cond_8
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_9

    .line 765
    const-string v8, "ActivityTaskManager"

    const-string v9, "Updating to new configuration after starting activity."

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 774
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v1, v7, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V

    .line 776
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-nez v3, :cond_b

    move v3, v7

    goto :goto_2

    .line 777
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v7, v3}, Lcom/android/server/wm/ActivityStarter;->waitForResult(ILcom/android/server/wm/ActivityRecord;)I

    move-result v3

    .line 776
    :goto_2
    invoke-static {v3}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v3

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 780
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 776
    return v3

    .line 778
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

    .line 713
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

    .line 780
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :catchall_2
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 781
    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .line 2975
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "startedActivityStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1668
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1669
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 1676
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1677
    return-void

    .line 1685
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1687
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1688
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    .line 1689
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_0
    nop

    .line 1690
    .local v0, "targetTask":Lcom/android/server/wm/Task;
    if-eqz p3, :cond_a

    if-nez v0, :cond_3

    goto :goto_4

    .line 1694
    :cond_3
    const v1, 0x10008000

    .line 1695
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

    .line 1697
    .local v2, "clearedTask":Z
    :goto_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_5

    if-eqz v2, :cond_8

    .line 1708
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1709
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1716
    .local v3, "homeStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1717
    .local v6, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v5

    .line 1718
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

    .line 1719
    .local v4, "homeTaskVisible":Z
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v5

    .line 1720
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    .line 1719
    invoke-virtual {v5, v8, v4, v2, v7}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 1722
    .end local v3    # "homeStack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "homeTaskVisible":Z
    .end local v6    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "visible":Z
    :cond_8
    return-void

    .line 1711
    :cond_9
    const-string v3, "ActivityTaskManager"

    const-string v4, "fail to notifies all listeners when an attempt was made tostart an an activity that is already running"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    return-void

    .line 1691
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

    .line 2129
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 2130
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2131
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2132
    return v2

    .line 2135
    :cond_0
    const/4 v0, 0x0

    .line 2136
    .local v0, "clearTaskForReuse":Z
    if-eqz p3, :cond_5

    .line 2137
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2138
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityRecord;->setTaskForReuse(Lcom/android/server/wm/Task;)V

    .line 2139
    const/4 v0, 0x1

    .line 2142
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 2146
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 2148
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2149
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/16 v4, 0x4000

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2150
    .local v1, "taskOnHome":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 2151
    iget-object v5, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 2153
    :cond_4
    iget-object v5, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->removeFlags(I)V

    .line 2158
    .end local v1    # "taskOnHome":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2161
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setTargetStackIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2165
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v1, :cond_7

    .line 2167
    :cond_6
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2170
    :cond_7
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v3

    const-string v4, "ActivityTaskManager"

    const-string v5, "intentActivityFound"

    if-eqz v1, :cond_a

    .line 2174
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_9

    .line 2175
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_8

    .line 2176
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

    .line 2179
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2181
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 2182
    return v3

    .line 2185
    :cond_a
    nop

    .line 2186
    const/4 v1, 0x0

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_2

    :cond_b
    move-object v6, v1

    .line 2185
    :goto_2
    invoke-direct {p0, p1, v6, p4}, Lcom/android/server/wm/ActivityStarter;->complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2188
    if-eqz v0, :cond_c

    .line 2192
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ActivityRecord;->setTaskForReuse(Lcom/android/server/wm/Task;)V

    .line 2198
    :cond_c
    if-eqz p1, :cond_d

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-static {v6, p1, v7}, Lcom/android/server/wm/OpQuickReplyInjector;->canReuseActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2199
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

    .line 2200
    if-eqz p1, :cond_d

    .line 2201
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    .line 2206
    :cond_d
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v4, :cond_e

    .line 2207
    return v2

    .line 2212
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2213
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v6, "recycleTask#turnScreenOnFlag"

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 2216
    :cond_f
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v4, :cond_10

    .line 2218
    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_3

    .line 2220
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_11

    .line 2222
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2226
    :cond_11
    :goto_3
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 2230
    nop

    .line 2231
    iget-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_4

    :cond_12
    move-object v1, p2

    :goto_4
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2235
    nop

    .line 2236
    invoke-static {v1, p2}, Lcom/android/server/wm/OpActivityStarterInjector;->updateOutActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2238
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

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 669
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 667
    :goto_0
    return v0
.end method

.method reset(Z)V
    .locals 3
    .param p1, "clearRequest"    # Z

    .line 2417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2418
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2419
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2420
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2421
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2423
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2424
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2425
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2427
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2429
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2430
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2431
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2432
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2433
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2434
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2436
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2437
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2438
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 2440
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2441
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2442
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2444
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2445
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2446
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2447
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2448
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 2449
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2450
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2452
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2453
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2455
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2457
    if-eqz p1, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 2460
    :cond_0
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter;)V
    .locals 2
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 623
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 624
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 625
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 626
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 627
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 629
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 630
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 631
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 635
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 636
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 637
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 638
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 639
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 640
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 642
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 643
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 644
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/Task;

    .line 646
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 647
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 648
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 650
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 651
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 652
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 653
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 654
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 655
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 656
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 658
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 659
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 661
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    .line 664
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 2999
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3000
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 3101
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 3096
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 3097
    return-object p0
.end method

.method setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "allowBackgroundActivityStart"    # Z

    .line 3160
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 3161
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "allowLookup"    # Z

    .line 3150
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 3151
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 2989
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 2990
    return-object p0
.end method

.method setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "callingFeatureId"    # Ljava/lang/String;

    .line 3062
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 3063
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3057
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 3058
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3042
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 3043
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3052
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 3053
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "componentSpecified"    # Z

    .line 3115
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 3116
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "filterCallingUid"    # I

    .line 3110
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 3111
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3140
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 3141
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "ignoreTargetSecurity"    # Z

    .line 3105
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 3106
    return-object p0
.end method

.method setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "inTask"    # Lcom/android/server/wm/Task;

    .line 3125
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 3126
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2970
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 2971
    return-object p0
.end method

.method setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2979
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 2980
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 3155
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 3156
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;

    .line 3120
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 3121
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 3135
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 3136
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3076
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 3077
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3086
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 3087
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 2984
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 2985
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "requestCode"    # I

    .line 3029
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 3030
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 3004
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3005
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 2994
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 2995
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 3019
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 3020
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 3024
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 3025
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "startFlags"    # I

    .line 3091
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 3092
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "userId"    # I

    .line 3145
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 3146
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3014
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3015
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3009
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3010
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 3130
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 3131
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

    .line 1449
    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v11, p7

    move/from16 v10, p8

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1450
    .local v9, "callingAppId":I
    const-string v1, "ActivityTaskManager"

    if-eqz v12, :cond_2a

    const/16 v3, 0x3e8

    if-eq v9, v3, :cond_2a

    const/16 v4, 0x403

    if-ne v9, v4, :cond_0

    move/from16 v18, v9

    goto/16 :goto_11

    .line 1459
    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v8

    .line 1460
    .local v8, "callingUidProcState":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1461
    invoke-virtual {v4, v12}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v7

    .line 1462
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

    .line 1465
    .local v5, "isCallingUidForeground":Z
    :goto_1
    if-gt v8, v6, :cond_3

    move/from16 v16, v6

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    move/from16 v17, v16

    .line 1467
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

    .line 1476
    :cond_4
    if-ne v12, v15, :cond_5

    .line 1477
    move v6, v8

    goto :goto_3

    .line 1478
    :cond_5
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v6

    :goto_3
    nop

    .line 1479
    .local v6, "realCallingUidProcState":I
    if-ne v12, v15, :cond_6

    .line 1480
    move v3, v7

    goto :goto_4

    .line 1481
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v15}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v3

    :goto_4
    nop

    .line 1482
    .local v3, "realCallingUidHasAnyVisibleWindow":Z
    if-ne v12, v15, :cond_7

    .line 1483
    move v4, v5

    goto :goto_6

    .line 1485
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

    .line 1486
    .local v4, "isRealCallingUidForeground":Z
    move/from16 v19, v9

    .end local v9    # "callingAppId":I
    .local v19, "callingAppId":I
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1487
    .local v9, "realCallingAppId":I
    if-ne v12, v15, :cond_a

    .line 1488
    move v11, v2

    goto :goto_8

    .line 1490
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

    .line 1491
    .local v11, "isRealCallingUidPersistentSystemProcess":Z
    move/from16 v18, v9

    .end local v9    # "realCallingAppId":I
    .local v18, "realCallingAppId":I
    const-string v9, ") is companion app"

    if-eq v15, v12, :cond_12

    .line 1493
    move/from16 v20, v6

    .end local v6    # "realCallingUidProcState":I
    .local v20, "realCallingUidProcState":I
    const-string v6, "Activity start allowed: realCallingUid ("

    if-eqz v3, :cond_e

    .line 1494
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v9, :cond_d

    .line 1495
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") has visible (non-toast) window"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_d
    const/4 v1, 0x0

    return v1

    .line 1502
    :cond_e
    if-eqz v11, :cond_10

    if-eqz v10, :cond_10

    .line 1503
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v9, :cond_f

    .line 1504
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") is persistent system process AND intent sender whitelisted (allowBackgroundActivityStart = true)"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_f
    const/4 v1, 0x0

    return v1

    .line 1511
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

    .line 1513
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v10, :cond_11

    .line 1514
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_11
    const/4 v1, 0x0

    return v1

    .line 1491
    .end local v20    # "realCallingUidProcState":I
    .end local v21    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v6    # "realCallingUidProcState":I
    .restart local v11    # "isRealCallingUidPersistentSystemProcess":Z
    :cond_12
    move/from16 v20, v6

    move/from16 v21, v11

    .line 1521
    .end local v6    # "realCallingUidProcState":I
    .end local v11    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v20    # "realCallingUidProcState":I
    .restart local v21    # "isRealCallingUidPersistentSystemProcess":Z
    :cond_13
    const-string v6, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {v6, v13, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_15

    .line 1523
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_14

    .line 1524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Background activity start allowed: START_ACTIVITIES_FROM_BACKGROUND permission granted for uid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_14
    const/4 v1, 0x0

    return v1

    .line 1532
    :cond_15
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    const-string v10, "Background activity start allowed: callingUid ("

    if-eqz v6, :cond_17

    .line 1533
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_16

    .line 1534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is recents"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_16
    const/4 v1, 0x0

    return v1

    .line 1540
    :cond_17
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1541
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_18

    .line 1542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is device owner"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_18
    const/4 v1, 0x0

    return v1

    .line 1548
    :cond_19
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1549
    .local v11, "callingUserId":I
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v11, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1550
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_1a

    .line 1551
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 1560
    :cond_1b
    move/from16 v6, p1

    .line 1561
    .local v6, "callerAppUid":I
    if-nez p6, :cond_1c

    .line 1562
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v10, p5

    invoke-virtual {v9, v10, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    .line 1563
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v9, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v6, p4

    goto :goto_9

    .line 1561
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_1c
    move/from16 v10, p5

    move-object/from16 v9, p6

    .line 1566
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_9
    if-eqz v9, :cond_23

    .line 1568
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 1569
    sget-boolean v17, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v17, :cond_1d

    .line 1570
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v11

    .end local v11    # "callingUserId":I
    .local v22, "callingUserId":I
    const-string v11, "Background activity start allowed: callerApp process (pid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
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

    .line 1570
    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1569
    .end local v22    # "callingUserId":I
    .restart local v11    # "callingUserId":I
    :cond_1d
    move/from16 v22, v11

    .line 1573
    .end local v11    # "callingUserId":I
    .restart local v22    # "callingUserId":I
    :goto_a
    const/4 v1, 0x0

    return v1

    .line 1576
    .end local v22    # "callingUserId":I
    .restart local v11    # "callingUserId":I
    :cond_1e
    move/from16 v22, v11

    .end local v11    # "callingUserId":I
    .restart local v22    # "callingUserId":I
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 1577
    invoke-virtual {v10, v6}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v10

    .line 1578
    .local v10, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v10, :cond_22

    .line 1579
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/16 v17, 0x1

    add-int/lit8 v11, v11, -0x1

    .local v11, "i":I
    :goto_b
    if-ltz v11, :cond_21

    .line 1580
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p6, v10

    .end local v10    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local p6, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    move-object/from16 v10, v23

    check-cast v10, Lcom/android/server/wm/WindowProcessController;

    .line 1581
    .local v10, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eq v10, v9, :cond_20

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 1582
    sget-boolean v17, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v17, :cond_1f

    .line 1583
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

    .line 1584
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

    .line 1583
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1582
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_1f
    move/from16 v24, v3

    move-object/from16 v23, v9

    .line 1587
    .end local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "realCallingUidHasAnyVisibleWindow":Z
    :goto_c
    const/4 v1, 0x0

    return v1

    .line 1581
    .end local v23    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v3    # "realCallingUidHasAnyVisibleWindow":Z
    .restart local v9    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_20
    move/from16 v24, v3

    move-object/from16 v23, v9

    .line 1579
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

    .line 1578
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

    .line 1566
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

    .line 1593
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

    .line 1594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v1, 0x0

    return v1

    .line 1601
    :cond_24
    invoke-static/range {p3 .. p3}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->isBackgroundActivityWhitelist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is whitelisted."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v1, 0x0

    return v1

    .line 1608
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

    .line 1612
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

    .line 1618
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

    .line 1608
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1629
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

    .line 1628
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

    .line 1634
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

    .line 1467
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

    .line 1468
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

    .line 1469
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

    .line 1473
    :cond_29
    const/4 v1, 0x0

    return v1

    .line 1450
    .end local v0    # "isCallingUidPersistentSystemProcess":Z
    .end local v18    # "callingAppId":I
    .end local v25    # "isCallingUidForeground":Z
    .end local v27    # "callingUidHasAnyVisibleWindow":Z
    .end local v28    # "callingUidProcState":I
    .restart local v9    # "callingAppId":I
    :cond_2a
    move/from16 v18, v9

    .line 1452
    .end local v9    # "callingAppId":I
    .restart local v18    # "callingAppId":I
    :goto_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_2b

    .line 1453
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

    .line 1455
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/uri/NeededUriGrants;)I
    .locals 21
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

    .line 1837
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

    .line 1840
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1842
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeSourceStack()V

    .line 1844
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1846
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getReusableTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1849
    .local v0, "reusedTask":Lcom/android/server/wm/Task;
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v3, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1850
    invoke-virtual {v1, v3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1851
    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1852
    iput-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 1853
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 1857
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeTargetTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1858
    .local v1, "targetTask":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 1859
    .local v4, "newTask":Z
    :goto_1
    iput-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 1861
    invoke-direct {v10, v11, v12, v1}, Lcom/android/server/wm/ActivityStarter;->computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 1866
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v5, v6, v7}, Lcom/android/server/wm/OpQuickReplyInjector;->exitQuicReplyOnCameraStart(Landroid/content/Intent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;)V

    .line 1870
    invoke-direct {v10, v11, v4, v1}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v5

    .line 1871
    .local v5, "startResult":I
    if-eqz v5, :cond_3

    .line 1872
    return v5

    .line 1875
    :cond_3
    if-eqz v4, :cond_4

    .line 1876
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1877
    .local v7, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    if-eqz v7, :cond_5

    .line 1879
    invoke-virtual {v10, v1, v7, v0, v13}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v5

    .line 1880
    if-eqz v5, :cond_6

    .line 1881
    return v5

    .line 1884
    :cond_5
    iput-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1889
    :cond_6
    iget-object v8, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 1890
    .local v8, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v8, :cond_7

    .line 1891
    invoke-direct {v10, v8, v13}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/ActivityStack;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v5

    .line 1892
    if-eqz v5, :cond_7

    .line 1893
    return v5

    .line 1897
    :cond_7
    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v9, :cond_8

    .line 1898
    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v14, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v15, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v10, v9, v14, v1, v15}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    iput-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1900
    :cond_8
    if-eqz v4, :cond_c

    .line 1901
    iget-boolean v9, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v9, :cond_9

    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_9

    .line 1902
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    .line 1903
    .local v9, "taskToAffiliate":Lcom/android/server/wm/Task;
    :goto_3
    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1904
    .local v14, "packageName":Ljava/lang/String;
    iget-object v15, v10, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v15, :cond_a

    .line 1905
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v3, 0x1081

    move-object/from16 v20, v0

    .end local v0    # "reusedTask":Lcom/android/server/wm/Task;
    .local v20, "reusedTask":Lcom/android/server/wm/Task;
    const/4 v0, -0x1

    .line 1906
    invoke-virtual {v15, v3, v14, v0, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    goto :goto_4

    .line 1904
    .end local v20    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v0    # "reusedTask":Lcom/android/server/wm/Task;
    :cond_a
    move-object/from16 v20, v0

    .line 1911
    .end local v0    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v20    # "reusedTask":Lcom/android/server/wm/Task;
    :goto_4
    const-string v0, "display"

    invoke-static {v0}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    .line 1913
    invoke-direct {v10, v9}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    .line 1914
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1915
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1914
    invoke-virtual {v0, v3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/16 v0, 0x65

    return v0

    .line 1914
    .end local v9    # "taskToAffiliate":Lcom/android/server/wm/Task;
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_b
    goto :goto_5

    .line 1919
    .end local v20    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v0    # "reusedTask":Lcom/android/server/wm/Task;
    :cond_c
    move-object/from16 v20, v0

    .end local v0    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v20    # "reusedTask":Lcom/android/server/wm/Task;
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v0, :cond_d

    .line 1920
    const-string v0, "adding to task"

    invoke-direct {v10, v1, v0}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    goto :goto_6

    .line 1919
    :cond_d
    :goto_5
    nop

    .line 1923
    :goto_6
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_f

    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_f

    .line 1924
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const-string v3, "reuseOrNewTask"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 1925
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_e

    .line 1926
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1927
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    .line 1930
    :cond_e
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1933
    iput-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1934
    iput-boolean v2, v11, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1940
    :cond_f
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1941
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_11

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_11

    .line 1942
    const/4 v2, 0x0

    .line 1943
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 1944
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1946
    :cond_10
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startActivityLocked name:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " callingPackage:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 1950
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_11
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1951
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v3

    .line 1950
    invoke-interface {v2, v13, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 1953
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_12

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_12

    .line 1955
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1956
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 1957
    .local v2, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v3

    .line 1959
    .local v3, "resultToUid":I
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v15, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1960
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    const/16 v19, 0x1

    .line 1959
    move-object v14, v2

    move-object/from16 v16, v6

    move/from16 v18, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1963
    .end local v2    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "resultToUid":I
    :cond_12
    if-eqz v4, :cond_13

    .line 1964
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1965
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1964
    invoke-static {v2, v3}, Lcom/android/server/wm/EventLogTags;->writeWmCreateTask(II)V

    .line 1967
    :cond_13
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v3, 0x7535

    .line 1968
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 1967
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 1970
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1972
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1975
    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v15, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1976
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_7

    :cond_14
    const/16 v16, 0x0

    :goto_7
    iget-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1975
    move/from16 v17, v4

    move/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/wm/ActivityStack;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1978
    iget-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_18

    .line 1979
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1980
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1981
    .local v2, "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v2, :cond_15

    .line 1982
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v3, v2, :cond_15

    goto :goto_8

    .line 2003
    :cond_15
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2004
    invoke-virtual {v3, v6}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2005
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v6, "startActivityInner"

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2007
    :cond_16
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v6, v9, v14}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_9

    .line 1992
    :cond_17
    :goto_8
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9, v9}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1996
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2011
    .end local v2    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_18
    :goto_9
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/RootWindowContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 2014
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2015
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v6, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3, v6, v9, v14}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 2018
    const/4 v2, 0x0

    return v2
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

    .line 681
    :try_start_0
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 682
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v0

    .line 683
    .local v0, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    const-string v1, "startResolvedActivity"

    iput-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 685
    iput-object v13, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 686
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

    .line 689
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    iget v2, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-object v3, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    .end local v0    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 693
    nop

    .line 694
    return-void

    .line 692
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 693
    throw v0
.end method
