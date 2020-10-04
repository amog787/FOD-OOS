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
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/wm/ActivityStartController;

.field private mDoResume:Z

.field private mInTask:Lcom/android/server/wm/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private final mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

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

.field private mPreferredDisplayId:I

.field private mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field private mRestrictedBgActivity:Z

.field private mReuseTask:Lcom/android/server/wm/TaskRecord;

.field private final mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mSourceStack:Lcom/android/server/wm/ActivityStack;

.field private mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/wm/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/server/wm/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p3, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/wm/ActivityStartInterceptor;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 243
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 256
    new-instance v1, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 483
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 484
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 485
    iget-object v1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 486
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 487
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 489
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 490
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2822
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2825
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    goto :goto_1

    .line 2823
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->addActivityToTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 2827
    :goto_1
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 2831
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2834
    :cond_0
    const-string v0, "ActivityTaskManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_0

    .line 2839
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 2849
    :cond_2
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_0

    .line 2846
    :cond_3
    or-int/2addr p4, v0

    .line 2847
    goto :goto_0

    .line 2843
    :cond_4
    or-int/2addr p4, v0

    .line 2844
    goto :goto_0

    .line 2841
    :cond_5
    nop

    .line 2853
    :goto_0
    return p4
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Z

    .line 2907
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2909
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2910
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v1

    .local v1, "canUseFocusedStack":Z
    goto :goto_1

    .line 2912
    .end local v1    # "canUseFocusedStack":Z
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2

    .line 2931
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 2932
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .restart local v1    # "canUseFocusedStack":Z
    :goto_0
    goto :goto_1

    .line 2926
    .end local v1    # "canUseFocusedStack":Z
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v1

    .line 2927
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_1

    .line 2922
    .end local v1    # "canUseFocusedStack":Z
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 2923
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_1

    .line 2917
    .end local v1    # "canUseFocusedStack":Z
    :cond_4
    const/4 v1, 0x1

    .line 2918
    .restart local v1    # "canUseFocusedStack":Z
    nop

    .line 2935
    :goto_1
    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget v5, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method private computeLaunchingTaskFlags()V
    .locals 10

    .line 2186
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2187
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2188
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2189
    .local v5, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_5

    .line 2197
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2198
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2203
    if-nez v5, :cond_0

    goto :goto_0

    .line 2204
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

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

    .line 2199
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2212
    :cond_2
    :goto_0
    if-nez v5, :cond_3

    .line 2213
    const v6, 0x18082000

    .line 2215
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 2216
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2217
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2218
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2219
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2224
    .end local v6    # "flagsOfInterest":I
    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 2225
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 2228
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2231
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 2232
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_2

    .line 2190
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2233
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2239
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8

    .line 2240
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2241
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2245
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_b

    .line 2246
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_9

    .line 2249
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_b

    if-nez v0, :cond_b

    .line 2250
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

    .line 2252
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 2254
    :cond_9
    iget v0, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v2, :cond_a

    .line 2258
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 2259
    :cond_a
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2262
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2265
    :cond_b
    :goto_3
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .locals 1
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1597
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    .line 1598
    move v0, p2

    goto :goto_0

    .line 1599
    :cond_0
    if-ltz p0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1597
    :goto_0
    return v0
.end method

.method private computeSourceStack()V
    .locals 4

    .line 2268
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2269
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2270
    return-void

    .line 2272
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2273
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2274
    return-void

    .line 2281
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 2282
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

    .line 2284
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2285
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2291
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2292
    .local v0, "sourceTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2294
    .end local v0    # "sourceTask":Lcom/android/server/wm/TaskRecord;
    :cond_3
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2295
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2296
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "launchFlags"    # I
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2858
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2859
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2860
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2861
    return-object v1

    .line 2864
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2865
    .local v2, "currentStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2866
    .local v3, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const-string v4, "ActivityTaskManager"

    if-eqz v2, :cond_6

    .line 2867
    if-eq v3, v2, :cond_3

    .line 2868
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_5

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: Setting focused stack to r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2872
    :cond_3
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_5

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: Focused stack already="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :cond_5
    :goto_1
    return-object v2

    .line 2878
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2879
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_8

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: Have a focused stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_8
    return-object v3

    .line 2884
    :cond_9
    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v5, :cond_c

    .line 2886
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v6, v5, p1, p4, v7}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2888
    if-nez v1, :cond_c

    .line 2890
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_a

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_b

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: Can\'t launch on mPreferredDisplayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", looking on all displays."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v5, p1, v6}, Lcom/android/server/wm/RootActivityContainer;->getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2896
    :cond_c
    if-nez v1, :cond_d

    .line 2897
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, p4, v0, v6}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2899
    :cond_d
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_e

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_f

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: New stack r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " stackId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_f
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 20
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .line 1263
    move-object/from16 v7, p1

    if-eqz v7, :cond_0

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 1265
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 1263
    :cond_0
    move-object/from16 v8, p0

    .line 1269
    :goto_0
    nop

    .line 1271
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 1272
    const/4 v0, 0x0

    if-nez v7, :cond_1

    move-object v11, v0

    goto :goto_1

    :cond_1
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    move-object v11, v1

    .line 1277
    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v1

    .line 1278
    :goto_2
    if-nez v7, :cond_3

    move-object/from16 v17, v0

    goto :goto_3

    :cond_3
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v17, v1

    :goto_3
    if-eqz v7, :cond_4

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    move/from16 v18, v1

    .line 1280
    if-nez v7, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    :goto_5
    move-object/from16 v19, v0

    .line 1269
    move-object/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v9 .. v19}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2603
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    .line 2604
    return-void

    .line 2607
    :cond_0
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2608
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2611
    return-void
.end method

.method static getExternalResult(I)I
    .locals 1
    .param p0, "result"    # I

    .line 649
    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2945
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0, p1, v1}, Lcom/android/server/wm/OpQuickReplyInjector;->enableFreeFormWindowManagement(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 2948
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_0

    .line 2949
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2952
    :cond_0
    and-int/lit16 v0, p2, 0x1000

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2961
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2964
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 2966
    .local v2, "parentStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eq v2, v0, :cond_3

    .line 2968
    return-object v2

    .line 2970
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-ne p3, v3, :cond_4

    .line 2973
    return-object v0

    .line 2976
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2979
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2980
    invoke-virtual {v3, p1, v4, p3}, Lcom/android/server/wm/RootActivityContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I

    move-result v3

    .line 2981
    .local v3, "activityType":I
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2987
    .end local v3    # "activityType":I
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2988
    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2989
    .local v3, "dockedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_6

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2991
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, p1, p4, p3, v1}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2993
    :cond_6
    return-object v3

    .line 2954
    .end local v0    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "parentStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "dockedStack":Lcom/android/server/wm/ActivityStack;
    :cond_7
    :goto_1
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_2
    move v6, v1

    .line 2955
    .local v6, "onTop":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 2956
    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2957
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    return-object v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 9

    .line 2308
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2310
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    .line 2314
    .local v0, "putIntoExistingTask":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    and-int/2addr v0, v1

    .line 2315
    const/4 v1, 0x0

    .line 2316
    .local v1, "intentActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 2317
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2318
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    move-object v1, v3

    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_3

    .line 2319
    :cond_5
    if-eqz v0, :cond_9

    .line 2320
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v3, v6, :cond_6

    .line 2323
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2324
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    .line 2323
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/RootActivityContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_4

    .line 2325
    :cond_6
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_8

    .line 2328
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v2, v8, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {v3, v6, v7, v4}, Lcom/android/server/wm/RootActivityContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_4

    .line 2332
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 2333
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->findTask(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_4

    .line 2319
    :cond_9
    :goto_3
    nop

    .line 2337
    :goto_4
    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2338
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2339
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eq v2, v3, :cond_b

    .line 2341
    const/4 v1, 0x0

    .line 2344
    :cond_b
    return-object v1
.end method

.method private handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 13
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1665
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1666
    .local v0, "abort":Z
    if-nez v0, :cond_0

    .line 1667
    const/4 v1, 0x0

    return v1

    .line 1669
    :cond_0
    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1670
    .local v9, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1671
    .local v10, "resultWho":Ljava/lang/String;
    iget v11, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1672
    .local v11, "requestCode":I
    if-eqz v9, :cond_1

    .line 1673
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1674
    .local v12, "resultStack":Lcom/android/server/wm/ActivityStack;
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v12

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1679
    .end local v12    # "resultStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1680
    return v1
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 3004
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

    .line 3000
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

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    .line 658
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .line 2547
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2548
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    .line 2550
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2552
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootActivityContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 2553
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 9

    .line 2168
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2170
    .local v0, "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2175
    const-string v2, "ActivityTaskManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2179
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2181
    :cond_1
    return-void
.end method

.method private setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/wm/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "restrictedBgActivity"    # Z

    .line 2050
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 2052
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2053
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2054
    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2055
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2056
    move-object/from16 v15, p6

    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2057
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2058
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2059
    move/from16 v6, p9

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2061
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2065
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

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2067
    nop

    .line 2068
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_0

    .line 2069
    :cond_0
    move v1, v13

    :goto_0
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 2071
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2073
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

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

    .line 2075
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 2073
    invoke-direct {v0, v9, v1, v4, v6}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2076
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_3

    .line 2077
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

    .line 2080
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 2082
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_4

    .line 2083
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2088
    :cond_4
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 2089
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_5

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_6

    .line 2091
    :cond_5
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2097
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

    .line 2098
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

    .line 2104
    :cond_8
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2105
    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2106
    :cond_9
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2107
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2110
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v4, 0x0

    if-eqz v1, :cond_e

    .line 2111
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2112
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 2113
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2114
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2115
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    .line 2114
    invoke-virtual {v1, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2116
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_5

    :cond_b
    move-object v5, v4

    .line 2117
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    :goto_5
    if-eqz v5, :cond_c

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2121
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2122
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2124
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_c
    goto :goto_6

    .line 2125
    :cond_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2126
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2127
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2131
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

    .line 2133
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2138
    if-eqz v10, :cond_10

    iget-boolean v1, v10, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-nez v1, :cond_10

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2143
    :cond_10
    iput v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2147
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_12

    .line 2148
    move-object/from16 v1, p6

    .line 2149
    .local v1, "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 2150
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2151
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2153
    :cond_11
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2155
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2159
    .end local v1    # "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    :cond_12
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_8

    :cond_13
    move v1, v13

    :goto_8
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2161
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2162
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2163
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2165
    :cond_14
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 19
    .param p1, "intentActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2354
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2355
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2361
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget v2, v2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v2, :cond_4

    .line 2362
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2363
    .local v2, "focusStack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_0

    .line 2364
    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2365
    .local v4, "curTop":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v3

    .line 2366
    .local v7, "topTask":Lcom/android/server/wm/TaskRecord;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    if-ne v7, v8, :cond_3

    if-eqz v2, :cond_2

    .line 2367
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    move v8, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v6

    :goto_3
    move v2, v8

    .line 2368
    .end local v4    # "curTop":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "topTask":Lcom/android/server/wm/TaskRecord;
    .local v2, "differentTopTask":Z
    goto :goto_4

    .line 2370
    .end local v2    # "differentTopTask":Z
    :cond_4
    const/4 v2, 0x1

    .line 2373
    .restart local v2    # "differentTopTask":Z
    :goto_4
    if-eqz v2, :cond_f

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v4, :cond_f

    .line 2374
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v7, 0x400000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2375
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2376
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2377
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    if-ne v4, v7, :cond_f

    .line 2379
    :cond_5
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_6

    .line 2380
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V

    .line 2389
    :cond_6
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v7, 0x10008000

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_7

    move v4, v6

    goto :goto_5

    :cond_7
    move v4, v5

    .line 2392
    .local v4, "willClearTask":Z
    :goto_5
    if-nez v4, :cond_f

    .line 2393
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v8, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2394
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2393
    invoke-direct {v0, v7, v8, v9, v10}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2395
    .local v7, "launchStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v18

    .line 2396
    .local v18, "intentTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v7, :cond_d

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-ne v7, v8, :cond_8

    goto/16 :goto_8

    .line 2403
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2404
    iget v8, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_9

    .line 2407
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v17, "launchToSide"

    move-object/from16 v11, v18

    move-object v12, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_6

    .line 2415
    :cond_9
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v10, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, v9, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v13, "bringToFrontInsteadOfAdjacentLaunch"

    move-object/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2419
    :goto_6
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v8

    .line 2420
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    if-eq v7, v8, :cond_a

    move v8, v6

    goto :goto_7

    :cond_a
    move v8, v5

    :goto_7
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_9

    .line 2421
    :cond_b
    iget v8, v7, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget v9, v9, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eq v8, v9, :cond_c

    .line 2425
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v17, "reparentToDisplay"

    move-object v12, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2428
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_9

    .line 2429
    :cond_c
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2430
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v8

    if-nez v8, :cond_e

    .line 2435
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v17, "reparentingHome"

    move-object v12, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2438
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_9

    .line 2400
    :cond_d
    :goto_8
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v10, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, v9, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v13, "bringingFoundTaskToFront"

    move-object/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2402
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2440
    :cond_e
    :goto_9
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2444
    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2451
    .end local v4    # "willClearTask":Z
    .end local v7    # "launchStack":Lcom/android/server/wm/ActivityStack;
    .end local v18    # "intentTask":Lcom/android/server/wm/TaskRecord;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2452
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v3, :cond_11

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_11

    .line 2453
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bring to front target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :cond_10
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v4, "intentActivityFound"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2458
    :cond_11
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4, v5, v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 2462
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    .line 2463
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    return-object v3

    .line 2465
    :cond_12
    return-object v1
.end method

.method private setTaskFromInTask()I
    .locals 13

    .line 2721
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    .line 2722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const/16 v0, 0x65

    return v0

    .line 2726
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2730
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2731
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v4, v5, :cond_3

    .line 2733
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 2734
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2735
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "inTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2737
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 2740
    return v3

    .line 2742
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2743
    const/4 v1, 0x3

    return v1

    .line 2747
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v4, :cond_4

    .line 2748
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "inTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2752
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2753
    return v2

    .line 2756
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2758
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2760
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 2761
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "inTaskToFront"

    move-object v7, v2

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2763
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2766
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityStarter;->updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2769
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "inTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2772
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const-string v3, "setTaskFromInTask"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2773
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting new activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in explicit task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2774
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2773
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p1, "intentActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2469
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_0

    .line 2480
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2481
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked()V

    .line 2482
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 2483
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2484
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    goto/16 :goto_1

    :cond_0
    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 2485
    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2509
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2510
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 2509
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2515
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2517
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2519
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_3

    .line 2520
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2522
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 2523
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskRecord;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2526
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2527
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_1

    .line 2529
    :cond_5
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    .line 2534
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2535
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_1

    .line 2536
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_9

    .line 2542
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 2486
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2488
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_8

    .line 2492
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2495
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2498
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2499
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2500
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_8

    .line 2503
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2505
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v4

    const-string v4, "startActivityUnchecked"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 2509
    .end local v0    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_8
    nop

    .line 2544
    :cond_9
    :goto_1
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/wm/TaskRecord;)I
    .locals 14
    .param p1, "taskToAffiliate"    # Lcom/android/server/wm/TaskRecord;

    .line 2556
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->containsAppUid(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2557
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2558
    const/16 v0, 0x66

    return v0

    .line 2561
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2566
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_5

    .line 2567
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2568
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    .line 2569
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_0
    move-object v6, v0

    .line 2570
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    :goto_1
    move-object v7, v0

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v10, v0, 0x1

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v13, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2567
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2573
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    const-string v2, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2576
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpQuickReplyInjector;->updateLaunchParams(Landroid/app/ActivityOptions;Ljava/lang/String;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2578
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v3, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityStarter;->updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2580
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting new activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in new task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2581
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2580
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_4
    goto :goto_2

    .line 2583
    :cond_5
    const-string v2, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2586
    :goto_2
    if-eqz p1, :cond_6

    .line 2587
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V

    .line 2590
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2591
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2590
    invoke-virtual {v0, v2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    const/16 v0, 0x65

    return v0

    .line 2596
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_8

    .line 2597
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v1, "reuseOrNewTask"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2599
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private setTaskFromSourceRecord()I
    .locals 17

    .line 2614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2615
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2614
    invoke-virtual {v1, v2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    .line 2616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    const/16 v1, 0x65

    return v1

    .line 2619
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2620
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 2621
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v7, 0x1081

    .line 2622
    invoke-virtual {v3, v7, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v3

    iput v3, v6, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 2626
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2627
    .local v3, "sourceTask":Lcom/android/server/wm/TaskRecord;
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v13

    .line 2628
    .local v13, "sourceStack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskRecord;->containsAppUid(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2629
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v0, v6}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2630
    const/16 v2, 0x66

    return v2

    .line 2637
    :cond_2
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_3

    iget v6, v6, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    goto :goto_0

    .line 2638
    :cond_3
    iget v6, v13, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    :goto_0
    move v14, v6

    .line 2639
    .local v14, "targetDisplayId":I
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    const/4 v15, 0x0

    if-ne v6, v3, :cond_5

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2640
    invoke-virtual {v6, v14}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v15

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v5

    :goto_2
    move/from16 v16, v6

    .line 2641
    .local v16, "moveStackAllowed":Z
    if-eqz v16, :cond_7

    .line 2642
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2643
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2642
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2646
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v6, :cond_6

    iget v6, v13, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eq v14, v6, :cond_6

    .line 2648
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v7, v13, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2651
    :cond_6
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v6, :cond_7

    .line 2654
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7, v4}, Lcom/android/server/wm/RootActivityContainer;->getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2659
    :cond_7
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v7, :cond_8

    .line 2660
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_3

    .line 2661
    :cond_8
    if-eq v7, v13, :cond_9

    .line 2662
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "launchToSide"

    move-object v6, v3

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2666
    :cond_9
    :goto_3
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2667
    .local v4, "topTask":Lcom/android/server/wm/TaskRecord;
    if-eq v4, v3, :cond_a

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v6, :cond_a

    .line 2668
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v7, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v11, "sourceTaskToFront"

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_4

    .line 2670
    :cond_a
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v6, :cond_b

    .line 2671
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v7, "sourceStackToFront"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2674
    :cond_b
    :goto_4
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/16 v9, 0x7533

    if-nez v6, :cond_e

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v10, 0x4000000

    and-int/2addr v10, v6

    if-eqz v10, :cond_e

    .line 2677
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v10, v6}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 2678
    .local v6, "top":Lcom/android/server/wm/ActivityRecord;
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 2679
    if-eqz v6, :cond_d

    .line 2680
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-static {v9, v2, v5}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2681
    invoke-direct {v0, v6}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2683
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v8, v2, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2684
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_c

    .line 2685
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2687
    :cond_c
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2688
    return v7

    .line 2679
    .end local v6    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_d
    goto :goto_5

    .line 2690
    :cond_e
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v5, :cond_10

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_10

    .line 2694
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2695
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_11

    .line 2696
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2697
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2698
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2699
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v9, v6, v2}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2700
    invoke-direct {v0, v5}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2701
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v8, v6, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2702
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v6, :cond_f

    .line 2703
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2705
    :cond_f
    return v7

    .line 2690
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_10
    :goto_5
    nop

    .line 2711
    :cond_11
    const-string v5, "setTaskFromSourceRecord"

    invoke-direct {v0, v3, v5}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2712
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in existing task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2713
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2712
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :cond_12
    return v15
.end method

.method private setTaskToCurrentTopOrCreateNewTask()I
    .locals 14

    .line 2795
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2796
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2799
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2800
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    const/16 v2, 0x66

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 2801
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2802
    return v2

    .line 2805
    :cond_1
    if-eqz v0, :cond_2

    .line 2806
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2807
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v13, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2806
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2809
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskRecord;->containsAppUid(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2810
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2811
    return v2

    .line 2814
    :cond_3
    const-string v2, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2815
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 2816
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in new guessed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2817
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2816
    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    :cond_4
    return v3
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 27
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/wm/TaskRecord;
    .param p23, "reason"    # Ljava/lang/String;
    .param p24, "allowPendingRemoteAnimationRegistryLookup"    # Z
    .param p25, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p26, "allowBackgroundActivityStart"    # Z

    .line 621
    move-object/from16 v15, p0

    invoke-static/range {p5 .. p5}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canActivityGo(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    const/16 v26, 0x0

    if-nez v0, :cond_0

    .line 622
    return v26

    .line 625
    :cond_0
    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    move-object/from16 v14, p23

    iput-object v14, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 630
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v21, v0

    const/4 v1, 0x0

    aput-object v1, v0, v26

    .line 632
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p22

    move/from16 v23, p24

    move-object/from16 v24, p25

    move/from16 v25, p26

    invoke-direct/range {v0 .. v25}, Lcom/android/server/wm/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 639
    if-eqz p21, :cond_1

    .line 641
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v0, v0, v26

    aput-object v0, p21, v26

    .line 644
    :cond_1
    iget v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    .line 626
    :cond_2
    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need to specify a reason."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 56
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/wm/TaskRecord;
    .param p23, "allowPendingRemoteAnimationRegistryLookup"    # Z
    .param p24, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p25, "allowBackgroundActivityStart"    # Z

    .line 672
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p9

    move/from16 v9, p11

    move/from16 v1, p12

    move/from16 v2, p13

    move-object/from16 v8, p14

    move/from16 v7, p16

    move/from16 v6, p17

    move-object/from16 v5, p18

    invoke-static {}, Lcom/android/server/am/OpAppBootManagerInjector;->isEnabled()Z

    move-result v3

    const-string v4, " (pid="

    if-eqz v3, :cond_0

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " startActivityLocked # aInfo = "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", callingPackage="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", callingUid="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", realCallingUid="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OpAppBootManagerInjector;->myLog(Ljava/lang/String;)V

    .line 675
    if-eqz v10, :cond_0

    .line 676
    invoke-static {v10, v8}, Lcom/android/server/am/OpAppBootManagerInjector;->canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "forbid start "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnePlusAppBootManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/16 v3, -0x5e

    return v3

    .line 684
    :cond_0
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 685
    const/4 v3, 0x0

    .line 688
    .local v3, "err":I
    const/4 v15, 0x0

    if-eqz v5, :cond_1

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v16

    goto :goto_0

    :cond_1
    move-object/from16 v16, v15

    :goto_0
    move-object v11, v15

    move-object/from16 v15, v16

    .line 690
    .local v15, "verificationBundle":Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 691
    .local v16, "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v11, "ActivityTaskManager"

    if-eqz v13, :cond_3

    .line 692
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 693
    .end local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v2, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_2

    .line 694
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    .line 695
    .end local p12    # "callingPid":I
    .local v1, "callingPid":I
    iget-object v4, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .end local p13    # "callingUid":I
    .local v4, "callingUid":I
    goto :goto_1

    .line 697
    .end local v1    # "callingPid":I
    .end local v4    # "callingUid":I
    .restart local p12    # "callingPid":I
    .restart local p13    # "callingUid":I
    :cond_2
    move-object/from16 v16, v2

    .end local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "err":I
    .local v18, "err":I
    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when starting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v3, -0x5e

    move/from16 v4, p13

    move-object/from16 v2, v16

    .end local v18    # "err":I
    .restart local v3    # "err":I
    goto :goto_1

    .line 691
    :cond_3
    move/from16 v18, v3

    .end local v3    # "err":I
    .restart local v18    # "err":I
    move/from16 v4, p13

    move-object/from16 v2, v16

    .line 704
    .end local v16    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v18    # "err":I
    .end local p12    # "callingPid":I
    .end local p13    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v3    # "err":I
    .restart local v4    # "callingUid":I
    :goto_1
    move-object/from16 v42, v15

    .end local v15    # "verificationBundle":Landroid/os/Bundle;
    .local v42, "verificationBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_4

    iget-object v15, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_4

    .line 705
    iget-object v15, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    .line 714
    .local v15, "userId":I
    :goto_2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 715
    .local v13, "callingUserId":I
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/OpActivityStarterInjector;->getTargetPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v12

    .line 716
    .local v12, "targetPkgName":Ljava/lang/String;
    move-object/from16 v16, v11

    const/4 v11, 0x1

    move/from16 p13, v1

    .end local v1    # "callingPid":I
    .local p13, "callingPid":I
    new-array v1, v11, [I

    const/16 v18, 0x25

    const/16 v19, 0x0

    aput v18, v1, v19

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v10, :cond_9

    if-eqz v0, :cond_9

    .line 717
    move/from16 v43, p13

    .end local p13    # "callingPid":I
    .local v43, "callingPid":I
    move-object/from16 v1, p1

    move-object/from16 v44, v2

    .end local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v44, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v2, p11

    move/from16 v45, v3

    .end local v3    # "err":I
    .local v45, "err":I
    move-object v3, v12

    move v11, v4

    .end local v4    # "callingUid":I
    .local v11, "callingUid":I
    move v4, v15

    move-object v10, v5

    move-object/from16 v5, p14

    move v10, v6

    move v6, v13

    move-object/from16 v7, p5

    move/from16 v37, v13

    move-object v13, v8

    .end local v13    # "callingUserId":I
    .local v37, "callingUserId":I
    move-object/from16 v8, p2

    move-object/from16 v9, p18

    invoke-static/range {v1 .. v9}, Lcom/android/server/wm/OpActivityStarterInjector;->checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;ILjava/lang/String;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 720
    nop

    .line 721
    invoke-static {v12, v13}, Lcom/android/server/wm/OpActivityStarterInjector;->getBackUserIdFromStoredCallingRelation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 723
    .local v1, "backUserId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_6

    .line 727
    if-eq v1, v15, :cond_5

    .line 728
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0, v1, v2, v10, v11}, Lcom/android/server/wm/OpActivityStarterInjector;->resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 730
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    move v3, v1

    move-object v8, v2

    move v15, v3

    move/from16 v9, v37

    move/from16 v2, p11

    .end local v15    # "userId":I
    .local v3, "userId":I
    goto :goto_4

    .line 727
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "userId":I
    .restart local v15    # "userId":I
    .restart local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_5
    move/from16 v2, p11

    move/from16 v9, v37

    goto :goto_3

    .line 733
    :cond_6
    const-string v2, "android.intent.extra.IS_FROM_CHOOSER_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 736
    move/from16 v9, v37

    .end local v37    # "callingUserId":I
    .local v9, "callingUserId":I
    invoke-static {v12, v13, v9}, Lcom/android/server/wm/OpActivityStarterInjector;->storeCallingRelation(Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v2, p11

    goto :goto_3

    .line 739
    .end local v9    # "callingUserId":I
    .restart local v37    # "callingUserId":I
    :cond_7
    move/from16 v9, v37

    .end local v37    # "callingUserId":I
    .restart local v9    # "callingUserId":I
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    move/from16 v2, p11

    invoke-static {v0, v2}, Lcom/android/server/wm/OpActivityStarterInjector;->toChooserActivity(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 741
    .end local p2    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 742
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v10, v11}, Lcom/android/server/wm/OpActivityStarterInjector;->resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 744
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    move-object v8, v3

    move v15, v4

    .end local v15    # "userId":I
    .local v4, "userId":I
    goto :goto_4

    .line 717
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "backUserId":I
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "userId":I
    .end local v9    # "callingUserId":I
    .restart local v15    # "userId":I
    .restart local v37    # "callingUserId":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    move/from16 v2, p11

    move/from16 v9, v37

    .end local v37    # "callingUserId":I
    .restart local v9    # "callingUserId":I
    goto :goto_3

    .line 716
    .end local v9    # "callingUserId":I
    .end local v11    # "callingUid":I
    .end local v43    # "callingPid":I
    .end local v44    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v45    # "err":I
    .local v2, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v3, "err":I
    .local v4, "callingUid":I
    .restart local v13    # "callingUserId":I
    .restart local p13    # "callingPid":I
    :cond_9
    move/from16 v43, p13

    move-object/from16 v44, v2

    move/from16 v45, v3

    move v11, v4

    move v10, v6

    move v2, v9

    move v9, v13

    move-object v13, v8

    .line 752
    .end local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "err":I
    .end local v4    # "callingUid":I
    .end local v13    # "callingUserId":I
    .end local p13    # "callingPid":I
    .restart local v9    # "callingUserId":I
    .restart local v11    # "callingUid":I
    .restart local v43    # "callingPid":I
    .restart local v44    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v45    # "err":I
    :goto_3
    move-object/from16 v8, p5

    .end local p2    # "intent":Landroid/content/Intent;
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "intent":Landroid/content/Intent;
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_4
    invoke-static {v11, v0, v15}, Lcom/android/server/wm/OpActivityStarterInjector;->maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v7

    .line 757
    .end local v0    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    move/from16 v6, v43

    move/from16 v3, v45

    .end local v43    # "callingPid":I
    .end local v45    # "err":I
    .restart local v3    # "err":I
    .local v6, "callingPid":I
    invoke-static {v3, v8, v13, v11, v6}, Lcom/android/server/wm/OpActivityStarterInjector;->isAllowToLaunch(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;II)I

    move-result v0

    .line 762
    .end local v3    # "err":I
    .local v0, "err":I
    invoke-static {v8, v11}, Lcom/android/server/wm/OpActivityStarterInjector;->isNotAllowToLaunchFactoryMode(Landroid/content/pm/ActivityInfo;I)Z

    move-result v1

    const/16 v43, 0x64

    if-eqz v1, :cond_a

    .line 763
    return v43

    .line 771
    :cond_a
    move-object/from16 v5, p18

    if-eqz v5, :cond_b

    .line 772
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v4, v44

    .end local v44    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v4, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v5, v7, v8, v4, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_5

    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v44    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_b
    move-object/from16 v4, v44

    .end local v44    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    :goto_5
    move-object/from16 v44, v1

    .line 773
    .local v44, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v44, :cond_c

    invoke-virtual/range {v44 .. v44}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 774
    invoke-virtual/range {v44 .. v44}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OP_EXTRA_REMOTE_INPUT_DRAFT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v23, v1

    goto :goto_6

    :cond_c
    const/16 v23, 0x0

    .line 776
    .local v23, "isFromSystemUI":Z
    :goto_6
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 777
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v19

    .line 776
    move-object/from16 v20, v7

    move-object/from16 v21, p6

    move/from16 v22, v11

    invoke-static/range {v18 .. v23}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 778
    const/4 v1, 0x0

    return v1

    .line 782
    :cond_d
    const-string v3, " pid "

    const-string v1, "} from uid "

    move-object/from16 v18, v12

    .end local v12    # "targetPkgName":Ljava/lang/String;
    .local v18, "targetPkgName":Ljava/lang/String;
    const-string v12, " {"

    const-string v13, "START u"

    if-nez v0, :cond_e

    .line 783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v37, v9

    move-object/from16 p2, v12

    const/4 v9, 0x0

    const/4 v10, 0x1

    .end local v9    # "callingUserId":I
    .restart local v37    # "callingUserId":I
    invoke-virtual {v7, v10, v10, v10, v9}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v12, v16

    invoke-static {v12, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {v7}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    .line 800
    invoke-static {v7}, Lcom/oneplus/android/server/am/connor/ConnorInjector;->feed(Landroid/content/Intent;)V

    goto :goto_7

    .line 782
    .end local v37    # "callingUserId":I
    .restart local v9    # "callingUserId":I
    :cond_e
    move/from16 v37, v9

    move-object/from16 p2, v12

    move-object/from16 v12, v16

    .line 806
    .end local v9    # "callingUserId":I
    .restart local v37    # "callingUserId":I
    :goto_7
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v5, v8}, Lcom/android/server/wm/OpQuickReplyInjector;->killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V

    .line 808
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v7, v5, v9}, Lcom/android/server/wm/OpQuickReplyInjector;->exitQuicReplyOnCameraStart(Landroid/content/Intent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;)V

    .line 811
    const/4 v5, 0x0

    .line 812
    .local v5, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    const/4 v9, 0x0

    .line 813
    .local v9, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v10, p9

    if-eqz v10, :cond_11

    .line 814
    move-object/from16 p5, v1

    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 815
    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v1, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "Will send result to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    move-object/from16 v16, v3

    .line 817
    :goto_8
    if-eqz v1, :cond_10

    .line 818
    if-ltz v2, :cond_10

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_10

    .line 819
    move-object v9, v1

    move-object/from16 v55, v9

    move-object/from16 v1, v55

    goto :goto_9

    .line 824
    :cond_10
    move-object/from16 v55, v9

    move-object v9, v1

    move-object/from16 v1, v55

    goto :goto_9

    .line 813
    .end local v1    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_11
    move-object/from16 p5, v1

    move-object/from16 v16, v3

    move-object v1, v9

    move-object v9, v5

    .line 824
    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v1, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v9, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_9
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v19

    .line 826
    .local v19, "launchFlags":I
    const/high16 v3, 0x2000000

    and-int v3, v19, v3

    if-eqz v3, :cond_16

    if-eqz v9, :cond_16

    .line 829
    if-ltz v2, :cond_12

    .line 830
    invoke-static/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 831
    const/16 v3, -0x5d

    return v3

    .line 833
    :cond_12
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 834
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v3

    if-nez v3, :cond_13

    .line 835
    const/4 v1, 0x0

    .line 837
    :cond_13
    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 838
    .end local p10    # "resultWho":Ljava/lang/String;
    .local v3, "resultWho":Ljava/lang/String;
    iget v2, v9, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 839
    .end local p11    # "requestCode":I
    .local v2, "requestCode":I
    const/4 v5, 0x0

    iput-object v5, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 840
    if-eqz v1, :cond_14

    .line 841
    invoke-virtual {v1, v9, v3, v2}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 843
    :cond_14
    iget v5, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v5, v11, :cond_15

    .line 854
    iget-object v5, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v20, v3

    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v5, "callingPackage":Ljava/lang/String;
    goto :goto_a

    .line 843
    .end local v5    # "callingPackage":Ljava/lang/String;
    .restart local p14    # "callingPackage":Ljava/lang/String;
    :cond_15
    move-object/from16 v5, p14

    move-object/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v20, v3

    goto :goto_a

    .line 858
    .end local v2    # "requestCode":I
    .end local v3    # "resultWho":Ljava/lang/String;
    .restart local p10    # "resultWho":Ljava/lang/String;
    .restart local p11    # "requestCode":I
    :cond_16
    move-object/from16 v20, p10

    move-object/from16 v5, p14

    move-object/from16 v21, v1

    move/from16 v22, v2

    .end local v1    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local p10    # "resultWho":Ljava/lang/String;
    .end local p11    # "requestCode":I
    .end local p14    # "callingPackage":Ljava/lang/String;
    .restart local v5    # "callingPackage":Ljava/lang/String;
    .local v20, "resultWho":Ljava/lang/String;
    .local v21, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v22, "requestCode":I
    :goto_a
    if-nez v0, :cond_17

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_17

    .line 861
    const/16 v0, -0x5b

    .line 864
    :cond_17
    if-nez v0, :cond_18

    if-nez v8, :cond_18

    .line 867
    const/16 v0, -0x5c

    move v1, v0

    goto :goto_b

    .line 870
    :cond_18
    move v1, v0

    .end local v0    # "err":I
    .local v1, "err":I
    :goto_b
    const-string v2, "Failure checking voice capabilities"

    if-nez v1, :cond_1c

    if-eqz v9, :cond_1c

    .line 871
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1b

    .line 876
    const/high16 v0, 0x10000000

    and-int v0, v19, v0

    if-nez v0, :cond_1a

    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v3, :cond_1a

    .line 879
    :try_start_0
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 881
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 880
    move-object/from16 v38, v13

    move/from16 v39, v15

    const/4 v15, 0x0

    move-object/from16 v13, p4

    .end local v15    # "userId":I
    .local v39, "userId":I
    :try_start_1
    invoke-interface {v0, v3, v7, v13}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 885
    const/16 v0, -0x61

    move v1, v0

    .line 890
    :cond_19
    goto :goto_d

    .line 887
    :catch_0
    move-exception v0

    goto :goto_c

    .end local v39    # "userId":I
    .restart local v15    # "userId":I
    :catch_1
    move-exception v0

    move-object/from16 v38, v13

    move/from16 v39, v15

    const/4 v15, 0x0

    move-object/from16 v13, p4

    .line 888
    .end local v15    # "userId":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v39    # "userId":I
    :goto_c
    invoke-static {v12, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    const/16 v1, -0x61

    goto :goto_d

    .line 876
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v39    # "userId":I
    .restart local v15    # "userId":I
    :cond_1a
    move-object/from16 v38, v13

    move/from16 v39, v15

    const/4 v15, 0x0

    move-object/from16 v13, p4

    .end local v15    # "userId":I
    .restart local v39    # "userId":I
    goto :goto_d

    .line 871
    .end local v39    # "userId":I
    .restart local v15    # "userId":I
    :cond_1b
    move-object/from16 v38, v13

    move/from16 v39, v15

    const/4 v15, 0x0

    move-object/from16 v13, p4

    .end local v15    # "userId":I
    .restart local v39    # "userId":I
    goto :goto_d

    .line 870
    .end local v39    # "userId":I
    .restart local v15    # "userId":I
    :cond_1c
    move-object/from16 v38, v13

    move/from16 v39, v15

    const/4 v15, 0x0

    move-object/from16 v13, p4

    .line 894
    .end local v15    # "userId":I
    .restart local v39    # "userId":I
    :goto_d
    if-nez v1, :cond_1e

    if-eqz p7, :cond_1e

    .line 898
    :try_start_2
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v0, v3, v7, v13}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 903
    const/16 v0, -0x61

    move v1, v0

    .line 908
    :cond_1d
    move/from16 v52, v1

    goto :goto_e

    .line 905
    :catch_2
    move-exception v0

    .line 906
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v12, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    const/16 v1, -0x61

    move/from16 v52, v1

    goto :goto_e

    .line 911
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    move/from16 v52, v1

    .end local v1    # "err":I
    .local v52, "err":I
    :goto_e
    if-nez v21, :cond_1f

    .line 912
    move-object/from16 v45, v15

    goto :goto_f

    :cond_1f
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object/from16 v45, v0

    .line 914
    .local v45, "resultStack":Lcom/android/server/wm/ActivityStack;
    :goto_f
    if-eqz v52, :cond_21

    .line 915
    if-eqz v21, :cond_20

    .line 916
    const/16 v46, -0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v47, v21

    move-object/from16 v48, v20

    move/from16 v49, v22

    invoke-virtual/range {v45 .. v51}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 919
    :cond_20
    invoke-static/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 920
    return v52

    .line 923
    :cond_21
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-eqz p22, :cond_22

    const/16 v33, 0x1

    goto :goto_10

    :cond_22
    const/16 v33, 0x0

    :goto_10
    move-object/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v20

    move/from16 v28, v22

    move/from16 v29, v6

    move/from16 v30, v11

    move-object/from16 v31, v5

    move/from16 v32, p19

    move-object/from16 v34, v4

    move-object/from16 v35, v21

    move-object/from16 v36, v45

    invoke-virtual/range {v24 .. v36}, Lcom/android/server/wm/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v17, v0

    .line 926
    .local v17, "abort":Z
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v2, p5

    move-object v1, v7

    move-object/from16 v53, v2

    move v2, v11

    move-object/from16 v54, v16

    move-object/from16 v16, v3

    move v3, v6

    move-object/from16 p5, v4

    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local p5, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v4, p4

    move-object v15, v5

    .end local v5    # "callingPackage":Ljava/lang/String;
    .local v15, "callingPackage":Ljava/lang/String;
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    or-int v0, v17, v0

    .line 928
    .end local v17    # "abort":Z
    .local v0, "abort":Z
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v2

    invoke-virtual {v2, v7, v11, v15}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    or-int v16, v0, v2

    .line 931
    .end local v0    # "abort":Z
    .local v16, "abort":Z
    const/16 v17, 0x0

    .line 932
    .local v17, "restrictedBgActivity":Z
    if-nez v16, :cond_23

    .line 934
    const-wide/16 v4, 0x40

    :try_start_3
    const-string v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 936
    move-object/from16 v1, p0

    move v2, v11

    move v3, v6

    move-wide/from16 v24, v4

    move-object v4, v15

    move/from16 v5, p16

    move/from16 v26, v6

    .end local v6    # "callingPid":I
    .local v26, "callingPid":I
    move/from16 v6, p15

    move-object/from16 p10, v7

    .end local v7    # "intent":Landroid/content/Intent;
    .local p10, "intent":Landroid/content/Intent;
    move-object/from16 v7, p5

    move-object v13, v8

    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v8, p24

    move-object/from16 p11, v9

    .end local v9    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local p11, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move/from16 v9, p25

    move-object/from16 v40, v12

    move-object/from16 v12, p18

    move-object/from16 v10, p10

    :try_start_4
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 940
    .end local v17    # "restrictedBgActivity":Z
    .local v0, "restrictedBgActivity":Z
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 941
    move/from16 v46, v0

    goto :goto_12

    .line 940
    .end local v0    # "restrictedBgActivity":Z
    .restart local v17    # "restrictedBgActivity":Z
    :catchall_0
    move-exception v0

    goto :goto_11

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "callingPid":I
    .end local p10    # "intent":Landroid/content/Intent;
    .end local p11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "callingPid":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v12, p18

    move-wide/from16 v24, v4

    move/from16 v26, v6

    move-object/from16 p10, v7

    move-object v13, v8

    move-object/from16 p11, v9

    .end local v6    # "callingPid":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "callingPid":I
    .restart local p10    # "intent":Landroid/content/Intent;
    .restart local p11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_11
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 932
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "callingPid":I
    .end local p10    # "intent":Landroid/content/Intent;
    .end local p11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "callingPid":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_23
    move/from16 v26, v6

    move-object/from16 p10, v7

    move-object v13, v8

    move-object/from16 p11, v9

    move-object/from16 v40, v12

    move-object/from16 v12, p18

    .end local v6    # "callingPid":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "callingPid":I
    .restart local p10    # "intent":Landroid/content/Intent;
    .restart local p11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move/from16 v46, v17

    .line 945
    .end local v17    # "restrictedBgActivity":Z
    .local v46, "restrictedBgActivity":Z
    :goto_12
    if-eqz v12, :cond_24

    .line 946
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v10, p5

    move-object/from16 v9, p10

    .end local p5    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local p10    # "intent":Landroid/content/Intent;
    .local v9, "intent":Landroid/content/Intent;
    .local v10, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v12, v9, v13, v10, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_13

    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local p5    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local p10    # "intent":Landroid/content/Intent;
    :cond_24
    move-object/from16 v10, p5

    move-object/from16 v9, p10

    .end local p5    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local p10    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const/4 v0, 0x0

    .line 947
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_13
    if-eqz p23, :cond_25

    .line 948
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 949
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v1

    .line 950
    invoke-virtual {v1, v15, v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_14

    .line 947
    :cond_25
    move-object/from16 v17, v0

    .line 952
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v17, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_14
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_26

    .line 956
    :try_start_5
    invoke-virtual {v9}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 957
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int v16, v16, v1

    .line 961
    .end local v0    # "watchIntent":Landroid/content/Intent;
    move/from16 v47, v16

    goto :goto_15

    .line 959
    :catch_3
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 964
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    move/from16 v47, v16

    .end local v16    # "abort":Z
    .local v47, "abort":Z
    :goto_15
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move/from16 v1, v39

    move/from16 v2, p15

    move/from16 v3, p16

    move/from16 v4, p17

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 965
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object v1, v9

    move-object/from16 v2, p6

    move-object v3, v13

    move-object/from16 v4, p4

    move-object/from16 v5, p22

    move/from16 v6, v26

    move v7, v11

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 969
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 970
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 971
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 972
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 973
    .end local p4    # "resolvedType":Ljava/lang/String;
    .local v1, "resolvedType":Ljava/lang/String;
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 974
    .end local p22    # "inTask":Lcom/android/server/wm/TaskRecord;
    .local v2, "inTask":Lcom/android/server/wm/TaskRecord;
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v3, v3, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 975
    .end local v26    # "callingPid":I
    .local v3, "callingPid":I
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v4, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 976
    .end local v11    # "callingUid":I
    .local v4, "callingUid":I
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 v48, v2

    move v11, v4

    move-object/from16 v49, v5

    .end local v17    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v5, "checkedOptions":Landroid/app/ActivityOptions;
    goto :goto_16

    .line 965
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v2    # "inTask":Lcom/android/server/wm/TaskRecord;
    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v5    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v17    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v26    # "callingPid":I
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p22    # "inTask":Lcom/android/server/wm/TaskRecord;
    :cond_27
    move-object/from16 v1, p4

    move-object/from16 v0, p6

    move-object/from16 v48, p22

    move-object v7, v9

    move-object v8, v13

    move-object/from16 v49, v17

    move/from16 v3, v26

    .line 979
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v17    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v26    # "callingPid":I
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p22    # "inTask":Lcom/android/server/wm/TaskRecord;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "callingPid":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v48, "inTask":Lcom/android/server/wm/TaskRecord;
    .local v49, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_16
    if-eqz v47, :cond_29

    .line 980
    if-eqz v21, :cond_28

    .line 981
    const/16 v25, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v24, v45

    move-object/from16 v26, v21

    move-object/from16 v27, v20

    move/from16 v28, v22

    invoke-virtual/range {v24 .. v30}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 986
    :cond_28
    invoke-static/range {v49 .. v49}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 987
    const/16 v2, 0x66

    return v2

    .line 993
    :cond_29
    if-eqz v8, :cond_2f

    .line 994
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v9, v39

    .end local v39    # "userId":I
    .local v9, "userId":I
    invoke-virtual {v2, v4, v9}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 996
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v25, 0x2

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    new-array v13, v4, [Ljava/lang/String;

    aput-object v1, v13, v6

    const/high16 v34, 0x50000000

    const/16 v35, 0x0

    move-object/from16 v24, v2

    move-object/from16 v26, v15

    move/from16 v27, v11

    move/from16 v28, v9

    move-object/from16 v32, v5

    move-object/from16 v33, v13

    invoke-virtual/range {v24 .. v35}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v13

    .line 1002
    .local v13, "target":Landroid/content/IIntentSender;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    .line 1004
    .local v6, "newIntent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 1005
    .local v2, "flags":I
    const/high16 v4, 0x800000

    or-int/2addr v2, v4

    .line 1016
    const/high16 v4, 0x10080000

    and-int/2addr v4, v2

    if-eqz v4, :cond_2a

    .line 1017
    const/high16 v4, 0x8000000

    or-int/2addr v2, v4

    move v5, v2

    goto :goto_17

    .line 1016
    :cond_2a
    move v5, v2

    .line 1019
    .end local v2    # "flags":I
    .local v5, "flags":I
    :goto_17
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1021
    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v13}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v6, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1023
    if-eqz v21, :cond_2b

    .line 1024
    const-string v2, "android.intent.extra.RESULT_NEEDED"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1026
    :cond_2b
    move-object v7, v6

    .line 1028
    const/16 v16, 0x0

    .line 1029
    .end local v1    # "resolvedType":Ljava/lang/String;
    .local v16, "resolvedType":Ljava/lang/String;
    move/from16 v11, p16

    .line 1030
    move/from16 v4, p15

    .line 1032
    .end local v3    # "callingPid":I
    .local v4, "callingPid":I
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v17, 0x0

    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1033
    move/from16 v3, p16

    invoke-static {v11, v3, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v24

    .line 1032
    move-object v2, v7

    move-object/from16 v3, v16

    move-object/from16 p4, v0

    move v0, v4

    .end local v4    # "callingPid":I
    .local v0, "callingPid":I
    .local p4, "rInfo":Landroid/content/pm/ResolveInfo;
    move v4, v9

    move/from16 v25, v5

    .end local v5    # "flags":I
    .local v25, "flags":I
    move/from16 v5, v17

    move-object/from16 v17, v6

    .end local v6    # "newIntent":Landroid/content/Intent;
    .local v17, "newIntent":Landroid/content/Intent;
    move/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1035
    .end local p4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v1, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move/from16 v4, p17

    const/4 v5, 0x0

    invoke-virtual {v2, v7, v1, v4, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1038
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v2, :cond_2d

    .line 1039
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1040
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1041
    .local v2, "focusedStack":Lcom/android/server/wm/ActivityStack;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v38

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-virtual {v7, v12, v12, v12, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v53

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v54

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " on display "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    if-nez v2, :cond_2c

    move v5, v6

    goto :goto_18

    :cond_2c
    iget v5, v2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    :goto_18
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    move-object/from16 v5, v40

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1038
    .end local v2    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_2d
    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 1059
    .end local v13    # "target":Landroid/content/IIntentSender;
    .end local v17    # "newIntent":Landroid/content/Intent;
    .end local v25    # "flags":I
    :goto_19
    move v3, v0

    move-object v2, v8

    move v0, v11

    move-object v8, v1

    move-object/from16 v1, v16

    goto :goto_1b

    .line 994
    .end local v16    # "resolvedType":Ljava/lang/String;
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v1, "resolvedType":Ljava/lang/String;
    .restart local v3    # "callingPid":I
    :cond_2e
    move/from16 v4, p17

    move-object/from16 p4, v0

    const/4 v6, 0x0

    const/4 v12, 0x1

    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p4    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_1a

    .line 993
    .end local v9    # "userId":I
    .end local p4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v39    # "userId":I
    :cond_2f
    move/from16 v4, p17

    move-object/from16 p4, v0

    move/from16 v9, v39

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 1059
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v39    # "userId":I
    .restart local v9    # "userId":I
    .restart local p4    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_1a
    move-object v2, v8

    move v0, v11

    move-object/from16 v8, p4

    .end local v11    # "callingUid":I
    .end local p4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "callingUid":I
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_1b
    if-eqz v8, :cond_30

    iget-object v5, v8, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v5, :cond_30

    .line 1060
    iget-object v5, v8, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move/from16 v24, v12

    move-object/from16 v11, p0

    move-object v12, v5

    move/from16 v50, v37

    .end local v37    # "callingUserId":I
    .local v50, "callingUserId":I
    move-object/from16 v13, p3

    move-object v5, v14

    move-object v14, v15

    move-object/from16 v16, v1

    move/from16 v17, v9

    move-object/from16 v51, v15

    move-object/from16 v15, v42

    move/from16 v42, v9

    move v9, v6

    const/4 v6, 0x0

    .end local v9    # "userId":I
    .local v15, "verificationBundle":Landroid/os/Bundle;
    .local v42, "userId":I
    .local v51, "callingPackage":Ljava/lang/String;
    invoke-direct/range {v11 .. v17}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 1062
    const/4 v1, 0x0

    .line 1063
    move/from16 v0, p16

    .line 1064
    move/from16 v3, p15

    .line 1066
    iget-object v11, v5, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v11, v7, v8, v4, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move v13, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move v12, v3

    move-object v14, v7

    goto :goto_1c

    .line 1059
    .end local v50    # "callingUserId":I
    .end local v51    # "callingPackage":Ljava/lang/String;
    .restart local v9    # "userId":I
    .local v15, "callingPackage":Ljava/lang/String;
    .restart local v37    # "callingUserId":I
    .local v42, "verificationBundle":Landroid/os/Bundle;
    :cond_30
    move/from16 v24, v12

    move-object v5, v14

    move-object/from16 v51, v15

    move/from16 v50, v37

    move-object/from16 v15, v42

    move/from16 v42, v9

    move v9, v6

    .line 1069
    .end local v9    # "userId":I
    .end local v37    # "callingUserId":I
    .local v15, "verificationBundle":Landroid/os/Bundle;
    .local v42, "userId":I
    .restart local v50    # "callingUserId":I
    .restart local v51    # "callingPackage":Ljava/lang/String;
    move v13, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move v12, v3

    move-object v14, v7

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "callingPid":I
    .end local v7    # "intent":Landroid/content/Intent;
    .local v12, "callingPid":I
    .local v13, "callingUid":I
    .local v14, "intent":Landroid/content/Intent;
    .restart local v16    # "resolvedType":Ljava/lang/String;
    .local v17, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_1c
    new-instance v0, Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1070
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v33

    if-eqz p7, :cond_31

    move/from16 v38, v24

    goto :goto_1d

    :cond_31
    move/from16 v38, v9

    :goto_1d
    iget-object v2, v5, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v39, v2

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v26, v10

    move/from16 v27, v12

    move/from16 v28, v13

    move-object/from16 v29, v51

    move-object/from16 v30, v14

    move-object/from16 v31, v16

    move-object/from16 v32, v17

    move-object/from16 v34, v21

    move-object/from16 v35, v20

    move/from16 v36, v22

    move/from16 v37, p20

    move-object/from16 v40, v49

    move-object/from16 v41, p11

    invoke-direct/range {v24 .. v41}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    move-object v11, v0

    .line 1073
    .local v11, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz p21, :cond_32

    .line 1074
    aput-object v11, p21, v9

    .line 1077
    :cond_32
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v0, :cond_33

    move-object/from16 v7, p11

    .end local p11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v7, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_34

    .line 1080
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v0, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_1e

    .line 1077
    .end local v7    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_33
    move-object/from16 v7, p11

    .line 1083
    .end local p11    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_34
    :goto_1e
    iget-object v0, v5, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v24

    .line 1087
    .local v24, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez p7, :cond_3a

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1088
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v6, p16

    if-eq v0, v6, :cond_35

    goto :goto_1f

    :cond_35
    move-object v9, v5

    move-object/from16 p2, v8

    goto :goto_22

    .line 1087
    :cond_36
    move/from16 v6, p16

    .line 1089
    :goto_1f
    iget-object v0, v5, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v25, "Activity start"

    move v1, v12

    move v2, v13

    move/from16 v3, p15

    move/from16 v4, p16

    move-object v9, v5

    move-object/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1091
    if-eqz v46, :cond_38

    invoke-direct {v9, v11}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_20

    :cond_37
    move-object/from16 p2, v8

    goto :goto_21

    .line 1092
    :cond_38
    :goto_20
    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    new-instance v4, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    move-object v0, v4

    move-object v1, v11

    move-object v2, v7

    move/from16 v3, p17

    move-object v6, v4

    move-object/from16 v4, v24

    move-object/from16 p2, v8

    move-object v8, v5

    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p2, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v8, v6}, Lcom/android/server/wm/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 1095
    :goto_21
    invoke-static/range {v49 .. v49}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1096
    return v43

    .line 1089
    .end local p2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_39
    move-object/from16 p2, v8

    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p2    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_22

    .line 1087
    .end local p2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3a
    move-object v9, v5

    move-object/from16 p2, v8

    .line 1100
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_22
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->onStartActivitySetDidAppSwitch()V

    .line 1101
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 1103
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p17

    move-object/from16 v25, v7

    .end local v7    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v25, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move v7, v0

    move-object/from16 v0, p2

    move/from16 v26, v8

    .end local p2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v8, v49

    move-object/from16 v9, v48

    move-object/from16 v27, v10

    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v27, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v10, p21

    move-object/from16 v28, v11

    .end local v11    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v28, "r":Lcom/android/server/wm/ActivityRecord;
    move/from16 v11, v46

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I

    move-result v1

    .line 1105
    .local v1, "res":I
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    aget-object v4, p21, v26

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 1106
    return v1
.end method

.method private startActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I
    .locals 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;
    .param p10, "restrictedBgActivity"    # Z

    .line 1606
    move-object v1, p0

    const/16 v2, -0x60

    .line 1609
    .local v2, "result":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1612
    invoke-static/range {p1 .. p2}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1614
    invoke-direct/range {p0 .. p10}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    .end local v2    # "result":I
    .local v0, "result":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1618
    .local v2, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1620
    .local v5, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1621
    if-eqz v5, :cond_4

    .line 1625
    nop

    .line 1626
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1627
    .local v6, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1628
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1629
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v8

    .line 1628
    invoke-virtual {v7, v6, v8, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1632
    .end local v6    # "currentTop":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    goto :goto_1

    .line 1637
    :cond_2
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1638
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_3

    .line 1639
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v10, "startActivity"

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1644
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1645
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v4

    if-nez v4, :cond_4

    .line 1646
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1647
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 1650
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_1
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1651
    .end local v2    # "currentStack":Lcom/android/server/wm/ActivityStack;
    nop

    .line 1653
    move-object v6, p1

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 1655
    return v0

    .line 1617
    .end local v0    # "result":I
    .end local v5    # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    .local v2, "result":I
    :catchall_0
    move-exception v0

    move-object v6, p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1618
    .local v5, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_5

    move-object v7, v5

    goto :goto_2

    :cond_5
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1620
    .local v7, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1621
    if-eqz v7, :cond_9

    .line 1625
    nop

    .line 1626
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1627
    .local v8, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1628
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1629
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v10

    .line 1628
    invoke-virtual {v9, v8, v10, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1632
    .end local v8    # "currentTop":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    goto :goto_3

    .line 1637
    :cond_7
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1638
    .restart local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_8

    .line 1639
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const-string v12, "startActivity"

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1644
    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1645
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v4

    if-nez v4, :cond_9

    .line 1646
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1647
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 1650
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_9
    :goto_3
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1651
    .end local v5    # "currentStack":Lcom/android/server/wm/ActivityStack;
    throw v0
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/wm/SafeActivityOptions;ZILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 45
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "requestRealCallingPid"    # I
    .param p5, "requestRealCallingUid"    # I
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p9, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p10, "resultTo"    # Landroid/os/IBinder;
    .param p11, "resultWho"    # Ljava/lang/String;
    .param p12, "requestCode"    # I
    .param p13, "startFlags"    # I
    .param p14, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p15, "outResult"    # Landroid/app/WaitResult;
    .param p16, "globalConfig"    # Landroid/content/res/Configuration;
    .param p17, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p18, "ignoreTargetSecurity"    # Z
    .param p19, "userId"    # I
    .param p20, "inTask"    # Lcom/android/server/wm/TaskRecord;
    .param p21, "reason"    # Ljava/lang/String;
    .param p22, "allowPendingRemoteAnimationRegistryLookup"    # Z
    .param p23, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p24, "allowBackgroundActivityStart"    # Z

    .line 1333
    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p6

    move-object/from16 v14, p15

    move-object/from16 v13, p16

    move/from16 v3, p19

    if-eqz v0, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1334
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1336
    :cond_1
    :goto_0
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 1337
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    move v2, v12

    goto :goto_1

    :cond_2
    move v2, v11

    .line 1341
    .local v2, "componentSpecified":Z
    :goto_1
    new-array v4, v12, [I

    const/16 v5, 0x18

    aput v5, v4, v11

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1342
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1343
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, "cmpClassName":Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->shouldRunWeChatPayBusiness(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1345
    invoke-static {v4}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->runWeChatPayBusiness(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1347
    .local v5, "newCmp":Landroid/content/ComponentName;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1348
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_3

    .line 1349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivityMayWait, intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    .end local v4    # "cmpClassName":Ljava/lang/String;
    .end local v5    # "newCmp":Landroid/content/ComponentName;
    :cond_3
    if-eqz p4, :cond_4

    .line 1356
    move/from16 v4, p4

    goto :goto_2

    .line 1357
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    :goto_2
    move v10, v4

    .line 1358
    .local v10, "realCallingPid":I
    const/4 v4, -0x1

    move/from16 v9, p5

    if-eq v9, v4, :cond_5

    .line 1359
    move v5, v9

    goto :goto_3

    .line 1360
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    :goto_3
    move v8, v5

    .line 1363
    .local v8, "realCallingUid":I
    if-ltz p2, :cond_6

    .line 1364
    const/4 v4, -0x1

    move/from16 v7, p2

    move v6, v4

    .local v4, "callingPid":I
    goto :goto_4

    .line 1365
    .end local v4    # "callingPid":I
    :cond_6
    if-nez v1, :cond_7

    .line 1366
    move v4, v10

    .line 1367
    .restart local v4    # "callingPid":I
    move v5, v8

    move v6, v4

    move v7, v5

    .end local p2    # "callingUid":I
    .local v5, "callingUid":I
    goto :goto_4

    .line 1369
    .end local v4    # "callingPid":I
    .end local v5    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_7
    move v5, v4

    .end local p2    # "callingUid":I
    .restart local v5    # "callingUid":I
    move v6, v4

    move v7, v5

    .line 1373
    .end local v5    # "callingUid":I
    .local v6, "callingPid":I
    .local v7, "callingUid":I
    :goto_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1375
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1376
    .end local p6    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    if-eqz v2, :cond_9

    .line 1377
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.VIEW"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 1378
    :cond_8
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1379
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1380
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 1381
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1385
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1386
    const/4 v2, 0x0

    .line 1389
    :cond_9
    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v12, 0x0

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1391
    invoke-static {v7, v8, v0}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v0

    .line 1389
    move-object/from16 p6, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p6    # "intent":Landroid/content/Intent;
    move-object v5, v11

    move v11, v6

    .end local v6    # "callingPid":I
    .local v11, "callingPid":I
    move-object/from16 v6, p6

    move/from16 v28, v7

    .end local v7    # "callingUid":I
    .local v28, "callingUid":I
    move-object/from16 v7, p7

    move/from16 v29, v8

    .end local v8    # "realCallingUid":I
    .local v29, "realCallingUid":I
    move/from16 v8, p19

    move v9, v12

    move v12, v10

    .end local v10    # "realCallingPid":I
    .local v12, "realCallingPid":I
    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1396
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v6, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    move-object/from16 v6, p6

    move/from16 v8, v28

    move/from16 v9, v29

    move/from16 v18, v10

    move/from16 v10, p19

    move/from16 v30, v2

    move-object/from16 v31, v4

    move v2, v11

    const/4 v4, 0x0

    .end local v4    # "ephemeralIntent":Landroid/content/Intent;
    .end local v11    # "callingPid":I
    .local v2, "callingPid":I
    .local v30, "componentSpecified":Z
    .local v31, "ephemeralIntent":Landroid/content/Intent;
    move-object v11, v0

    move-object/from16 v16, v0

    move v4, v12

    const/4 v0, 0x1

    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "realCallingPid":I
    .local v4, "realCallingPid":I
    .local v16, "rInfo":Landroid/content/pm/ResolveInfo;
    move/from16 v12, v18

    invoke-static/range {v5 .. v12}, Lcom/android/server/wm/OpActivityStarterInjector;->resolveIntentParallel(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;IIILandroid/content/pm/ResolveInfo;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 1399
    .end local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v11, "rInfo":Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_d

    .line 1400
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 1401
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1405
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    .line 1406
    .local v10, "userManager":Landroid/os/UserManager;
    const/4 v5, 0x0

    .line 1407
    .local v5, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1409
    .local v16, "token":J
    :try_start_0
    invoke-virtual {v10, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1410
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_a

    :try_start_1
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1411
    invoke-virtual {v10, v7}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1412
    invoke-virtual {v10, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_a

    move v7, v0

    goto :goto_5

    .line 1414
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v14, v29

    goto :goto_6

    .line 1412
    .restart local v6    # "parent":Landroid/content/pm/UserInfo;
    :cond_a
    const/4 v7, 0x0

    :goto_5
    move/from16 v18, v7

    .line 1414
    .end local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    .local v18, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    nop

    .line 1416
    if-eqz v18, :cond_b

    .line 1417
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/high16 v9, 0xc0000

    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1420
    move/from16 v7, v28

    move/from16 v8, v29

    .end local v28    # "callingUid":I
    .end local v29    # "realCallingUid":I
    .restart local v7    # "callingUid":I
    .restart local v8    # "realCallingUid":I
    invoke-static {v7, v8, v6}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v19

    .line 1417
    move-object/from16 v6, p6

    .end local v7    # "callingUid":I
    .restart local v28    # "callingUid":I
    move-object/from16 v7, p7

    move v14, v8

    .end local v8    # "realCallingUid":I
    .local v14, "realCallingUid":I
    move/from16 v8, p19

    move-object/from16 v20, v10

    .end local v10    # "userManager":Landroid/os/UserManager;
    .local v20, "userManager":Landroid/os/UserManager;
    move/from16 v10, v19

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    goto :goto_7

    .line 1416
    .end local v14    # "realCallingUid":I
    .end local v20    # "userManager":Landroid/os/UserManager;
    .restart local v10    # "userManager":Landroid/os/UserManager;
    .restart local v29    # "realCallingUid":I
    :cond_b
    move-object/from16 v20, v10

    move/from16 v14, v29

    .end local v10    # "userManager":Landroid/os/UserManager;
    .end local v29    # "realCallingUid":I
    .restart local v14    # "realCallingUid":I
    .restart local v20    # "userManager":Landroid/os/UserManager;
    goto :goto_7

    .line 1414
    .end local v14    # "realCallingUid":I
    .end local v18    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v20    # "userManager":Landroid/os/UserManager;
    .restart local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v10    # "userManager":Landroid/os/UserManager;
    .restart local v29    # "realCallingUid":I
    :catchall_1
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v14, v29

    .end local v10    # "userManager":Landroid/os/UserManager;
    .end local v29    # "realCallingUid":I
    .restart local v14    # "realCallingUid":I
    .restart local v20    # "userManager":Landroid/os/UserManager;
    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1401
    .end local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v14    # "realCallingUid":I
    .end local v16    # "token":J
    .end local v20    # "userManager":Landroid/os/UserManager;
    .restart local v29    # "realCallingUid":I
    :cond_c
    move/from16 v14, v29

    .end local v29    # "realCallingUid":I
    .restart local v14    # "realCallingUid":I
    goto :goto_7

    .line 1399
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v14    # "realCallingUid":I
    .restart local v29    # "realCallingUid":I
    :cond_d
    move/from16 v14, v29

    .line 1426
    .end local v29    # "realCallingUid":I
    .restart local v14    # "realCallingUid":I
    :goto_7
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v6, p6

    move/from16 v12, p13

    move-object/from16 v10, p14

    .end local p6    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6, v11, v12, v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 1430
    .local v9, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v8, p17

    move-object/from16 v7, p21

    invoke-static {v4, v8, v9, v7}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->preloadAppSplash(ILcom/android/server/wm/SafeActivityOptions;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    .line 1433
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1434
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    move-object/from16 p6, v0

    .line 1435
    .local p6, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v13, :cond_e

    :try_start_3
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1436
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    .line 1582
    .end local p6    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_2
    move-exception v0

    move-object/from16 v35, p7

    move/from16 v40, v2

    move-object/from16 v37, v5

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move/from16 v41, v28

    move/from16 v2, v30

    move-object/from16 v5, p15

    move-object/from16 v28, v1

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    goto/16 :goto_18

    .line 1436
    .restart local p6    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_e
    const/4 v0, 0x0

    :goto_8
    move-object/from16 v7, p6

    .end local p6    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_4
    iput-boolean v0, v7, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 1437
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    if-eqz v0, :cond_f

    :try_start_5
    const-string v0, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting activity when config will change = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v7, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1440
    :cond_f
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_10

    move-wide/from16 v33, v16

    .line 1442
    .local v33, "origId":J
    const/4 v10, 0x2

    if-eqz v9, :cond_19

    :try_start_7
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_19

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v0, :cond_19

    .line 1448
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1449
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1450
    .local v0, "heavy":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_17

    iget-object v8, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-ne v8, v10, :cond_11

    :try_start_8
    iget-object v8, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1451
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_9

    :cond_10
    move-object/from16 v37, v5

    move-object/from16 v38, v7

    move-object/from16 v22, v9

    const/16 v32, 0x0

    goto/16 :goto_d

    .line 1452
    :cond_11
    :goto_9
    move/from16 v8, v28

    .line 1453
    .local v8, "appCallingUid":I
    if-eqz v1, :cond_13

    .line 1454
    iget-object v10, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1455
    invoke-virtual {v10, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v10

    .line 1456
    .local v10, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v10, :cond_12

    .line 1457
    move-object/from16 v35, v7

    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v35, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v7, v10, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v36, v7

    .end local v8    # "appCallingUid":I
    .local v7, "appCallingUid":I
    goto :goto_a

    .line 1459
    .end local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v8    # "appCallingUid":I
    :cond_12
    move-object/from16 v35, v7

    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    const-string v7, "ActivityTaskManager"

    move/from16 v16, v8

    .end local v8    # "appCallingUid":I
    .local v16, "appCallingUid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v10

    .end local v10    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v17, "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v10, "Unable to find app for caller "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " (pid="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") when starting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1459
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-static/range {p17 .. p17}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1463
    const/16 v7, -0x5e

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 1453
    .end local v16    # "appCallingUid":I
    .end local v17    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v8    # "appCallingUid":I
    :cond_13
    move-object/from16 v35, v7

    move/from16 v16, v8

    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "appCallingUid":I
    .restart local v16    # "appCallingUid":I
    .restart local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v36, v16

    .line 1467
    .end local v16    # "appCallingUid":I
    .local v36, "appCallingUid":I
    :goto_a
    :try_start_9
    iget-object v7, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v17, 0x2

    const-string v18, "android"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v8, 0x1

    new-array v10, v8, [Landroid/content/Intent;

    const/16 v32, 0x0

    aput-object v6, v10, v32

    new-array v1, v8, [Ljava/lang/String;

    aput-object p7, v1, v32

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v36

    move/from16 v20, p19

    move-object/from16 v24, v10

    move-object/from16 v25, v1

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1473
    .local v1, "target":Landroid/content/IIntentSender;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    move-object v10, v7

    .line 1474
    .local v10, "newIntent":Landroid/content/Intent;
    if-ltz p12, :cond_14

    .line 1476
    :try_start_a
    const-string v7, "has_result"

    const/4 v8, 0x1

    invoke-virtual {v10, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_b

    .line 1582
    .end local v0    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v10    # "newIntent":Landroid/content/Intent;
    .end local v33    # "origId":J
    .end local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v36    # "appCallingUid":I
    :catchall_3
    move-exception v0

    move-object/from16 v35, p7

    move/from16 v40, v2

    move-object/from16 v37, v5

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move/from16 v41, v28

    move/from16 v2, v30

    move-object/from16 v28, p1

    move-object/from16 v5, p15

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    goto/16 :goto_18

    .line 1478
    .restart local v0    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v1    # "target":Landroid/content/IIntentSender;
    .restart local v10    # "newIntent":Landroid/content/Intent;
    .restart local v33    # "origId":J
    .restart local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v36    # "appCallingUid":I
    :cond_14
    :goto_b
    :try_start_b
    const-string v7, "intent"

    new-instance v8, Landroid/content/IntentSender;

    invoke-direct {v8, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v10, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1480
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 1481
    const-string v7, "new_app"

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1483
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1484
    const-string v7, "android"

    const-class v8, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1485
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1484
    invoke-virtual {v10, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 1486
    move-object v6, v10

    .line 1487
    const/16 v16, 0x0

    .line 1488
    .end local p7    # "resolvedType":Ljava/lang/String;
    .local v16, "resolvedType":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1489
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .local v17, "caller":Landroid/app/IApplicationThread;
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move v8, v7

    .line 1490
    .end local v28    # "callingUid":I
    .local v8, "callingUid":I
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move v2, v7

    .line 1491
    const/16 v18, 0x1

    .line 1492
    .end local v30    # "componentSpecified":Z
    .local v18, "componentSpecified":Z
    :try_start_e
    iget-object v7, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v0

    .end local v0    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .local v21, "heavy":Lcom/android/server/wm/WindowProcessController;
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1493
    invoke-static {v8, v14, v0}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1492
    move-object/from16 v37, v5

    move-object v5, v7

    move-object/from16 v38, v35

    .end local v35    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v38, "stack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v7, v19

    move/from16 v19, v8

    .end local v8    # "callingUid":I
    .local v19, "callingUid":I
    move/from16 v8, p19

    move-object/from16 v22, v9

    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v22, "aInfo":Landroid/content/pm/ActivityInfo;
    move/from16 v9, v20

    move-object/from16 v20, v10

    .end local v10    # "newIntent":Landroid/content/Intent;
    .local v20, "newIntent":Landroid/content/Intent;
    move v10, v0

    :try_start_f
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    move-object v11, v0

    .line 1495
    if-eqz v11, :cond_15

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    :goto_c
    move-object v9, v0

    .line 1496
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_16

    .line 1497
    :try_start_10
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v9, v3}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v36, v0

    move/from16 v40, v2

    move-object/from16 v30, v6

    move-object/from16 v39, v11

    move-object/from16 v35, v16

    move-object/from16 v28, v17

    move/from16 v42, v18

    move/from16 v41, v19

    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_e

    .line 1582
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v20    # "newIntent":Landroid/content/Intent;
    .end local v21    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v33    # "origId":J
    .end local v36    # "appCallingUid":I
    .end local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_4
    move-exception v0

    move-object/from16 v5, p15

    move/from16 v40, v2

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move-object/from16 v35, v16

    move-object/from16 v28, v17

    move/from16 v2, v18

    move/from16 v41, v19

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    goto/16 :goto_18

    .line 1496
    .restart local v1    # "target":Landroid/content/IIntentSender;
    .restart local v20    # "newIntent":Landroid/content/Intent;
    .restart local v21    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v33    # "origId":J
    .restart local v36    # "appCallingUid":I
    .restart local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_16
    move/from16 v40, v2

    move-object/from16 v30, v6

    move-object/from16 v36, v9

    move-object/from16 v39, v11

    move-object/from16 v35, v16

    move-object/from16 v28, v17

    move/from16 v42, v18

    move/from16 v41, v19

    goto/16 :goto_e

    .line 1582
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "newIntent":Landroid/content/Intent;
    .end local v21    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v33    # "origId":J
    .end local v36    # "appCallingUid":I
    .end local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_5
    move-exception v0

    move-object/from16 v5, p15

    move/from16 v40, v2

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move-object/from16 v35, v16

    move-object/from16 v28, v17

    move/from16 v2, v18

    move/from16 v41, v19

    move-object/from16 v9, v22

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    goto/16 :goto_18

    .end local v19    # "callingUid":I
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "callingUid":I
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_6
    move-exception v0

    move-object/from16 v37, v5

    move/from16 v19, v8

    move-object/from16 v22, v9

    move-object/from16 v5, p15

    move/from16 v40, v2

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move-object/from16 v35, v16

    move-object/from16 v28, v17

    move/from16 v2, v18

    move/from16 v41, v19

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    .end local v8    # "callingUid":I
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "callingUid":I
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_18

    .end local v18    # "componentSpecified":Z
    .end local v19    # "callingUid":I
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "callingUid":I
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v30    # "componentSpecified":Z
    :catchall_7
    move-exception v0

    move-object/from16 v37, v5

    move/from16 v19, v8

    move-object/from16 v22, v9

    move-object/from16 v5, p15

    move/from16 v40, v2

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move-object/from16 v35, v16

    move-object/from16 v28, v17

    move/from16 v41, v19

    move/from16 v2, v30

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    .end local v8    # "callingUid":I
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "callingUid":I
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_18

    .end local v19    # "callingUid":I
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v28    # "callingUid":I
    :catchall_8
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v22, v9

    move-object/from16 v5, p15

    move/from16 v40, v2

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move-object/from16 v35, v16

    move/from16 v41, v28

    move/from16 v2, v30

    move-object/from16 v28, v17

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_18

    .line 1450
    .end local v16    # "resolvedType":Ljava/lang/String;
    .end local v17    # "caller":Landroid/app/IApplicationThread;
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "origId":J
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p7    # "resolvedType":Ljava/lang/String;
    :cond_17
    move-object/from16 v21, v0

    move-object/from16 v37, v5

    move-object/from16 v38, v7

    move-object/from16 v22, v9

    const/16 v32, 0x0

    .end local v0    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_d

    .line 1448
    .end local v21    # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_18
    move-object/from16 v37, v5

    move-object/from16 v38, v7

    move-object/from16 v22, v9

    const/16 v32, 0x0

    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_d

    .line 1582
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "origId":J
    .end local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_9
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v22, v9

    move-object/from16 v35, p7

    move-object/from16 v5, p15

    move/from16 v40, v2

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move/from16 v41, v28

    move/from16 v2, v30

    move-object/from16 v28, p1

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_18

    .line 1442
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "origId":J
    :cond_19
    move-object/from16 v37, v5

    move-object/from16 v38, v7

    move-object/from16 v22, v9

    const/16 v32, 0x0

    .line 1503
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_d
    move-object/from16 v35, p7

    move/from16 v40, v2

    move-object/from16 v39, v11

    move-object/from16 v36, v22

    move/from16 v41, v28

    move/from16 v42, v30

    move-object/from16 v28, p1

    move-object/from16 v30, v6

    .end local v2    # "callingPid":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p7    # "resolvedType":Ljava/lang/String;
    .local v28, "caller":Landroid/app/IApplicationThread;
    .local v30, "intent":Landroid/content/Intent;
    .local v35, "resolvedType":Ljava/lang/String;
    .local v36, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v39, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v40, "callingPid":I
    .local v41, "callingUid":I
    .local v42, "componentSpecified":Z
    :goto_e
    const/4 v0, 0x1

    :try_start_11
    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    move-object/from16 v29, v1

    .local v29, "outRecord":[Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v22, v29

    .line 1504
    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v7, v39

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, v40

    move/from16 v43, v14

    .end local v14    # "realCallingUid":I
    .local v43, "realCallingUid":I
    move/from16 v14, v41

    move-object/from16 v15, p3

    move/from16 v16, v4

    move/from16 v17, v43

    move/from16 v18, p13

    move-object/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, v42

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move/from16 v25, p22

    move-object/from16 v26, p23

    move/from16 v27, p24

    move/from16 v0, v32

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v31, "realCallingPid":I
    :try_start_12
    invoke-direct/range {v1 .. v27}, Lcom/android/server/wm/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1

    .line 1511
    .local v1, "res":I
    invoke-static/range {v33 .. v34}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1513
    move-object/from16 v2, v38

    .end local v38    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    if-eqz v3, :cond_1b

    .line 1518
    move-object/from16 v3, p0

    :try_start_13
    iget-object v5, v3, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v6, "android.permission.CHANGE_CONFIGURATION"

    const-string v7, "updateConfiguration()"

    invoke-virtual {v5, v6, v7}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    iput-boolean v0, v2, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 1521
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    if-eqz v5, :cond_1a

    :try_start_14
    const-string v5, "ActivityTaskManager"

    const-string v6, "Updating to new configuration after starting activity."

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    goto :goto_f

    .line 1582
    .end local v1    # "res":I
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v29    # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .end local v33    # "origId":J
    :catchall_a
    move-exception v0

    goto/16 :goto_16

    .line 1523
    .restart local v1    # "res":I
    .restart local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v29    # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .restart local v33    # "origId":J
    :cond_1a
    :goto_f
    :try_start_15
    iget-object v5, v3, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    move-object/from16 v7, p16

    const/4 v6, 0x0

    :try_start_16
    invoke-virtual {v5, v7, v6, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_10

    .line 1582
    .end local v1    # "res":I
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v29    # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .end local v33    # "origId":J
    :catchall_b
    move-exception v0

    move-object/from16 v7, p16

    goto/16 :goto_15

    .line 1513
    .restart local v1    # "res":I
    .restart local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v29    # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .restart local v33    # "origId":J
    :cond_1b
    move-object/from16 v3, p0

    move-object/from16 v7, p16

    .line 1528
    :goto_10
    iget-object v5, v3, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v5

    aget-object v6, v29, v0

    invoke-virtual {v5, v1, v6}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 1529
    move-object/from16 v5, p15

    if-eqz v5, :cond_24

    .line 1530
    :try_start_17
    iput v1, v5, Landroid/app/WaitResult;->result:I

    .line 1532
    aget-object v6, v29, v0

    .line 1534
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_21

    const-wide/16 v8, 0x0

    const/4 v12, 0x3

    const/4 v10, 0x2

    if-eq v1, v10, :cond_1d

    if-eq v1, v12, :cond_1c

    goto/16 :goto_14

    .line 1550
    :cond_1c
    iput-boolean v0, v5, Landroid/app/WaitResult;->timeout:Z

    .line 1551
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v0, v5, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1552
    iput-wide v8, v5, Landroid/app/WaitResult;->totalTime:J

    .line 1553
    goto :goto_14

    .line 1556
    :cond_1d
    nop

    .line 1557
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v10

    if-eqz v10, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v12, 0x1

    :goto_11
    iput v12, v5, Landroid/app/WaitResult;->launchState:I

    .line 1560
    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v10, :cond_1f

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v6, v10}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1561
    iput-boolean v0, v5, Landroid/app/WaitResult;->timeout:Z

    .line 1562
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v0, v5, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1563
    iput-wide v8, v5, Landroid/app/WaitResult;->totalTime:J

    goto :goto_14

    .line 1565
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1566
    .local v8, "startTimeMs":J
    iget-object v0, v3, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v10, v5, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 1571
    :cond_20
    :try_start_18
    iget-object v0, v3, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 1573
    goto :goto_12

    .line 1572
    :catch_0
    move-exception v0

    .line 1574
    :goto_12
    :try_start_19
    iget-boolean v0, v5, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_24

    iget-object v0, v5, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_20

    goto :goto_14

    .line 1536
    .end local v8    # "startTimeMs":J
    :cond_21
    const/4 v10, 0x2

    iget-object v0, v3, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1539
    :cond_22
    :try_start_1a
    iget-object v0, v3, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 1541
    goto :goto_13

    .line 1540
    :catch_1
    move-exception v0

    .line 1542
    :goto_13
    :try_start_1b
    iget v0, v5, Landroid/app/WaitResult;->result:I

    if-eq v0, v10, :cond_23

    iget-boolean v0, v5, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_23

    iget-object v0, v5, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_22

    .line 1544
    :cond_23
    iget v0, v5, Landroid/app/WaitResult;->result:I

    if-ne v0, v10, :cond_24

    .line 1545
    const/4 v1, 0x2

    .line 1581
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_24
    :goto_14
    monitor-exit v37
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1582
    .end local v1    # "res":I
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v29    # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .end local v33    # "origId":J
    :catchall_c
    move-exception v0

    goto :goto_17

    :catchall_d
    move-exception v0

    :goto_15
    move-object/from16 v5, p15

    goto :goto_17

    :catchall_e
    move-exception v0

    move-object/from16 v3, p0

    :goto_16
    move-object/from16 v5, p15

    move-object/from16 v7, p16

    :goto_17
    move-object/from16 v6, v30

    move-object/from16 v9, v36

    move-object/from16 v11, v39

    move/from16 v2, v42

    goto :goto_18

    .end local v43    # "realCallingUid":I
    .local v4, "realCallingPid":I
    .restart local v14    # "realCallingUid":I
    .local v31, "ephemeralIntent":Landroid/content/Intent;
    :catchall_f
    move-exception v0

    move-object/from16 v5, p15

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    move-object/from16 v6, v30

    move-object/from16 v9, v36

    move-object/from16 v11, v39

    move/from16 v2, v42

    .end local v14    # "realCallingUid":I
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v31, "realCallingPid":I
    .restart local v43    # "realCallingUid":I
    goto :goto_18

    .end local v35    # "resolvedType":Ljava/lang/String;
    .end local v36    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v39    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "callingPid":I
    .end local v41    # "callingUid":I
    .end local v42    # "componentSpecified":Z
    .end local v43    # "realCallingUid":I
    .local v2, "callingPid":I
    .local v4, "realCallingPid":I
    .local v6, "intent":Landroid/content/Intent;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "realCallingUid":I
    .local v28, "callingUid":I
    .local v30, "componentSpecified":Z
    .local v31, "ephemeralIntent":Landroid/content/Intent;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p7    # "resolvedType":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v22, v9

    move-object v7, v13

    move/from16 v43, v14

    move-object v3, v15

    move-object/from16 v5, p15

    move-object/from16 v44, v31

    move/from16 v31, v4

    move-object/from16 v4, v44

    move-object/from16 v35, p7

    move/from16 v40, v2

    move/from16 v41, v28

    move/from16 v2, v30

    move-object/from16 v28, p1

    .end local v14    # "realCallingUid":I
    .end local v30    # "componentSpecified":Z
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p7    # "resolvedType":Ljava/lang/String;
    .local v2, "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v28, "caller":Landroid/app/IApplicationThread;
    .local v31, "realCallingPid":I
    .restart local v35    # "resolvedType":Ljava/lang/String;
    .restart local v40    # "callingPid":I
    .restart local v41    # "callingUid":I
    .restart local v43    # "realCallingUid":I
    :goto_18
    :try_start_1c
    monitor-exit v37
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_11
    move-exception v0

    goto :goto_18
.end method

.method private startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I
    .locals 29
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;
    .param p10, "restrictedBgActivity"    # Z

    .line 1688
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V

    .line 1691
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v8, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1693
    .local v8, "preferredWindowingMode":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1695
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeSourceStack()V

    .line 1697
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1699
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 1701
    .local v9, "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    .line 1702
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    :goto_0
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v6, 0x2

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1701
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 1707
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpQuickReplyInjector;->exitQuicReplyOnCameraStart(Landroid/content/Intent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;)V

    .line 1709
    nop

    .line 1710
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_1

    .line 1711
    :cond_1
    move v0, v1

    :goto_1
    iput v0, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 1716
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot launch home on display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/16 v0, -0x60

    return v0

    .line 1722
    :cond_2
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v9, :cond_17

    .line 1726
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v6

    .line 1727
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    iget v14, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v15, 0x10008000

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_3

    move v14, v3

    goto :goto_2

    :cond_3
    move v14, v1

    .line 1726
    :goto_2
    invoke-virtual {v6, v7, v14}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1730
    const-string v0, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/16 v0, 0x65

    return v0

    .line 1736
    :cond_4
    iget v2, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4200000

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_5

    iget v2, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v1

    .line 1744
    .local v2, "clearTopAndResetStandardLaunchMode":Z
    :goto_3
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    if-nez v6, :cond_6

    if-nez v2, :cond_6

    .line 1745
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1748
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v6, :cond_7

    .line 1751
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_5

    .line 1753
    :cond_7
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1754
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/16 v7, 0x4000

    and-int/2addr v6, v7

    if-eqz v6, :cond_8

    move v6, v3

    goto :goto_4

    :cond_8
    move v6, v1

    .line 1755
    .local v6, "taskOnHome":Z
    :goto_4
    if-eqz v6, :cond_9

    .line 1756
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_5

    .line 1758
    :cond_9
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14, v7}, Landroid/content/Intent;->removeFlags(I)V

    .line 1765
    .end local v6    # "taskOnHome":Z
    :goto_5
    iget v6, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v7, 0x4000000

    and-int/2addr v7, v6

    if-nez v7, :cond_a

    .line 1766
    invoke-static {v6}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1767
    invoke-direct {v10, v0, v4}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1768
    :cond_a
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 1773
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v14, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v6, v7, v14}, Lcom/android/server/wm/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1780
    .local v7, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v14

    if-nez v14, :cond_b

    .line 1781
    invoke-virtual {v9, v6}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1784
    :cond_b
    if-eqz v7, :cond_d

    .line 1785
    iget-boolean v14, v7, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v14, :cond_c

    .line 1788
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v14

    iget-object v15, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1790
    :cond_c
    invoke-direct {v10, v7}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1796
    .end local v6    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v7    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_d
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-static {v6, v9, v7}, Lcom/android/server/wm/OpQuickReplyInjector;->canReuseActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1797
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v7, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/wm/ActivityStarter;->updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 1801
    :cond_e
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1802
    invoke-virtual {v6, v1, v9}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1804
    invoke-direct {v10, v9}, Lcom/android/server/wm/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 1807
    if-eqz v13, :cond_f

    array-length v6, v13

    if-lez v6, :cond_f

    aget-object v6, v13, v1

    goto :goto_6

    :cond_f
    move-object v6, v5

    .line 1811
    .local v6, "outResult":Lcom/android/server/wm/ActivityRecord;
    :goto_6
    if-eqz v6, :cond_11

    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_10

    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v7, :cond_11

    .line 1812
    :cond_10
    aput-object v9, v13, v1

    .line 1815
    :cond_11
    iget v7, v10, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_12

    .line 1819
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1820
    return v3

    .line 1823
    :cond_12
    if-eqz v9, :cond_17

    .line 1824
    invoke-direct {v10, v9}, Lcom/android/server/wm/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1826
    iget-boolean v7, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v7, :cond_17

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-nez v7, :cond_17

    .line 1829
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1830
    if-eqz v13, :cond_15

    array-length v3, v13

    if-lez v3, :cond_15

    .line 1836
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1837
    iget-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_13

    .line 1838
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_7

    :cond_13
    move-object v3, v9

    :goto_7
    aput-object v3, v13, v1

    .line 1844
    :cond_14
    aget-object v3, v13, v1

    .line 1845
    invoke-static {v3, v11}, Lcom/android/server/wm/OpActivityStarterInjector;->updateOutActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    aput-object v3, v13, v1

    .line 1849
    :cond_15
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v1, :cond_16

    move v0, v4

    :cond_16
    return v0

    .line 1854
    .end local v2    # "clearTopAndResetStandardLaunchMode":Z
    .end local v6    # "outResult":Lcom/android/server/wm/ActivityRecord;
    :cond_17
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 1855
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_18

    .line 1856
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    goto :goto_8

    :cond_18
    nop

    :goto_8
    move-object v0, v5

    .line 1857
    .local v0, "sourceStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_19

    .line 1858
    const/4 v15, -0x1

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1862
    :cond_19
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1863
    const/16 v1, -0x5c

    return v1

    .line 1868
    .end local v0    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :cond_1a
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1869
    .local v2, "topStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1870
    .local v6, "topFocused":Lcom/android/server/wm/ActivityRecord;
    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1871
    .restart local v7    # "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_1d

    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v14, :cond_1d

    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v15, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v15, v15, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1872
    invoke-virtual {v14, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    iget v14, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v15, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v15, v15, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v14, v15, :cond_1d

    .line 1874
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v14

    if-eqz v14, :cond_1d

    iget v14, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v15, 0x20000000

    and-int/2addr v14, v15

    if-nez v14, :cond_1b

    .line 1876
    invoke-direct {v10, v3, v4}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1880
    :cond_1b
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v14

    iget v15, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-ne v14, v15, :cond_1d

    :cond_1c
    move v14, v3

    goto :goto_9

    :cond_1d
    move v14, v1

    :goto_9
    move/from16 v20, v14

    .line 1881
    .local v20, "dontStart":Z
    if-eqz v20, :cond_20

    .line 1883
    iput-object v5, v2, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1884
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_1e

    .line 1885
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1887
    :cond_1e
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1888
    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1f

    .line 1891
    return v3

    .line 1894
    :cond_1f
    invoke-direct {v10, v7}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1898
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget v4, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v3, v8, v4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 1901
    return v0

    .line 1904
    :cond_20
    const/4 v0, 0x0

    .line 1905
    .local v0, "newTask":Z
    iget-boolean v14, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v14, :cond_21

    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v14, :cond_21

    .line 1906
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v14

    goto :goto_a

    :cond_21
    move-object v14, v5

    :goto_a
    move-object v15, v14

    .line 1909
    .local v15, "taskToAffiliate":Lcom/android/server/wm/TaskRecord;
    const/4 v14, 0x0

    .line 1910
    .local v14, "result":I
    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v5, :cond_23

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-nez v5, :cond_23

    iget-boolean v5, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v5, :cond_23

    iget v5, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v17, 0x10000000

    and-int v5, v5, v17

    if-eqz v5, :cond_23

    .line 1912
    const/4 v0, 0x1

    .line 1913
    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1914
    .local v5, "packageName":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_22

    .line 1915
    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v3, 0x1081

    move/from16 v19, v0

    .end local v0    # "newTask":Z
    .local v19, "newTask":Z
    const/4 v0, -0x1

    .line 1916
    move-object/from16 v21, v2

    const/4 v2, 0x1

    .end local v2    # "topStack":Lcom/android/server/wm/ActivityStack;
    .local v21, "topStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, v3, v5, v0, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    iput v0, v4, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    goto :goto_b

    .line 1914
    .end local v19    # "newTask":Z
    .end local v21    # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v0    # "newTask":Z
    .restart local v2    # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_22
    move/from16 v19, v0

    move-object/from16 v21, v2

    .line 1919
    .end local v0    # "newTask":Z
    .end local v2    # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v19    # "newTask":Z
    .restart local v21    # "topStack":Lcom/android/server/wm/ActivityStack;
    :goto_b
    invoke-direct {v10, v15}, Lcom/android/server/wm/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/wm/TaskRecord;)I

    move-result v0

    .line 1920
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v14    # "result":I
    .local v0, "result":I
    move v1, v0

    move/from16 v0, v19

    goto :goto_c

    .line 1910
    .end local v19    # "newTask":Z
    .end local v21    # "topStack":Lcom/android/server/wm/ActivityStack;
    .local v0, "newTask":Z
    .restart local v2    # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v14    # "result":I
    :cond_23
    move-object/from16 v21, v2

    .line 1920
    .end local v2    # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v21    # "topStack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_24

    .line 1921
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v1

    .end local v14    # "result":I
    .local v1, "result":I
    goto :goto_c

    .line 1922
    .end local v1    # "result":I
    .restart local v14    # "result":I
    :cond_24
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v1, :cond_25

    .line 1923
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->setTaskFromInTask()I

    move-result v1

    .end local v14    # "result":I
    .restart local v1    # "result":I
    goto :goto_c

    .line 1927
    .end local v1    # "result":I
    .restart local v14    # "result":I
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()I

    move-result v1

    .line 1929
    .end local v14    # "result":I
    .restart local v1    # "result":I
    :goto_c
    if-eqz v1, :cond_26

    .line 1930
    return v1

    .line 1935
    :cond_26
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1936
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_27

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_27

    if-eqz v12, :cond_27

    .line 1937
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityLocked name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " callingPackage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 1941
    :cond_27
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget v4, v10, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    move/from16 v28, v1

    .end local v1    # "result":I
    .local v28, "result":I
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1942
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v26

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1941
    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v14

    move/from16 v27, v1

    invoke-interface/range {v22 .. v27}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 1943
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1944
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget v14, v10, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 1945
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 1943
    invoke-virtual {v1, v3, v4, v5, v14}, Landroid/content/pm/PackageManagerInternal;->grantEphemeralAccess(ILandroid/content/Intent;II)V

    .line 1946
    if-eqz v0, :cond_28

    .line 1947
    const/16 v1, 0x7534

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1948
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1947
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1950
    :cond_28
    const/16 v1, 0x7535

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1951
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 1950
    invoke-static {v1, v3, v4}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 1952
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1954
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1957
    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v10, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v5, v15

    .end local v15    # "taskToAffiliate":Lcom/android/server/wm/TaskRecord;
    .local v5, "taskToAffiliate":Lcom/android/server/wm/TaskRecord;
    move-object v15, v1

    move-object/from16 v16, v6

    move/from16 v17, v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/wm/ActivityStack;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1959
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_2c

    .line 1960
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1961
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1962
    .local v1, "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_2b

    if-eqz v1, :cond_29

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_29

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v3, v1, :cond_29

    goto :goto_d

    .line 1981
    :cond_29
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1982
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1983
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v4, "startActivityUnchecked"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1985
    :cond_2a
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v15, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v4, v14, v15}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_e

    .line 1971
    :cond_2b
    :goto_d
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14, v14}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1974
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_e

    .line 1988
    .end local v1    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2c
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2d

    .line 1989
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    goto :goto_f

    .line 1988
    :cond_2d
    :goto_e
    nop

    .line 1991
    :goto_f
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 1993
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget v4, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget-object v14, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v3, v8, v4, v14}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 1996
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3187
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3188
    const-string v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3189
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    const-string v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3192
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3194
    const-string v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3195
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3196
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3197
    const-string v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3198
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3199
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 3200
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3201
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3202
    const-string v3, "mLastStartActivityRecord:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3205
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_1

    .line 3206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    const-string v3, "mStartActivity:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3208
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3210
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 3211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3212
    const-string v1, "mIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3213
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3215
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_3

    .line 3216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3217
    const-string v1, "mOptions="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3218
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3220
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3221
    const-string v1, "mLaunchSingleTop="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3222
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x1

    if-ne v3, v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3223
    const-string v1, " mLaunchSingleInstance="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3224
    const/4 v1, 0x3

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v4, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3225
    const-string v1, " mLaunchSingleTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3226
    const/4 v1, 0x2

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v4, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3228
    const-string v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3229
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3230
    const-string v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3231
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3232
    const-string v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3233
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3234
    return-void
.end method

.method execute()I
    .locals 28

    move-object/from16 v15, p0

    .line 556
    :try_start_0
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    move-object/from16 v16, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    move-object/from16 v17, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move-object/from16 v18, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v19, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    move/from16 v20, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    move-object/from16 v21, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v23, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v24, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    move/from16 v25, v1

    move-object/from16 v1, p0

    move-object v15, v0

    invoke-direct/range {v1 .. v25}, Lcom/android/server/wm/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/wm/SafeActivityOptions;ZILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 557
    return v0

    .line 568
    :cond_0
    move-object/from16 v15, p0

    :try_start_1
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move/from16 v16, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    move/from16 v17, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    move/from16 v18, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move-object/from16 v19, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v20, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v21, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v22, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    move-object/from16 v23, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v25, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v26, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    move/from16 v27, v1

    move-object/from16 v1, p0

    move-object v15, v0

    invoke-direct/range {v1 .. v27}, Lcom/android/server/wm/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 568
    return v0

    .line 580
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getCallingUid()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3020
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    return v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3015
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "startedActivityStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1285
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1296
    if-nez p3, :cond_1

    .line 1297
    return-void

    .line 1300
    :cond_1
    const v0, 0x10008000

    .line 1301
    .local v0, "clearTaskFlags":I
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10008000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1303
    .local v1, "clearedTask":Z
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_3

    if-eqz v1, :cond_6

    .line 1307
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    if-eq v4, v3, :cond_5

    if-eq v4, v2, :cond_4

    goto :goto_1

    .line 1313
    :cond_4
    nop

    .line 1314
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1315
    .local v2, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1316
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_1

    .line 1309
    .end local v2    # "homeStack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 1311
    nop

    .line 1321
    :cond_6
    :goto_1
    return-void
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 544
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 545
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 543
    :goto_0
    return v1
.end method

.method reset(Z)V
    .locals 4
    .param p1, "clearRequest"    # Z

    .line 2004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2005
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2006
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2007
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2008
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2010
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2011
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2012
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2014
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2016
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2017
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2018
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2019
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2020
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 2022
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2023
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2024
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 2026
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2027
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2028
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2030
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2031
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2032
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2033
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 2034
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2036
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2037
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2039
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2041
    if-eqz p1, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 2044
    :cond_0
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter;)V
    .locals 2
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 498
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 499
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 500
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 501
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 502
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 504
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 505
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 506
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 510
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 511
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 512
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 513
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 514
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 516
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 517
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 518
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 520
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 521
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 522
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 524
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 525
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 526
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 527
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 528
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 530
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 531
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 533
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    .line 536
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 3045
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3046
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 3115
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 3110
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 3111
    return-object p0
.end method

.method setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "allowBackgroundActivityStart"    # Z

    .line 3181
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 3182
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "allowLookup"    # Z

    .line 3171
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 3172
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 3029
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 3030
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3090
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 3091
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3080
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 3081
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3085
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 3086
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "componentSpecified"    # Z

    .line 3129
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 3130
    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3034
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 3035
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "filterCallingUid"    # I

    .line 3124
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 3125
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3154
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 3155
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "ignoreTargetSecurity"    # Z

    .line 3119
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 3120
    return-object p0
.end method

.method setInTask(Lcom/android/server/wm/TaskRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "inTask"    # Lcom/android/server/wm/TaskRecord;

    .line 3139
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    .line 3140
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3009
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 3010
    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/wm/ActivityStarter;
    .locals 2
    .param p1, "userId"    # I

    .line 3164
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    .line 3165
    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 3167
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 3176
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 3177
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;

    .line 3134
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 3135
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 3149
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 3150
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "pid"    # I

    .line 3095
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 3096
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "uid"    # I

    .line 3100
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 3101
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3024
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 3025
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "requestCode"    # I

    .line 3075
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 3076
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 3050
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3051
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 3040
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 3041
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 3065
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 3066
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 3070
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 3071
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "startFlags"    # I

    .line 3105
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 3106
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "userId"    # I

    .line 3159
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 3160
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3060
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3061
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3055
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3056
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .locals 1
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 3144
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 3145
    return-object p0
.end method

.method shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z
    .locals 33
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "realCallingUid"    # I
    .param p5, "realCallingPid"    # I
    .param p6, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p7, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p8, "allowBackgroundActivityStart"    # Z
    .param p9, "intent"    # Landroid/content/Intent;

    .line 1114
    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v11, p7

    move/from16 v10, p8

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1115
    .local v9, "callingAppId":I
    if-eqz v12, :cond_21

    const/16 v2, 0x3e8

    if-eq v9, v2, :cond_21

    const/16 v3, 0x403

    if-ne v9, v3, :cond_0

    move/from16 v17, v9

    const/4 v1, 0x0

    goto/16 :goto_f

    .line 1120
    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v8

    .line 1121
    .local v8, "callingUidProcState":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1122
    invoke-virtual {v4, v12}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v16

    .line 1123
    .local v16, "callingUidHasAnyVisibleWindow":Z
    const/4 v4, 0x2

    const/4 v7, 0x1

    if-nez v16, :cond_2

    if-eq v8, v4, :cond_2

    const/4 v5, 0x4

    if-ne v8, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v7

    :goto_1
    move v6, v5

    .line 1126
    .local v6, "isCallingUidForeground":Z
    if-gt v8, v7, :cond_3

    move v5, v7

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 1128
    .local v5, "isCallingUidPersistentSystemProcess":Z
    :goto_2
    if-nez v16, :cond_20

    if-eqz v5, :cond_4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v17, v9

    goto/16 :goto_e

    .line 1132
    :cond_4
    if-ne v12, v15, :cond_5

    .line 1133
    move v3, v8

    goto :goto_3

    .line 1134
    :cond_5
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v3

    :goto_3
    nop

    .line 1135
    .local v3, "realCallingUidProcState":I
    if-ne v12, v15, :cond_6

    .line 1136
    move/from16 v1, v16

    goto :goto_4

    .line 1137
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v15}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v1

    :goto_4
    move/from16 v19, v1

    .line 1138
    .local v19, "realCallingUidHasAnyVisibleWindow":Z
    if-ne v12, v15, :cond_7

    .line 1139
    move v1, v6

    goto :goto_6

    .line 1141
    :cond_7
    if-nez v19, :cond_9

    if-ne v3, v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v7

    :goto_6
    move v4, v1

    .line 1142
    .local v4, "isRealCallingUidForeground":Z
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1143
    .local v1, "realCallingAppId":I
    if-ne v12, v15, :cond_a

    .line 1144
    move v2, v5

    goto :goto_8

    .line 1146
    :cond_a
    if-eq v1, v2, :cond_c

    if-gt v3, v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    move v2, v7

    :goto_8
    nop

    .line 1147
    .local v2, "isRealCallingUidPersistentSystemProcess":Z
    if-eq v15, v12, :cond_f

    .line 1149
    if-eqz v19, :cond_d

    .line 1150
    const/16 v18, 0x0

    return v18

    .line 1154
    :cond_d
    const/16 v18, 0x0

    if-eqz v2, :cond_e

    if-eqz v10, :cond_e

    .line 1155
    return v18

    .line 1158
    :cond_e
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v21, v1

    .end local v1    # "realCallingAppId":I
    .local v21, "realCallingAppId":I
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v7, v1, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1160
    return v18

    .line 1147
    .end local v21    # "realCallingAppId":I
    .restart local v1    # "realCallingAppId":I
    :cond_f
    move/from16 v21, v1

    const/16 v18, 0x0

    .line 1164
    .end local v1    # "realCallingAppId":I
    .restart local v21    # "realCallingAppId":I
    :cond_10
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {v1, v13, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_11

    .line 1166
    return v18

    .line 1169
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1170
    return v18

    .line 1173
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1174
    return v18

    .line 1177
    :cond_13
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1178
    .local v7, "callingUserId":I
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v7, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1179
    return v18

    .line 1185
    :cond_14
    move/from16 v1, p1

    .line 1186
    .local v1, "callerAppUid":I
    if-nez p6, :cond_15

    .line 1187
    move/from16 v22, v1

    .end local v1    # "callerAppUid":I
    .local v22, "callerAppUid":I
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v23, v9

    move/from16 v9, p5

    .end local v9    # "callingAppId":I
    .local v23, "callingAppId":I
    invoke-virtual {v1, v9, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1188
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v1, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v22, p4

    move/from16 v9, v22

    goto :goto_9

    .line 1186
    .end local v22    # "callerAppUid":I
    .end local v23    # "callingAppId":I
    .local v1, "callerAppUid":I
    .restart local v9    # "callingAppId":I
    .restart local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_15
    move/from16 v22, v1

    move/from16 v23, v9

    move/from16 v9, p5

    .end local v1    # "callerAppUid":I
    .end local v9    # "callingAppId":I
    .restart local v22    # "callerAppUid":I
    .restart local v23    # "callingAppId":I
    move-object/from16 v1, p6

    move/from16 v9, v22

    .line 1191
    .end local v22    # "callerAppUid":I
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v1, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v9, "callerAppUid":I
    :goto_9
    if-eqz v1, :cond_1a

    .line 1193
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1194
    const/16 v17, 0x0

    return v17

    .line 1197
    :cond_16
    move/from16 v22, v3

    .end local v3    # "realCallingUidProcState":I
    .local v22, "realCallingUidProcState":I
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 1198
    invoke-virtual {v3, v9}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 1199
    .local v3, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v3, :cond_19

    .line 1200
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v24

    const/16 v20, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v25, v7

    move/from16 v7, v24

    .local v7, "i":I
    .local v25, "callingUserId":I
    :goto_a
    if-ltz v7, :cond_18

    .line 1201
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 p6, v3

    .end local v3    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local p6, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    move-object/from16 v3, v24

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 1202
    .local v3, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eq v3, v1, :cond_17

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 1203
    const/16 v17, 0x0

    return v17

    .line 1200
    .end local v3    # "proc":Lcom/android/server/wm/WindowProcessController;
    :cond_17
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v3, p6

    goto :goto_a

    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local v3, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_18
    move-object/from16 p6, v3

    .end local v3    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_b

    .line 1199
    .end local v25    # "callingUserId":I
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v3    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local v7, "callingUserId":I
    :cond_19
    move-object/from16 p6, v3

    move/from16 v25, v7

    const/16 v20, 0x1

    .line 1210
    .end local v3    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v7    # "callingUserId":I
    .restart local v25    # "callingUserId":I
    .restart local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :goto_b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getBoundClientUids()Landroid/util/ArraySet;

    move-result-object v3

    const/16 v7, 0x403

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1211
    const/4 v3, 0x0

    return v3

    .line 1191
    .end local v22    # "realCallingUidProcState":I
    .end local v25    # "callingUserId":I
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local v3, "realCallingUidProcState":I
    .restart local v7    # "callingUserId":I
    :cond_1a
    move/from16 v22, v3

    move/from16 v25, v7

    const/16 v20, 0x1

    .line 1217
    .end local v3    # "realCallingUidProcState":I
    .end local v7    # "callingUserId":I
    .restart local v22    # "realCallingUidProcState":I
    .restart local v25    # "callingUserId":I
    :cond_1b
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v12, v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v3

    const-string v7, "Background activity start for "

    move/from16 v17, v9

    .end local v9    # "callerAppUid":I
    .local v17, "callerAppUid":I
    const-string v9, "ActivityTaskManager"

    if-eqz v3, :cond_1c

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v3, 0x0

    return v3

    .line 1227
    :cond_1c
    invoke-static/range {p3 .. p3}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->isBackgroundActivityWhitelist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is whitelisted."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/4 v3, 0x0

    return v3

    .line 1234
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Background activity start [callingPackage: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; callingUid: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; isCallingUidForeground: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; realCallingUid: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; isRealCallingUidForeground: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; originatingPendingIntent: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; isBgStartWhitelisted: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; intent: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move/from16 v24, v2

    .end local v2    # "isRealCallingUidPersistentSystemProcess":Z
    .local v24, "isRealCallingUidPersistentSystemProcess":Z
    const-string v2, "; callerApp: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1249
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    if-eqz v11, :cond_1e

    move/from16 v18, v20

    goto :goto_c

    :cond_1e
    const/16 v18, 0x0

    :goto_c
    move-object/from16 v26, v1

    .end local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v26, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object v1, v2

    move-object/from16 v2, p9

    move-object/from16 v3, v26

    move/from16 v27, v4

    .end local v4    # "isRealCallingUidForeground":Z
    .local v27, "isRealCallingUidForeground":Z
    move/from16 v4, p1

    move/from16 v28, v5

    .end local v5    # "isCallingUidPersistentSystemProcess":Z
    .local v28, "isCallingUidPersistentSystemProcess":Z
    move-object/from16 v5, p3

    move/from16 v29, v6

    .end local v6    # "isCallingUidForeground":Z
    .local v29, "isCallingUidForeground":Z
    move v6, v8

    move/from16 v31, v25

    move/from16 v25, v20

    move/from16 v20, v31

    .end local v25    # "callingUserId":I
    .local v20, "callingUserId":I
    move/from16 v7, v16

    move/from16 v30, v8

    .end local v8    # "callingUidProcState":I
    .local v30, "callingUidProcState":I
    move/from16 v8, p4

    move/from16 v31, v23

    move/from16 v23, v17

    move/from16 v17, v31

    .local v17, "callingAppId":I
    .local v23, "callerAppUid":I
    move/from16 v9, v22

    move/from16 v10, v19

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    goto :goto_d

    .line 1248
    .end local v20    # "callingUserId":I
    .end local v26    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v27    # "isRealCallingUidForeground":Z
    .end local v28    # "isCallingUidPersistentSystemProcess":Z
    .end local v29    # "isCallingUidForeground":Z
    .end local v30    # "callingUidProcState":I
    .restart local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v4    # "isRealCallingUidForeground":Z
    .restart local v5    # "isCallingUidPersistentSystemProcess":Z
    .restart local v6    # "isCallingUidForeground":Z
    .restart local v8    # "callingUidProcState":I
    .local v17, "callerAppUid":I
    .local v23, "callingAppId":I
    .restart local v25    # "callingUserId":I
    :cond_1f
    move-object/from16 v26, v1

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v23

    move/from16 v23, v17

    move/from16 v17, v31

    move/from16 v32, v25

    move/from16 v25, v20

    move/from16 v20, v32

    .line 1254
    .end local v1    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v4    # "isRealCallingUidForeground":Z
    .end local v5    # "isCallingUidPersistentSystemProcess":Z
    .end local v6    # "isCallingUidForeground":Z
    .end local v8    # "callingUidProcState":I
    .end local v25    # "callingUserId":I
    .local v17, "callingAppId":I
    .restart local v20    # "callingUserId":I
    .local v23, "callerAppUid":I
    .restart local v26    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v27    # "isRealCallingUidForeground":Z
    .restart local v28    # "isCallingUidPersistentSystemProcess":Z
    .restart local v29    # "isCallingUidForeground":Z
    .restart local v30    # "callingUidProcState":I
    :goto_d
    return v25

    .line 1128
    .end local v17    # "callingAppId":I
    .end local v19    # "realCallingUidHasAnyVisibleWindow":Z
    .end local v20    # "callingUserId":I
    .end local v21    # "realCallingAppId":I
    .end local v22    # "realCallingUidProcState":I
    .end local v23    # "callerAppUid":I
    .end local v24    # "isRealCallingUidPersistentSystemProcess":Z
    .end local v26    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v27    # "isRealCallingUidForeground":Z
    .end local v28    # "isCallingUidPersistentSystemProcess":Z
    .end local v29    # "isCallingUidForeground":Z
    .end local v30    # "callingUidProcState":I
    .restart local v5    # "isCallingUidPersistentSystemProcess":Z
    .restart local v6    # "isCallingUidForeground":Z
    .restart local v8    # "callingUidProcState":I
    .local v9, "callingAppId":I
    .local p6, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_20
    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v17, v9

    .line 1129
    .end local v5    # "isCallingUidPersistentSystemProcess":Z
    .end local v6    # "isCallingUidForeground":Z
    .end local v8    # "callingUidProcState":I
    .end local v9    # "callingAppId":I
    .restart local v17    # "callingAppId":I
    .restart local v28    # "isCallingUidPersistentSystemProcess":Z
    .restart local v29    # "isCallingUidForeground":Z
    .restart local v30    # "callingUidProcState":I
    :goto_e
    const/4 v1, 0x0

    return v1

    .line 1115
    .end local v16    # "callingUidHasAnyVisibleWindow":Z
    .end local v17    # "callingAppId":I
    .end local v28    # "isCallingUidPersistentSystemProcess":Z
    .end local v29    # "isCallingUidForeground":Z
    .end local v30    # "callingUidProcState":I
    .restart local v9    # "callingAppId":I
    :cond_21
    move/from16 v17, v9

    const/4 v1, 0x0

    .line 1117
    .end local v9    # "callingAppId":I
    .restart local v17    # "callingAppId":I
    :goto_f
    return v1
.end method

.method startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I
    .locals 15
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/TaskRecord;

    move-object v12, p0

    move-object/from16 v13, p1

    .line 594
    :try_start_0
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 595
    const-string v0, "startResolvedActivity"

    iput-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 597
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v14, 0x0

    aput-object v13, v0, v14

    .line 598
    iget-object v10, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I

    move-result v0

    iput v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 601
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-object v2, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v2, v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 603
    iget v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 603
    return v0

    .line 605
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2781
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2782
    return-void

    .line 2785
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2786
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2787
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_0

    .line 2790
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2792
    :goto_0
    return-void
.end method
