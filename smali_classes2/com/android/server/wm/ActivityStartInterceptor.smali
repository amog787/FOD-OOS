.class Lcom/android/server/wm/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingFeatureId:Ljava/lang/String;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/wm/Task;

.field mIntent:Landroid/content/Intent;

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mServiceContext:Landroid/content/Context;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 108
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/RootWindowContainer;Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/RootWindowContainer;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "root"    # Lcom/android/server/wm/RootWindowContainer;
    .param p4, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 115
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 116
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 117
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method private createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "flags"    # I

    .line 135
    move-object v0, p0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;

    move-result-object v14

    .line 136
    .local v14, "activityOptions":Landroid/os/Bundle;
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    new-array v10, v2, [Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v5, v10, v7

    new-array v11, v2, [Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    aput-object v2, v11, v7

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p1

    move/from16 v12, p2

    move-object v13, v14

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 141
    .local v1, "target":Landroid/content/IIntentSender;
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v2
.end method

.method private deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;
    .locals 2

    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCrossProfileAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 198
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    return-object v1
.end method

.method private hasCrossProfileAnimation()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0
.end method

.method private interceptHarmfulAppIfNeeded()Z
    .locals 10

    .line 354
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 355
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .local v1, "harmfulAppWarning":Ljava/lang/CharSequence;
    nop

    .line 360
    if-nez v1, :cond_0

    .line 361
    return v0

    .line 364
    :cond_0
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 367
    .local v0, "target":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 370
    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 371
    iget v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 372
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 374
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 375
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 376
    const/4 v2, 0x1

    return v2

    .line 356
    .end local v0    # "target":Landroid/content/IntentSender;
    .end local v1    # "harmfulAppWarning":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 357
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method private interceptLockTaskModeViolationPackageIfNeeded()Z
    .locals 11

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    .line 285
    .local v0, "controller":Lcom/android/server/wm/LockTaskController;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 286
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v3

    .line 287
    .local v3, "lockTaskLaunchMode":I
    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wm/LockTaskController;->isActivityAllowed(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    return v1

    .line 290
    :cond_1
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/internal/app/BlockedAppActivity;->createIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 291
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 292
    iget v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 293
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 294
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 295
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 296
    const/4 v1, 0x1

    return v1

    .line 282
    .end local v0    # "controller":Lcom/android/server/wm/LockTaskController;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "lockTaskLaunchMode":I
    :cond_2
    :goto_0
    return v1
.end method

.method private interceptLockedManagedProfileIfNeeded()Z
    .locals 9

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;

    move-result-object v0

    .line 301
    .local v0, "interceptingIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 302
    const/4 v1, 0x0

    return v1

    .line 304
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 305
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 306
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 311
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1

    .line 312
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v3, "android.intent.extra.TASK_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_2

    .line 316
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 320
    .local v2, "parent":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 321
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v3, v6, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 322
    const/4 v1, 0x1

    return v1
.end method

.method private interceptQuietProfileIfNeeded()Z
    .locals 9

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v1, 0x50000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 212
    .local v0, "target":Landroid/content/IntentSender;
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 213
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 214
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 218
    .local v2, "parent":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 219
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v3, v6, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 220
    const/4 v1, 0x1

    return v1
.end method

.method private interceptSuspendedByAdminPackage()Z
    .locals 11

    .line 224
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 225
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 226
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_0

    .line 227
    const/4 v1, 0x0

    return v1

    .line 229
    :cond_0
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 230
    const-string v3, "android.app.extra.RESTRICTION"

    const-string v4, "policy_suspend_packages"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 233
    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 236
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 237
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1

    .line 238
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 241
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 244
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 245
    return v2
.end method

.method private interceptSuspendedPackageIfNeeded()Z
    .locals 19

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 254
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 255
    .local v1, "pmi":Landroid/content/pm/PackageManagerInternal;
    if-nez v1, :cond_1

    .line 256
    return v2

    .line 258
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 259
    .local v2, "suspendedPackage":Ljava/lang/String;
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, "suspendingPackage":Ljava/lang/String;
    const-string v3, "android"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedByAdminPackage()Z

    move-result v3

    return v3

    .line 263
    :cond_2
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v10

    .line 265
    .local v10, "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCrossProfileAnimation()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    .line 266
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    .line 267
    :cond_3
    move-object v6, v11

    :goto_0
    nop

    .line 268
    .local v6, "crossProfileOptions":Landroid/os/Bundle;
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v4, 0x4000000

    invoke-direct {v0, v3, v4}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v12

    .line 270
    .local v12, "target":Landroid/content/IntentSender;
    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    move-object v3, v2

    move-object v4, v9

    move-object v5, v10

    move-object v7, v12

    invoke-static/range {v3 .. v8}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 272
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 273
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 274
    const/4 v15, 0x0

    iput-object v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 275
    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/16 v17, 0x0

    move/from16 v16, v4

    move/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 276
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v3, v7, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 277
    const/4 v3, 0x1

    return v3

    .line 252
    .end local v1    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "suspendedPackage":Ljava/lang/String;
    .end local v6    # "crossProfileOptions":Landroid/os/Bundle;
    .end local v9    # "suspendingPackage":Ljava/lang/String;
    .end local v10    # "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v12    # "target":Landroid/content/IntentSender;
    :cond_4
    :goto_1
    return v2
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 332
    return-object v1

    .line 335
    :cond_0
    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 337
    .local v0, "target":Landroid/content/IntentSender;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 338
    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 339
    .local v2, "km":Landroid/app/KeyguardManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v1, p2, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;

    move-result-object v3

    .line 341
    .local v3, "newIntent":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 342
    return-object v1

    .line 344
    :cond_1
    const v1, 0x10804000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    return-object v3
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "inTask"    # Lcom/android/server/wm/Task;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I
    .param p8, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 154
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 155
    iput p6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 156
    iput p7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 157
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 158
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 159
    iput-object p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 160
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 161
    iput-object p8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 163
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 166
    return v1

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptSuspendedPackageIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    return v1

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptLockTaskModeViolationPackageIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    return v1

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptHarmfulAppIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    return v1

    .line 181
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStartInterceptor;->interceptLockedManagedProfileIfNeeded()Z

    move-result v0

    return v0
.end method

.method setStates(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "startFlags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;

    .line 126
    iput p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    .line 127
    iput p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    .line 128
    iput p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    .line 129
    iput p4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    .line 130
    iput-object p5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    .line 132
    return-void
.end method
