.class Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.super Ljava/lang/Object;
.source "EnsureActivitiesVisibleHelper.java"


# instance fields
.field private mAboveTop:Z

.field private mBehindFullscreenActivity:Z

.field private mConfigChanges:I

.field private mContainerShouldBeVisible:Z

.field private final mContiner:Lcom/android/server/wm/ActivityStack;

.field private mNotifyClients:Z

.field private mPreserveWindows:Z

.field private mStarting:Lcom/android/server/wm/ActivityRecord;

.field private mTop:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "container"    # Lcom/android/server/wm/ActivityStack;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 52
    return-void
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

    .line 275
    if-nez p3, :cond_0

    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 276
    return-void

    .line 281
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

    .line 282
    :cond_1
    if-eq p5, p1, :cond_2

    .line 283
    invoke-virtual {p5, p2}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 285
    :cond_2
    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_5

    .line 286
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

    .line 287
    :cond_4
    invoke-virtual {p5, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 289
    :cond_5
    if-eq p5, p1, :cond_6

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p5, p4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 292
    :cond_6
    return-void
.end method

.method private setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 19
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "resumeTopActivity"    # Z

    .line 118
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

    .line 119
    .local v9, "isTop":Z
    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v0, :cond_1

    if-nez v9, :cond_1

    .line 120
    return-void

    .line 122
    :cond_1
    iput-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 124
    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(ZZ)Z

    move-result v10

    .line 128
    .local v10, "reallyVisible":Z
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    const-string v11, "ActivityTaskManager"

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
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

    .line 134
    :cond_2
    iput-boolean v8, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    goto :goto_1

    .line 136
    :cond_3
    iput-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    .line 149
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 150
    .local v0, "topRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 151
    .local v12, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v12, :cond_5

    .line 152
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v13, v0

    goto :goto_2

    .line 151
    :cond_5
    move-object v13, v0

    .line 155
    .end local v0    # "topRecord":Lcom/android/server/wm/ActivityRecord;
    .local v13, "topRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    new-array v0, v8, [I

    const/16 v2, 0x3c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->isFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 158
    invoke-static {v0}, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->isAppSupportsAccelerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    move v14, v0

    .line 160
    .local v14, "shouldFPaccelerate":Z
    if-nez v10, :cond_a

    if-nez v14, :cond_7

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 161
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v0, :cond_a

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 168
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_a

    .line 170
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 171
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

    .line 175
    invoke-static {v0, v2}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 178
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 181
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 184
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->shouldResizeStackWithLaunchBounds()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v8

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    move v15, v0

    .line 185
    .local v15, "makeFocusedStackVisible":Z
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v5, " stackShouldBeVisible="

    const-string v2, " state="

    const-string v3, " finishing="

    if-eqz v0, :cond_b

    if-eqz v15, :cond_b

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Make Home visible "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
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

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isSleeping:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " canShowWhenLocked()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
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

    .line 194
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_b
    const-string v4, " behindFullscreenActivity="

    if-nez v10, :cond_e

    if-eqz v15, :cond_c

    goto :goto_5

    .line 241
    :cond_c
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Make invisible? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
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

    .line 241
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_9

    .line 200
    :cond_e
    :goto_5
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_f

    .line 201
    return-void

    .line 203
    :cond_f
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Make visible? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_10
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq v7, v0, :cond_11

    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_11

    .line 208
    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mPreserveWindows:Z

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0, v8}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 212
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_13

    .line 213
    iget-object v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget v2, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    if-eqz p3, :cond_12

    if-eqz v9, :cond_12

    move/from16 v16, v8

    goto :goto_6

    :cond_12
    const/16 v16, 0x0

    :goto_6
    move-object/from16 v0, p0

    move v3, v9

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_8

    .line 215
    :cond_13
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_17

    .line 217
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping: already visible at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_14
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v0, :cond_16

    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_16

    .line 221
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_7

    :cond_15
    move-object/from16 v0, p2

    :goto_7
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 225
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    .line 226
    iget-boolean v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_19

    .line 227
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_8

    .line 232
    :cond_17
    if-eqz v15, :cond_18

    .line 233
    iput-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->mIsMakeFocusedStackVisible:Z

    .line 236
    :cond_18
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 239
    :cond_19
    :goto_8
    iget v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    iget v1, v7, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int/2addr v0, v1

    iput v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    .line 249
    :goto_9
    iget-object v0, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 250
    .local v0, "windowingMode":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 254
    iget-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    xor-int/2addr v1, v8

    iput-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    goto :goto_a

    .line 255
    :cond_1a
    iget-boolean v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    if-nez v1, :cond_1c

    iget-object v1, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 257
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_1b

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

    .line 265
    :cond_1b
    iput-boolean v8, v6, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    .line 267
    :cond_1c
    :goto_a
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 4
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 94
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->reset(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 96
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

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 106
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    .line 107
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 109
    .local v0, "resumeTopActivity":Z
    :goto_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 111
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 109
    invoke-static {v1, p0, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 112
    .local v1, "f":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 113
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 114
    return-void
.end method

.method reset(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 3
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    .line 70
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContiner:Lcom/android/server/wm/ActivityStack;

    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    .line 72
    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    .line 73
    iput p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    .line 74
    iput-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mPreserveWindows:Z

    .line 75
    iput-boolean p4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    .line 76
    return-void
.end method
