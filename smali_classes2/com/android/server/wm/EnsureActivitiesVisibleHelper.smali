.class Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.super Ljava/lang/Object;
.source "EnsureActivitiesVisibleHelper.java"


# instance fields
.field private mAboveTop:Z

.field private mAppUnsupportAccelerateList:Ljava/util/List;

.field private mBehindFullscreenActivity:Z

.field private mConfigChanges:I

.field private mContainerShouldBeVisible:Z

.field private final mContiner:Lcom/android/server/wm/ActivityStack;

.field private mNotifyClients:Z

.field private mPreserveWindows:Z

.field private mStarting:Lcom/android/server/wm/ActivityRecord;

.field private mTop:Lcom/android/server/wm/ActivityRecord;

.field private mUpdateDay:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p1, "container"    # Lcom/android/server/wm/ActivityStack;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAppUnsupportAccelerateList:Ljava/util/List;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mUpdateDay:I

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 63
    iput v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mUpdateDay:I

    .line 64
    invoke-direct {p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->checkAndUpdateLocalList()V

    .line 66
    return-void
.end method

.method private checkAndUpdateLocalList()V
    .locals 4

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 95
    .local v0, "curDay":I
    iget v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mUpdateDay:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAppUnsupportAccelerateList:Ljava/util/List;

    if-nez v1, :cond_2

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->getAppUnsupportAccelerateList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAppUnsupportAccelerateList:Ljava/util/List;

    .line 97
    const-string v2, "ActivityTaskManager"

    if-nez v1, :cond_1

    .line 98
    const-string v1, "checkAndUpdateLocalList list = null"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndUpdateLocalList list: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAppUnsupportAccelerateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " UpdateDay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mUpdateDay:I

    .line 105
    :cond_2
    :goto_0
    return-void
.end method

.method private isAppSupportsAccelerting(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->checkAndUpdateLocalList()V

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAppUnsupportAccelerateList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 112
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->isAppSupportsAccelerting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$Bbb3nMFa3F8er_OBuKA7-SpeSKo(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "isTop"    # Z
    .param p4, "andResume"    # Z
    .param p5, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 318
    if-nez p3, :cond_0

    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 319
    return-void

    .line 324
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start and freeze screen for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    if-eq p5, p1, :cond_2

    .line 326
    invoke-virtual {p5, p2}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 328
    :cond_2
    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_5

    .line 329
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting and making visible: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_4
    invoke-virtual {p5, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 332
    :cond_5
    if-eq p5, p1, :cond_6

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p5, p4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 335
    :cond_6
    return-void
.end method

.method private setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 19
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "resumeTopActivity"    # Z

    .line 157
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-ne v7, v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v9, v0

    .line 158
    .local v9, "isTop":Z
    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v0, :cond_1

    if-nez v9, :cond_1

    .line 159
    return-void

    .line 161
    :cond_1
    iput-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 163
    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(ZZ)Z

    move-result v10

    .line 167
    .local v10, "reallyVisible":Z
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    const-string v11, "ActivityTaskManager"

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fullscreen: at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stackVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " behindFullscreen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    iput-boolean v8, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    goto :goto_1

    .line 175
    :cond_3
    iput-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    .line 188
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 189
    .local v0, "topRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 190
    .local v12, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v12, :cond_5

    .line 191
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v13, v0

    goto :goto_2

    .line 190
    :cond_5
    move-object v13, v0

    .line 194
    .end local v0    # "topRecord":Lcom/android/server/wm/ActivityRecord;
    .local v13, "topRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    new-array v0, v8, [I

    const/16 v2, 0x3c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->isFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 197
    invoke-direct {v6, v0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->isAppSupportsAccelerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    move v14, v0

    .line 200
    .local v14, "shouldFPaccelerate":Z
    if-nez v10, :cond_a

    if-nez v14, :cond_7

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 201
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v0, :cond_a

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 204
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 208
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_a

    .line 210
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 215
    invoke-static {v0, v2}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 218
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 221
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 224
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->shouldResizeStackWithLaunchBounds()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v8

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    move v15, v0

    .line 225
    .local v15, "makeFocusedStackVisible":Z
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v5, " stackShouldBeVisible="

    const-string v2, " state="

    const-string v3, " finishing="

    if-eqz v0, :cond_c

    if-eqz v15, :cond_c

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Make Home visible "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " visibleIgnoringKeyguard:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " topRecord:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " occludesParent:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isSleeping:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " canShowWhenLocked()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " makeFocusedStackVisible:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " reallyVisible:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isActivityTypeHome:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 234
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAppUnsupportAccelerateList: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v4, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAppUnsupportAccelerateList:Ljava/util/List;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_b
    const-string v4, "null"

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_c
    const-string v4, " behindFullscreenActivity="

    if-nez v10, :cond_f

    if-eqz v15, :cond_d

    goto :goto_6

    .line 284
    :cond_d
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Make invisible? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLaunchTaskBehind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_a

    .line 243
    :cond_f
    :goto_6
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_10

    .line 244
    return-void

    .line 246
    :cond_10
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Make visible? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_11
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq v7, v0, :cond_12

    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_12

    .line 251
    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mPreserveWindows:Z

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0, v8}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 255
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_14

    .line 256
    iget-object v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    if-eqz p3, :cond_13

    if-eqz v9, :cond_13

    move/from16 v16, v8

    goto :goto_7

    :cond_13
    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    move v3, v9

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_9

    .line 258
    :cond_14
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_18

    .line 260
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping: already visible at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_15
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v0, :cond_17

    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_17

    .line 264
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_8

    :cond_16
    move-object/from16 v0, p2

    :goto_8
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 268
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    .line 269
    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_1a

    .line 270
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_9

    .line 275
    :cond_18
    if-eqz v15, :cond_19

    .line 276
    iput-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->mIsMakeFocusedStackVisible:Z

    .line 279
    :cond_19
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 282
    :cond_1a
    :goto_9
    iget v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    iget v1, v7, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int/2addr v0, v1

    iput v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    .line 292
    :goto_a
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 293
    .local v0, "windowingMode":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 297
    iget-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    xor-int/2addr v1, v8

    iput-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    goto :goto_b

    .line 298
    :cond_1b
    iget-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    if-nez v1, :cond_1d

    iget-object v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 300
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home task: at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1c
    iput-boolean v8, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    .line 310
    :cond_1d
    :goto_b
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 4
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 133
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->reset(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 135
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureActivitiesVisible behind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " configChanges=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 145
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 146
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 148
    .local v0, "resumeTopActivity":Z
    :goto_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 150
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 148
    invoke-static {v1, p0, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 151
    .local v1, "f":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 152
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 153
    return-void
.end method

.method reset(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 3
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 80
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    .line 84
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    .line 86
    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    .line 87
    iput p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    .line 88
    iput-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mPreserveWindows:Z

    .line 89
    iput-boolean p4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    .line 90
    return-void
.end method
