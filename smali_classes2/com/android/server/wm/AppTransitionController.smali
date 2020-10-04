.class public Lcom/android/server/wm/AppTransitionController;
.super Ljava/lang/Object;
.source "AppTransitionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/SparseIntArray;

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 90
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 96
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 761
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 762
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    return v1

    .line 761
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 766
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 340
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 341
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 342
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 344
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 345
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 347
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 348
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 350
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 377
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 378
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v2, :cond_0

    .line 379
    return v1

    .line 377
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;
    .locals 5
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 314
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 315
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 316
    .local v1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 319
    .local v2, "changingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppTransitionController$YfQg1m68hbvcHoXbvzomyslzuaU;

    invoke-direct {v3, p1, p2}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$YfQg1m68hbvcHoXbvzomyslzuaU;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 322
    .local v3, "result":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_0

    .line 323
    return-object v3

    .line 325
    :cond_0
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 327
    if-eqz v3, :cond_1

    .line 328
    return-object v3

    .line 330
    :cond_1
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    return-object v4
.end method

.method private static getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .param p0, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 268
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 269
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_1
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;
    .locals 5
    .param p2, "ignoreHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;Z)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 778
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/high16 v0, -0x80000000

    .line 779
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 780
    .local v1, "topApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 781
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 782
    .local v3, "app":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 783
    goto :goto_1

    .line 785
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v4

    .line 786
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_1

    .line 787
    move v0, v4

    .line 788
    move-object v1, v3

    .line 780
    .end local v3    # "app":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "prefixOrderIndex":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 791
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private handleChangingApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .locals 8
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z

    .line 458
    const-string v0, "handleChangingApps"

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 459
    .local v1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 460
    .local v2, "appsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 461
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 462
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now changing app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->cancelAnimationOnly()V

    .line 464
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, p1, v7, v6}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 465
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 466
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 468
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 471
    nop

    .line 460
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    .restart local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v5

    .line 473
    .end local v3    # "i":I
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 421
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 422
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 423
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 425
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now closing app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkActivityTypeHome(Lcom/android/server/wm/AppWindowToken;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v4, :cond_1

    .line 434
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 435
    invoke-static {p1}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->getAppTransit(I)I

    move-result v4

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, p1

    .line 436
    .local v7, "finalTransit":I
    :goto_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    move-object v5, p2

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 439
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 443
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 444
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 447
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_2

    .line 448
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 451
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    .line 422
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "finalTransit":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .locals 6
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 476
    const-string v0, "WindowManager"

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    .line 477
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_2

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    .line 487
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeShouldShowWallpaper()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    const-string v4, "one-handed mode is running, skip set wallpaper exit animation"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v4, 0x0

    .local v4, "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 491
    .end local v4    # "anim":Landroid/view/animation/Animation;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v4

    .line 495
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    :goto_1
    if-eqz v4, :cond_2

    .line 496
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 500
    .end local v4    # "anim":Landroid/view/animation/Animation;
    :cond_2
    const/16 v4, 0x15

    if-eq p1, v1, :cond_3

    if-ne p1, v4, :cond_7

    .line 504
    :cond_3
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4

    .line 505
    const-string v1, "No animation needed, skip set keyguard exit anim"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 509
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v4, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZ)V

    .line 513
    :cond_7
    return-void
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .locals 15
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z

    .line 386
    move-object v1, p0

    const-string v2, "<<< CLOSE TRANSACTION handleAppTransitionReady()"

    const-string v3, "handleAppTransitionReady"

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 387
    .local v4, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 388
    .local v5, "appsCount":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_7

    .line 389
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    .line 390
    .local v13, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v14, "WindowManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Now opening app"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v13

    move-object/from16 v8, p2

    move/from16 v10, p1

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v7, v13, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_1
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 400
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_2

    const-string v0, ">>> OPEN TRANSACTION handleAppTransitionReady()"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 404
    :try_start_0
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 407
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    goto :goto_1

    .line 413
    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->attachCrossProfileAppsThumbnailAnimation()V

    .line 388
    .end local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 406
    .restart local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v0

    move-object v7, v0

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 407
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_6

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7

    .line 417
    .end local v6    # "i":I
    .end local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7
    return-void
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$0(ILandroid/util/ArraySet;Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 320
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$1(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 326
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 356
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 357
    .local v0, "array2base":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 358
    .local v1, "array3base":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 359
    .local v2, "count":I
    const/high16 v3, -0x80000000

    .line 360
    .local v3, "bestPrefixOrderIndex":I
    const/4 v4, 0x0

    .line 361
    .local v4, "bestToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 362
    if-ge v5, v0, :cond_0

    .line 363
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    .line 364
    :cond_0
    if-ge v5, v1, :cond_1

    .line 365
    sub-int v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    .line 366
    :cond_1
    sub-int v6, v5, v1

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    :goto_1
    nop

    .line 367
    .local v6, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v7

    .line 368
    .local v7, "prefixOrderIndex":I
    invoke-interface {p3, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-le v7, v3, :cond_2

    .line 369
    move v3, v7

    .line 370
    move-object v4, v6

    .line 361
    .end local v6    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "prefixOrderIndex":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 373
    .end local v5    # "i":I
    :cond_3
    return-object v4
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .locals 11
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z

    .line 604
    if-eqz p1, :cond_a

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_a

    const/16 v0, 0x13

    if-eq p1, v0, :cond_a

    .line 606
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 611
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 616
    .local v3, "showWallpaper":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 618
    :cond_2
    move-object v4, v0

    goto :goto_2

    .line 617
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 618
    :goto_2
    nop

    .line 619
    .local v4, "oldWallpaper":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 620
    .local v5, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 621
    .local v6, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v7, v2}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 623
    .local v2, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v7, v1}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 626
    .local v1, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {p0, v5}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v7

    .line 627
    .local v7, "openingCanBeWallpaperTarget":Z
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v9, "WindowManager"

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New wallpaper target="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", oldWallpaper="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", openingApps="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", closingApps="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_4
    const-string v8, "New transit: "

    if-eqz v7, :cond_5

    const/16 v10, 0x14

    if-ne p1, v10, :cond_5

    .line 634
    const/16 p1, 0x15

    .line 635
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 635
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 640
    :cond_5
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v10

    if-nez v10, :cond_9

    .line 641
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    .line 642
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v10, :cond_6

    const-string v10, "Wallpaper animation!"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_6
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 652
    :pswitch_0
    const/16 p1, 0xf

    goto :goto_3

    .line 647
    :pswitch_1
    const/16 p1, 0xe

    .line 648
    nop

    .line 655
    :goto_3
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 655
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 657
    :cond_7
    if-eqz v4, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 658
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 659
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v8, :cond_8

    .line 662
    const/16 p1, 0xc

    .line 663
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New transit away from wallpaper: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 663
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 665
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 666
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v2, v8, :cond_9

    const/16 v8, 0x19

    if-eq p1, v8, :cond_9

    .line 671
    const/16 p1, 0xd

    .line 672
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New transit into wallpaper: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 672
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_9
    :goto_4
    return p1

    .line 607
    .end local v0    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v1    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "showWallpaper":Z
    .end local v4    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .end local v5    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v6    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v7    # "openingCanBeWallpaperTarget":Z
    :cond_a
    :goto_5
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V
    .locals 2
    .param p1, "animLpToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    if-nez p1, :cond_1

    .line 298
    return-void

    .line 300
    :cond_1
    nop

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 302
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 306
    :cond_2
    return-void
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .locals 4
    .param p1, "transit"    # I

    .line 795
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 798
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 799
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 800
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_0

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now animating app in place "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 803
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v3}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 804
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 805
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 808
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void
.end method

.method private transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z
    .locals 9
    .param p2, "outReasons"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")Z"
        }
    .end annotation

    .line 516
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " opening apps (frozen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 519
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 528
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v0

    .line 531
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_10

    .line 539
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 540
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->rotationNeedsUpdate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_1

    .line 542
    const-string v3, "Delaying app transition for screen rotation animation to finish"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    return v2

    .line 546
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 547
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 548
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check opening app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": allDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingDisplayed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingMoved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isRelaunching()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingWindow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 548
    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_3
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v2

    .line 558
    .local v6, "allDrawn":Z
    :goto_1
    if-nez v6, :cond_5

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v7, :cond_5

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v7, :cond_5

    .line 559
    return v2

    .line 561
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v7

    .line 562
    .local v7, "windowingMode":I
    if-eqz v6, :cond_6

    .line 563
    const/4 v8, 0x2

    invoke-virtual {p2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 565
    :cond_6
    nop

    .line 566
    iget-object v8, v5, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v8, v8, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v8, :cond_7

    .line 567
    move v8, v4

    goto :goto_2

    .line 568
    :cond_7
    const/4 v8, 0x4

    .line 565
    :goto_2
    invoke-virtual {p2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 546
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "allDrawn":Z
    .end local v7    # "windowingMode":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 573
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 574
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_9

    const-string v3, "isFetchingAppTransitionSpecs=true"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_9
    return v2

    .line 578
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v3

    if-nez v3, :cond_c

    .line 579
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_b

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknownApps is not empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 581
    invoke-virtual {v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_b
    return v2

    .line 587
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 588
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    :goto_4
    move v1, v4

    .line 589
    .local v1, "wallpaperReady":Z
    :goto_5
    if-eqz v1, :cond_f

    .line 590
    return v4

    .line 592
    :cond_f
    return v2

    .line 594
    .end local v1    # "wallpaperReady":Z
    :cond_10
    return v4
.end method


# virtual methods
.method getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .locals 2
    .param p1, "animLpToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    .line 274
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    .line 275
    .local v0, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 277
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_0

    .line 278
    return-object v1

    .line 281
    .end local v1    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-nez v1, :cond_1

    .line 282
    const/4 v1, 0x0

    return-object v1

    .line 284
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    return-object v1
.end method

.method handleAppTransitionReady()V
    .locals 21

    .line 106
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 107
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 108
    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_11

    .line 111
    :cond_0
    const-wide/16 v2, 0x20

    const-string v0, "AppTransitionReady"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 113
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v4, "WindowManager"

    if-eqz v0, :cond_1

    const-string v0, "**** GOOD TO GO"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 115
    .local v5, "appTransition":Lcom/android/server/wm/AppTransition;
    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 116
    .local v0, "transit":I
    iget-object v6, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 119
    invoke-static {v0}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setAppTransit(I)V

    .line 121
    const/4 v0, -0x1

    .line 128
    :cond_2
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->skipAppTransitionAnimation()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 129
    iget-object v6, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 132
    :cond_3
    iget-object v6, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 134
    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 136
    iget-object v6, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 138
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 139
    .local v6, "appCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_4

    .line 144
    iget-object v9, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 139
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 146
    .end local v8    # "i":I
    :cond_4
    iget-object v8, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 147
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v6, :cond_5

    .line 149
    iget-object v9, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 155
    .end local v8    # "i":I
    :cond_5
    iget-object v8, v1, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v9, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v10, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 160
    iget-object v8, v1, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    move v8, v7

    .line 161
    .local v8, "hasWallpaperTarget":Z
    :goto_2
    iget-object v10, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v10}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    move v10, v7

    .line 163
    .local v10, "openingAppHasWallpaper":Z
    :goto_3
    iget-object v11, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v11}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v8, :cond_8

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    move v11, v7

    .line 166
    .local v11, "closingAppHasWallpaper":Z
    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v0

    .line 167
    invoke-direct {v1, v0, v10, v11}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v0

    .line 174
    iget-object v12, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v13, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v14, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-static {v12, v13, v14}, Lcom/android/server/wm/AppTransitionController;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v12

    .line 176
    .local v12, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v13, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->allowAppAnimationsLw()Z

    move-result v13

    .line 177
    .local v13, "allowAnimations":Z
    if-eqz v13, :cond_9

    .line 178
    invoke-direct {v1, v0, v12}, Lcom/android/server/wm/AppTransitionController;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v15

    goto :goto_5

    .line 179
    :cond_9
    const/4 v15, 0x0

    :goto_5
    nop

    .line 180
    .local v15, "animLpToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v13, :cond_a

    .line 181
    iget-object v14, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v14, v7}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v14

    goto :goto_6

    .line 182
    :cond_a
    const/4 v14, 0x0

    :goto_6
    nop

    .line 183
    .local v14, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    if-eqz v13, :cond_b

    .line 184
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v2, v7}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    goto :goto_7

    .line 185
    :cond_b
    const/4 v2, 0x0

    :goto_7
    nop

    .line 186
    .local v2, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    if-eqz v13, :cond_c

    .line 187
    iget-object v3, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v3, v7}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_8

    .line 188
    :cond_c
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v3, v16

    .line 189
    .local v3, "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-static {v15}, Lcom/android/server/wm/AppTransitionController;->getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 192
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    sget-boolean v17, Lcom/android/server/wm/OpDisplayContentInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v17, :cond_10

    .line 194
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v17

    if-nez v17, :cond_f

    .line 195
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->handleAppTransitionReady()I

    move-result v7

    .line 196
    .local v7, "result":I
    move/from16 v18, v0

    .end local v0    # "transit":I
    .local v18, "transit":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_d

    .line 197
    move v0, v7

    .end local v18    # "transit":I
    .restart local v0    # "transit":I
    goto :goto_9

    .line 196
    .end local v0    # "transit":I
    .restart local v18    # "transit":I
    :cond_d
    move/from16 v0, v18

    .line 200
    .end local v18    # "transit":I
    .restart local v0    # "transit":I
    :goto_9
    sget-boolean v18, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v18, :cond_e

    .line 201
    move/from16 v19, v6

    .end local v6    # "appCount":I
    .local v19, "appCount":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v7

    .end local v7    # "result":I
    .local v20, "result":I
    const-string v7, "overrideWithRemoteAnimationIfSet: transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 200
    .end local v19    # "appCount":I
    .end local v20    # "result":I
    .restart local v6    # "appCount":I
    .restart local v7    # "result":I
    :cond_e
    move/from16 v19, v6

    move/from16 v20, v7

    .line 205
    .end local v6    # "appCount":I
    .end local v7    # "result":I
    .restart local v19    # "appCount":I
    :goto_a
    move v4, v0

    goto :goto_c

    .line 194
    .end local v19    # "appCount":I
    .restart local v6    # "appCount":I
    :cond_f
    move/from16 v18, v0

    move/from16 v19, v6

    .end local v0    # "transit":I
    .end local v6    # "appCount":I
    .restart local v18    # "transit":I
    .restart local v19    # "appCount":I
    goto :goto_b

    .line 192
    .end local v18    # "transit":I
    .end local v19    # "appCount":I
    .restart local v0    # "transit":I
    .restart local v6    # "appCount":I
    :cond_10
    move/from16 v18, v0

    move/from16 v19, v6

    .line 205
    .end local v0    # "transit":I
    .end local v6    # "appCount":I
    .restart local v18    # "transit":I
    .restart local v19    # "appCount":I
    :goto_b
    move/from16 v4, v18

    .end local v18    # "transit":I
    .local v4, "transit":I
    :goto_c
    invoke-direct {v1, v15, v4, v12}, Lcom/android/server/wm/AppTransitionController;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V

    .line 207
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 208
    invoke-direct {v1, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 209
    invoke-direct {v1, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_d

    :cond_11
    const/4 v0, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v0, 0x1

    :goto_e
    move v6, v0

    .line 212
    .local v6, "voiceInteraction":Z
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 214
    :try_start_0
    invoke-direct {v1, v4}, Lcom/android/server/wm/AppTransitionController;->processApplicationsAnimatingInPlace(I)V

    .line 216
    invoke-direct {v1, v4, v9, v6}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 217
    invoke-direct {v1, v4, v9, v6}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 218
    invoke-direct {v1, v4, v9, v6}, Lcom/android/server/wm/AppTransitionController;->handleChangingApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 220
    invoke-virtual {v5, v4, v14, v2, v3}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 223
    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    .line 224
    .local v0, "flags":I
    iget-object v7, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4, v14, v7}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;)I

    move-result v7

    .line 226
    .local v7, "layoutRedo":I
    invoke-direct {v1, v4, v0}, Lcom/android/server/wm/AppTransitionController;->handleNonAppWindowsInTransition(II)V

    .line 227
    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 228
    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "flags":I
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 234
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->skipAppTransitionAnimation()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .local v18, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    goto :goto_f

    .line 234
    .end local v18    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v2    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    :cond_13
    move-object/from16 v18, v2

    const/4 v2, 0x0

    .line 241
    .end local v2    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v18    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    :goto_f
    invoke-static {v2}, Lcom/android/server/wm/OpDisplayContentInjector;->setBooleanNotificationRemoteInputeDraft(Z)V

    .line 243
    nop

    .line 245
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V

    .line 247
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 248
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 249
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 250
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 254
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 256
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 258
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 259
    move-object/from16 v16, v3

    move/from16 v20, v4

    .end local v3    # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "transit":I
    .local v16, "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .local v20, "transit":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 258
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionStarting(Landroid/util/SparseIntArray;J)V

    .line 261
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 263
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v7, 0x1

    or-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 265
    return-void

    .line 230
    .end local v7    # "layoutRedo":I
    .end local v16    # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v18    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v20    # "transit":I
    .restart local v2    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v3    # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v4    # "transit":I
    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move/from16 v20, v4

    .end local v2    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "transit":I
    .restart local v16    # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v18    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v20    # "transit":I
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 234
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->skipAppTransitionAnimation()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 235
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    goto :goto_10

    .line 234
    :cond_14
    const/4 v3, 0x0

    .line 241
    :goto_10
    invoke-static {v3}, Lcom/android/server/wm/OpDisplayContentInjector;->setBooleanNotificationRemoteInputeDraft(Z)V

    throw v0

    .line 109
    .end local v5    # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v6    # "voiceInteraction":Z
    .end local v8    # "hasWallpaperTarget":Z
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "openingAppHasWallpaper":Z
    .end local v11    # "closingAppHasWallpaper":Z
    .end local v12    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v13    # "allowAnimations":Z
    .end local v14    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v15    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v16    # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v18    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v19    # "appCount":I
    .end local v20    # "transit":I
    :cond_15
    :goto_11
    return-void
.end method

.method isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .locals 4
    .param p1, "transit"    # I
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 733
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 734
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 739
    :cond_0
    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x12

    if-eq p1, v1, :cond_1

    .line 743
    return v0

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 747
    .local v2, "activity":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 748
    .local v3, "activityTask":Lcom/android/server/wm/Task;
    if-eq v3, p2, :cond_2

    .line 749
    return v0

    .line 751
    .end local v2    # "activity":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "activityTask":Lcom/android/server/wm/Task;
    :cond_2
    goto :goto_0

    .line 752
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 753
    .restart local v2    # "activity":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, p2, :cond_4

    .line 754
    return v0

    .line 756
    .end local v2    # "activity":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    goto :goto_1

    .line 757
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 737
    :cond_6
    :goto_2
    return v0
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .locals 7
    .param p1, "transit"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 693
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    return p1

    .line 697
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 698
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 699
    .local v0, "taskOrActivity":Z
    :goto_1
    const/4 v2, 0x1

    .line 700
    .local v2, "allOpeningVisible":Z
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 701
    .local v3, "allTranslucentOpeningApps":Z
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 702
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 703
    .local v5, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v6

    if-nez v6, :cond_3

    .line 704
    const/4 v2, 0x0

    .line 705
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 706
    const/4 v3, 0x0

    .line 701
    .end local v5    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 710
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    .line 711
    .local v4, "allTranslucentClosingApps":Z
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_6

    .line 712
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 713
    const/4 v4, 0x0

    .line 714
    goto :goto_4

    .line 711
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 718
    .end local v5    # "i":I
    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 719
    const/16 v1, 0x19

    return v1

    .line 721
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 722
    const/16 v1, 0x18

    return v1

    .line 724
    :cond_8
    return p1
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 0
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 100
    return-void
.end method
