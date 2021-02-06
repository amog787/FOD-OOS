.class public Lcom/android/server/wm/AppTransitionController;
.super Ljava/lang/Object;
.source "AppTransitionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 102
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 103
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 104
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 105
    return-void
.end method

.method private applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p3, "transit"    # I
    .param p4, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "voiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;I",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    .line 567
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 568
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 578
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p3}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;ZI)Landroid/util/ArraySet;

    move-result-object v0

    .line 580
    .local v0, "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p3}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;ZI)Landroid/util/ArraySet;

    move-result-object v9

    .line 584
    .local v9, "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 589
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 590
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 591
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 592
    .local v3, "record":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkActivityTypeHome(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v4, :cond_1

    .line 593
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 594
    invoke-static {p3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->getAppTransit(I)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, p3

    .line 595
    .local v4, "tran":I
    :goto_1
    if-eq v4, p3, :cond_2

    .line 596
    move p3, v4

    .line 597
    goto :goto_2

    .line 590
    .end local v3    # "record":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "tran":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v2    # "i":I
    :cond_3
    :goto_2
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v9

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 605
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 607
    .local v2, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    if-eqz v2, :cond_4

    .line 608
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 609
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 608
    invoke-virtual {v2, v3, p3}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransitionLocked(II)V

    .line 611
    :cond_4
    return-void

    .line 569
    .end local v0    # "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v1    # "appsCount":I
    .end local v2    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v9    # "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :cond_5
    :goto_3
    return-void
.end method

.method private applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 12
    .param p3, "transit"    # I
    .param p4, "visible"    # Z
    .param p5, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "voiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;IZ",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    .line 418
    .local p1, "wcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 419
    .local v0, "wcsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 420
    move-object v2, p1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 425
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    .line 426
    .local v10, "transitioningDescendants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 427
    move-object v11, p2

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 428
    .local v5, "app":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 429
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v11, p2

    .line 432
    .end local v4    # "j":I
    move-object v4, v3

    move-object/from16 v5, p5

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 419
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v10    # "transitioningDescendants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p1

    move-object v11, p2

    .line 434
    .end local v1    # "i":I
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 969
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 970
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    return v1

    .line 969
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 974
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
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 357
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 358
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 359
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 361
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 362
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 364
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 365
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 367
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
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 395
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 396
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v2, :cond_0

    .line 397
    return v1

    .line 395
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 331
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 332
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 333
    .local v1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 336
    .local v2, "changingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppTransitionController$z5kCoexPNTWFncmRBfeXr6HA2JA;

    invoke-direct {v3, p1, p2}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$z5kCoexPNTWFncmRBfeXr6HA2JA;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 339
    .local v3, "result":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_0

    .line 340
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    return-object v4

    .line 342
    :cond_0
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig;

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 344
    if-eqz v3, :cond_1

    .line 345
    return-object v3

    .line 347
    :cond_1
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppTransitionController$ZU-2ppbyGJ7-UsXREbcW1x9TJH0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$ZU-2ppbyGJ7-UsXREbcW1x9TJH0;

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    return-object v4
.end method

.method private static getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 280
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 281
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_1
    return-object v0
.end method

.method static getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;ZI)Landroid/util/ArraySet;
    .locals 17
    .param p2, "visible"    # Z
    .param p3, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;ZI)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 457
    .local p0, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    move/from16 v0, p2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 458
    .local v1, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    if-eqz v0, :cond_0

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 459
    .local v2, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v3, v4, :cond_2

    .line 460
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 465
    .local v4, "app":Lcom/android/server/wm/ActivityRecord;
    move/from16 v9, p3

    invoke-virtual {v4, v0, v9}, Lcom/android/server/wm/ActivityRecord;->shouldApplyAnimation(ZI)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 467
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-boolean v10, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v10, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v11

    .local v11, "protoLogParam1":Z
    const/4 v12, 0x0

    .local v12, "protoLogParam2":Z
    sget-object v13, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v14, 0x754ced9f

    const/16 v15, 0x3c

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v10, v6, v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x0

    invoke-static {v13, v14, v15, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 459
    .end local v4    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "protoLogParam0":Ljava/lang/String;
    .end local v11    # "protoLogParam1":Z
    .end local v12    # "protoLogParam2":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move/from16 v9, p3

    .line 474
    .end local v3    # "i":I
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-nez v3, :cond_3

    .line 475
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v3

    .line 478
    :cond_3
    if-eqz v0, :cond_4

    move-object/from16 v3, p1

    goto :goto_2

    :cond_4
    move-object/from16 v3, p0

    .line 481
    .local v3, "otherApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_2
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 482
    .local v4, "otherAncestors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v6, v10, :cond_6

    .line 483
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .local v10, "wc":Lcom/android/server/wm/WindowContainer;
    :goto_4
    if-eqz v10, :cond_5

    .line 484
    invoke-virtual {v4, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    goto :goto_4

    .line 482
    .end local v10    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 489
    .end local v6    # "i":I
    :cond_6
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 490
    .local v6, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v10, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    :goto_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    .line 492
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowContainer;

    .line 493
    .local v11, "current":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    .line 494
    .local v12, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 495
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const/4 v13, 0x1

    .line 498
    .local v13, "canPromote":Z
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_8

    .line 513
    :cond_7
    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 514
    const/4 v13, 0x0

    .line 533
    :cond_8
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_6
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v15

    if-ge v14, v15, :cond_c

    .line 534
    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    .line 535
    .local v15, "sibling":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 536
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 537
    :cond_9
    if-eq v15, v11, :cond_a

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 538
    const/4 v13, 0x0

    .line 533
    .end local v15    # "sibling":Lcom/android/server/wm/WindowContainer;
    :cond_a
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 499
    .end local v14    # "j":I
    :cond_b
    :goto_8
    const/4 v13, 0x0

    .line 543
    :cond_c
    if-eqz v13, :cond_d

    .line 544
    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 546
    :cond_d
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 548
    .end local v11    # "current":Lcom/android/server/wm/WindowContainer;
    .end local v12    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v13    # "canPromote":Z
    :goto_9
    goto :goto_5

    .line 549
    :cond_e
    sget-boolean v11, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v11, :cond_f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    sget-object v13, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v14, 0x57116af2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v7

    aput-object v12, v5, v8

    const/4 v8, 0x0

    invoke-static {v13, v14, v7, v8, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 551
    .end local v11    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    :cond_f
    return-object v6
.end method

.method static getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 321
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .param p2, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 988
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/wm/WindowContainer;>;"
    const/high16 v0, -0x80000000

    .line 989
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 990
    .local v1, "topApp":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 991
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 992
    .local v3, "app":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 993
    goto :goto_1

    .line 995
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v4

    .line 996
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_1

    .line 997
    move v0, v4

    .line 998
    move-object v1, v3

    .line 990
    .end local v3    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prefixOrderIndex":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1001
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private handleChangingApps(I)V
    .locals 10
    .param p1, "transit"    # I

    .line 683
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 684
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 685
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 686
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 687
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0xb2054f0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 688
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 685
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private handleClosingApps()V
    .locals 11

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 658
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 660
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 661
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 662
    .local v3, "app":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x2f5c2e52

    const/4 v9, 0x0

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-static {v7, v8, v6, v9, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 664
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v6, v6}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 665
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 669
    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 672
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_1

    .line 673
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 676
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 677
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    .line 660
    .end local v3    # "app":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .locals 6
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 693
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 694
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_1

    .line 697
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 699
    .local v3, "anim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_1

    .line 700
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 701
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 705
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_1
    const/16 v3, 0x15

    if-eq p1, v0, :cond_2

    if-ne p1, v3, :cond_7

    .line 709
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 710
    const-string v0, "WindowManager"

    const-string v1, "No animation needed, skip set keyguard exit anim"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void

    .line 714
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    .line 719
    :cond_7
    return-void
.end method

.method private handleOpeningApps()V
    .locals 13

    .line 614
    const-string v0, "<<< CLOSE TRANSACTION handleAppTransitionReady()"

    const-string v1, "handleAppTransitionReady"

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 615
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 617
    .local v3, "appsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_8

    .line 618
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 619
    .local v5, "app":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v10, 0x610e94b5

    const/4 v11, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v6, v12, v7

    invoke-static {v9, v10, v7, v11, v12}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 621
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v8, v7}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 627
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v8}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 629
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getAnimationSources()Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 633
    :cond_1
    iget-object v8, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 636
    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    .line 637
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v8, "WindowManager"

    if-eqz v7, :cond_3

    const-string v7, ">>> OPEN TRANSACTION handleAppTransitionReady()"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 641
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 644
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v7, :cond_4

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 649
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_1

    .line 650
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 651
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachCrossProfileAppsThumbnailAnimation()V

    .line 617
    .end local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 643
    .restart local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :catchall_0
    move-exception v7

    iget-object v9, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 644
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_7

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_7
    throw v7

    .line 654
    .end local v4    # "i":I
    .end local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_8
    return-void
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$1(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 337
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 343
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$3(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 373
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 374
    .local v0, "array2base":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 375
    .local v1, "array3base":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 376
    .local v2, "count":I
    const/high16 v3, -0x80000000

    .line 377
    .local v3, "bestPrefixOrderIndex":I
    const/4 v4, 0x0

    .line 378
    .local v4, "bestToken":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 379
    if-ge v5, v0, :cond_0

    .line 380
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_1

    .line 381
    :cond_0
    if-ge v5, v1, :cond_1

    .line 382
    sub-int v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_1

    .line 383
    :cond_1
    sub-int v6, v5, v1

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    :goto_1
    nop

    .line 384
    .local v6, "wtoken":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v7

    .line 385
    .local v7, "prefixOrderIndex":I
    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 386
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_2

    invoke-interface {p3, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-le v7, v3, :cond_2

    .line 387
    move v3, v7

    .line 388
    move-object v4, v8

    .line 378
    .end local v6    # "wtoken":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "prefixOrderIndex":I
    .end local v8    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 391
    .end local v5    # "i":I
    :cond_3
    return-object v4
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .locals 20
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z

    .line 809
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_c

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_c

    const/16 v2, 0x13

    if-eq v1, v2, :cond_c

    .line 811
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 815
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 816
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    :cond_1
    iget-object v5, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 821
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v4

    .line 825
    .local v5, "showWallpaper":Z
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v5, :cond_4

    goto :goto_1

    .line 827
    :cond_4
    move-object v6, v2

    goto :goto_2

    .line 826
    :cond_5
    :goto_1
    const/4 v6, 0x0

    .line 827
    :goto_2
    nop

    .line 828
    .local v6, "oldWallpaper":Lcom/android/server/wm/WindowState;
    iget-object v8, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 829
    .local v8, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v9, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 830
    .local v9, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v10, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v0, v10, v4}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 832
    .local v10, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    iget-object v11, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v0, v11, v3}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 835
    .local v11, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    invoke-direct {v0, v8}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v12

    .line 836
    .local v12, "openingCanBeWallpaperTarget":Z
    sget-boolean v13, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v13, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam0":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .local v14, "protoLogParam1":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .local v15, "protoLogParam2":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "protoLogParam3":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v4

    const/16 v17, 0x1

    aput-object v14, v3, v17

    const/16 v19, 0x2

    aput-object v15, v3, v19

    const/16 v19, 0x3

    aput-object v16, v3, v19

    move/from16 v19, v5

    move-object/from16 v18, v13

    const v5, -0x1626a379

    const/4 v13, 0x0

    .end local v5    # "showWallpaper":Z
    .end local v13    # "protoLogParam0":Ljava/lang/String;
    .local v18, "protoLogParam0":Ljava/lang/String;
    .local v19, "showWallpaper":Z
    invoke-static {v7, v5, v4, v13, v3}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .end local v14    # "protoLogParam1":Ljava/lang/String;
    .end local v15    # "protoLogParam2":Ljava/lang/String;
    .end local v16    # "protoLogParam3":Ljava/lang/String;
    .end local v18    # "protoLogParam0":Ljava/lang/String;
    .end local v19    # "showWallpaper":Z
    .restart local v5    # "showWallpaper":Z
    :cond_6
    move/from16 v19, v5

    .line 840
    .end local v5    # "showWallpaper":Z
    .restart local v19    # "showWallpaper":Z
    :goto_3
    const v3, -0x7bb6801

    if-eqz v12, :cond_7

    const/16 v5, 0x14

    if-ne v1, v5, :cond_7

    .line 841
    const/16 v1, 0x15

    .line 842
    .end local p1    # "transit":I
    .local v1, "transit":I
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_b

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v5, v13, v4

    const/4 v14, 0x0

    invoke-static {v7, v3, v4, v14, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 843
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    goto/16 :goto_5

    .line 847
    .end local v1    # "transit":I
    .restart local p1    # "transit":I
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 848
    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    .line 849
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x6042b19

    const/4 v13, 0x0

    move-object v14, v13

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v5, v7, v4, v13, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 850
    :cond_8
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 859
    :pswitch_0
    const/16 v1, 0xf

    .end local p1    # "transit":I
    .restart local v1    # "transit":I
    goto :goto_4

    .line 854
    .end local v1    # "transit":I
    .restart local p1    # "transit":I
    :pswitch_1
    const/16 v1, 0xe

    .line 855
    .end local p1    # "transit":I
    .restart local v1    # "transit":I
    nop

    .line 862
    :goto_4
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_b

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v5, v13, v4

    const/4 v14, 0x0

    invoke-static {v7, v3, v4, v14, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 863
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    goto/16 :goto_5

    .line 864
    .end local v1    # "transit":I
    .restart local p1    # "transit":I
    :cond_9
    if-eqz v6, :cond_a

    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 865
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 866
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v11, v3, :cond_a

    .line 869
    const/16 v1, 0xc

    .line 870
    .end local p1    # "transit":I
    .restart local v1    # "transit":I
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_b

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x3e41e81f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v4

    const/4 v14, 0x0

    invoke-static {v5, v7, v4, v14, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 872
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    goto :goto_5

    .line 873
    .end local v1    # "transit":I
    .restart local p1    # "transit":I
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 874
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v10, v3, :cond_b

    const/16 v3, 0x19

    if-eq v1, v3, :cond_b

    .line 879
    const/16 v1, 0xd

    .line 880
    .end local p1    # "transit":I
    .restart local v1    # "transit":I
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_b

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x2f49806f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v4

    const/4 v14, 0x0

    invoke-static {v5, v7, v4, v14, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 884
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_b
    :goto_5
    return v1

    .line 812
    .end local v1    # "transit":I
    .end local v2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v6    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .end local v8    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v9    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v10    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "openingCanBeWallpaperTarget":Z
    .end local v19    # "showWallpaper":Z
    .restart local p1    # "transit":I
    :cond_c
    :goto_6
    return v1

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

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V
    .locals 2
    .param p1, "animLpActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    if-nez p1, :cond_1

    .line 310
    return-void

    .line 312
    :cond_1
    nop

    .line 313
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 314
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 318
    :cond_2
    return-void
.end method

.method private transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 723
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "outReasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    int-to-long v8, v2

    .local v8, "protoLogParam0":J
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .local v2, "protoLogParam1":Z
    iget-object v10, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v10

    .local v10, "protoLogParam2":Z
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v12, 0x79ee0313

    const/16 v13, 0x3d

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v11, v12, v13, v5, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 733
    .end local v2    # "protoLogParam1":Z
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam2":Z
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 735
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v2

    .line 737
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    iget-object v8, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v8

    if-nez v8, :cond_11

    .line 745
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 746
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayRotation;->needsUpdate()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 747
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x2572bb7a

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 749
    :cond_1
    return v7

    .line 751
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 752
    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .line 753
    .local v10, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-static {v10}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 754
    .local v11, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v11, :cond_3

    .line 755
    move-object/from16 v20, v2

    move/from16 v18, v3

    move v3, v4

    goto/16 :goto_4

    .line 757
    :cond_3
    sget-boolean v12, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v12, :cond_4

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam0":Ljava/lang/String;
    iget-boolean v14, v11, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .local v14, "protoLogParam1":Z
    iget-boolean v15, v11, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .local v15, "protoLogParam2":Z
    iget-boolean v5, v11, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .local v5, "protoLogParam3":Z
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v16

    .local v16, "protoLogParam4":Z
    iget-object v13, v11, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam5":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v7

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v4, v6

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v19, 0x2

    aput-object v21, v4, v19

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v18, 0x3

    aput-object v21, v4, v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v17, 0x4

    aput-object v21, v4, v17

    const/16 v21, 0x5

    aput-object v13, v4, v21

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const v6, 0x11488da1

    const/16 v7, 0x3fc

    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    .local v20, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    invoke-static {v3, v6, v7, v2, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v5    # "protoLogParam3":Z
    .end local v12    # "protoLogParam0":Ljava/lang/String;
    .end local v13    # "protoLogParam5":Ljava/lang/String;
    .end local v14    # "protoLogParam1":Z
    .end local v15    # "protoLogParam2":Z
    .end local v16    # "protoLogParam4":Z
    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    .restart local v2    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :cond_4
    move-object/from16 v20, v2

    move/from16 v18, v3

    const/16 v17, 0x4

    .line 765
    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    .restart local v20    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :goto_1
    iget-boolean v2, v11, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v2, :cond_5

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 766
    .local v2, "allDrawn":Z
    :goto_2
    if-nez v2, :cond_6

    iget-boolean v3, v11, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-nez v3, :cond_6

    iget-boolean v3, v11, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v3, :cond_6

    .line 767
    const/4 v3, 0x0

    return v3

    .line 769
    :cond_6
    if-eqz v2, :cond_7

    .line 770
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 772
    :cond_7
    const/4 v3, 0x2

    .line 773
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_8

    .line 774
    const/4 v13, 0x1

    goto :goto_3

    .line 775
    :cond_8
    move/from16 v13, v17

    .line 773
    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 772
    invoke-virtual {v1, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .end local v2    # "allDrawn":Z
    .end local v10    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v4, v3

    move/from16 v3, v18

    move-object/from16 v2, v20

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :cond_9
    move-object/from16 v9, p1

    move-object/from16 v20, v2

    .line 780
    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    .end local v8    # "i":I
    .restart local v20    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 781
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x3c25e891

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    .line 782
    :goto_5
    return v6

    .line 785
    :cond_b
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v2

    if-nez v2, :cond_d

    .line 786
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x1698204e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    .line 788
    :goto_6
    return v6

    .line 792
    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 793
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v3, 0x1

    :goto_8
    move v2, v3

    .line 794
    .local v2, "wallpaperReady":Z
    if-eqz v2, :cond_10

    .line 795
    const/4 v3, 0x1

    return v3

    .line 797
    :cond_10
    const/4 v3, 0x0

    return v3

    .line 799
    .end local v20    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :cond_11
    move v3, v6

    return v3
.end method


# virtual methods
.method getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .locals 2
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    .line 286
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    .line 287
    .local v0, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 289
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_0

    .line 290
    return-object v1

    .line 293
    .end local v1    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-nez v1, :cond_1

    .line 294
    const/4 v1, 0x0

    return-object v1

    .line 296
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    return-object v1
.end method

.method handleAppTransitionReady()V
    .locals 21

    .line 115
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 116
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 117
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 121
    :cond_0
    const-wide/16 v8, 0x20

    const-string v0, "AppTransitionReady"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 123
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0xf3d8ebc

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v10, v2, v3}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_1
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 125
    .local v11, "appTransition":Lcom/android/server/wm/AppTransition;
    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 126
    .local v0, "transit":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    invoke-static {v0}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setAppTransit(I)V

    .line 131
    const/4 v0, -0x1

    .line 138
    :cond_2
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->skipAppTransitionAnimation()Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v10, v1, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 142
    :cond_3
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 144
    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 146
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v10, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 148
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 149
    .local v1, "appCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 154
    iget-object v3, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    :cond_4
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 157
    .end local v1    # "appCount":I
    .local v12, "appCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v12, :cond_6

    .line 159
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 160
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 159
    invoke-static {v2}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 161
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_5

    .line 162
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    .line 157
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    .end local v1    # "i":I
    :cond_6
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V

    .line 174
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    move v1, v10

    :goto_2
    move v14, v1

    .line 175
    .local v14, "hasWallpaperTarget":Z
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v7, v1}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v14, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    move v1, v10

    :goto_3
    move v15, v1

    .line 177
    .local v15, "openingAppHasWallpaper":Z
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v7, v1}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v14, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    move v1, v10

    :goto_4
    move v5, v1

    .line 180
    .local v5, "closingAppHasWallpaper":Z
    invoke-virtual {v7, v0}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v0

    .line 181
    invoke-direct {v7, v0, v15, v5}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v0

    .line 188
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v3, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/AppTransitionController;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v4

    .line 190
    .local v4, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-direct {v7, v0, v4}, Lcom/android/server/wm/AppTransitionController;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 191
    .local v3, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 192
    invoke-direct {v7, v1, v10}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 193
    .local v2, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 194
    invoke-direct {v7, v1, v10}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 195
    .local v1, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 196
    invoke-direct {v7, v6, v10}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 197
    .local v6, "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 200
    .local v16, "animLp":Landroid/view/WindowManager$LayoutParams;
    sget-boolean v17, Lcom/android/server/wm/OpDisplayContentInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v17, :cond_b

    .line 202
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v17

    if-nez v17, :cond_b

    .line 203
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->handleAppTransitionReady()I

    move-result v8

    .line 204
    .local v8, "result":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    .line 205
    move v0, v8

    .line 208
    :cond_a
    sget-boolean v9, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_b

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "overrideWithRemoteAnimationIfSet: transit="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, "WindowManager"

    invoke-static {v13, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v8    # "result":I
    :cond_b
    move v8, v0

    .end local v0    # "transit":I
    .local v8, "transit":I
    invoke-direct {v7, v3, v8, v4}, Lcom/android/server/wm/AppTransitionController;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V

    .line 215
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 216
    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    move v0, v10

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v0, 0x1

    :goto_6
    move-object v9, v6

    .end local v6    # "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    .local v9, "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    move v6, v0

    .line 219
    .local v6, "voiceInteraction":Z
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 221
    :try_start_0
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v13, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v1

    .end local v1    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .local v10, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v1, p0

    move/from16 v18, v12

    move-object v12, v2

    .end local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v12, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v18, "appCount":I
    move-object v2, v0

    move-object/from16 v19, v3

    .end local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .local v19, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    move-object v3, v13

    move-object v13, v4

    .end local v4    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v13, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move v4, v8

    move/from16 v20, v5

    .end local v5    # "closingAppHasWallpaper":Z
    .local v20, "closingAppHasWallpaper":Z
    move-object/from16 v5, v16

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps()V

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps()V

    .line 225
    invoke-direct {v7, v8}, Lcom/android/server/wm/AppTransitionController;->handleChangingApps(I)V

    .line 227
    invoke-virtual {v11, v8, v12, v10, v9}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 230
    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    .line 231
    .local v0, "flags":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v11, v8, v12, v1}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;)I

    move-result v1

    .line 233
    .local v1, "layoutRedo":I
    invoke-direct {v7, v8, v0}, Lcom/android/server/wm/AppTransitionController;->handleNonAppWindowsInTransition(II)V

    .line 234
    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 235
    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v0    # "flags":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 241
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/wm/OpDisplayContentInjector;->setBooleanNotificationRemoteInputeDraft(Z)V

    .line 245
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->skipAppTransitionAnimation()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 246
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 251
    :cond_e
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V

    .line 253
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 254
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 255
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 256
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 260
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 262
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 264
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 267
    const/16 v0, 0x1c

    if-ne v8, v0, :cond_f

    .line 268
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransitionController$wKDCdmYJWN9Qk9bjArILV5j7lEY;

    invoke-direct {v2, v7}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$wKDCdmYJWN9Qk9bjArILV5j7lEY;-><init>(Lcom/android/server/wm/AppTransitionController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 273
    :cond_f
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v1, 0x1

    or-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 277
    return-void

    .line 237
    .end local v1    # "layoutRedo":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .end local v10    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v18    # "appCount":I
    .end local v19    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "closingAppHasWallpaper":Z
    .local v1, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "closingAppHasWallpaper":Z
    .local v12, "appCount":I
    :catchall_1
    move-exception v0

    move-object v10, v1

    move-object/from16 v19, v3

    move-object v13, v4

    move/from16 v20, v5

    move/from16 v18, v12

    move-object v12, v2

    .end local v1    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "closingAppHasWallpaper":Z
    .restart local v10    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .local v12, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v18    # "appCount":I
    .restart local v19    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "closingAppHasWallpaper":Z
    :goto_7
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 241
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wm/OpDisplayContentInjector;->setBooleanNotificationRemoteInputeDraft(Z)V

    .line 245
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->skipAppTransitionAnimation()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 246
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v1, v2, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 249
    :cond_10
    throw v0

    .line 119
    .end local v6    # "voiceInteraction":Z
    .end local v8    # "transit":I
    .end local v9    # "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v12    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v14    # "hasWallpaperTarget":Z
    .end local v15    # "openingAppHasWallpaper":Z
    .end local v16    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "appCount":I
    .end local v19    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "closingAppHasWallpaper":Z
    :cond_11
    :goto_8
    return-void
.end method

.method isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .locals 4
    .param p1, "transit"    # I
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 941
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 942
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 947
    :cond_0
    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x12

    if-eq p1, v1, :cond_1

    .line 951
    return v0

    .line 954
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

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 955
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 956
    .local v3, "activityTask":Lcom/android/server/wm/Task;
    if-eq v3, p2, :cond_2

    .line 957
    return v0

    .line 959
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "activityTask":Lcom/android/server/wm/Task;
    :cond_2
    goto :goto_0

    .line 960
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

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 961
    .restart local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, p2, :cond_4

    .line 962
    return v0

    .line 964
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    goto :goto_1

    .line 965
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 945
    :cond_6
    :goto_2
    return v0
.end method

.method public synthetic lambda$handleAppTransitionReady$0$AppTransitionController()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifySingleTaskDisplayDrawn(I)V

    .line 270
    return-void
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .locals 7
    .param p1, "transit"    # I

    .line 901
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    return p1

    .line 905
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 906
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

    .line 907
    .local v0, "taskOrActivity":Z
    :goto_1
    const/4 v2, 0x1

    .line 908
    .local v2, "allOpeningVisible":Z
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 909
    .local v3, "allTranslucentOpeningApps":Z
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 910
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 911
    .local v5, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-nez v6, :cond_3

    .line 912
    const/4 v2, 0x0

    .line 913
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 914
    const/4 v3, 0x0

    .line 909
    .end local v5    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 918
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    .line 919
    .local v4, "allTranslucentClosingApps":Z
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_6

    .line 920
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 921
    const/4 v4, 0x0

    .line 922
    goto :goto_4

    .line 919
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 926
    .end local v5    # "i":I
    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 927
    const/16 v1, 0x19

    return v1

    .line 929
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 930
    const/16 v1, 0x18

    return v1

    .line 932
    :cond_8
    return p1
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 0
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 108
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 109
    return-void
.end method
