.class Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 2563
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "x1"    # Lcom/android/server/pm/ShortcutService$1;

    .line 2563
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .locals 15
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "getPinnedByAnyLauncher"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ShortcutService.this.mLock"
        }
    .end annotation

    .line 2683
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const-string/jumbo v4, "packageName"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2684
    const-string/jumbo v4, "shortcutId"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2686
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2687
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v12, p1

    invoke-virtual {v4, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2689
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    .line 2690
    invoke-virtual {v4, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 2691
    .local v4, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v13, 0x0

    if-nez v4, :cond_0

    .line 2692
    return-object v13

    .line 2695
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v5

    .line 2696
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v7, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;

    invoke-direct {v7, v2}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v5, v4

    move-object v6, v14

    move-object/from16 v9, p2

    move/from16 v10, p1

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 2699
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    :goto_0
    return-object v13
.end method

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .locals 24
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "changedSince"    # J
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .param p11, "cloneFlag"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ShortcutService.this.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;III)V"
        }
    .end annotation

    .line 2612
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    if-nez v1, :cond_0

    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_0

    .line 2613
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v7, v3

    :goto_0
    nop

    .line 2615
    .local v7, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v13, p9

    invoke-virtual {v3, v13}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    .line 2616
    .local v3, "user":Lcom/android/server/pm/ShortcutUser;
    move-object/from16 v14, p3

    invoke-virtual {v3, v14}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v22

    .line 2617
    .local v22, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v22, :cond_1

    .line 2618
    return-void

    .line 2620
    :cond_1
    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    move v9, v6

    goto :goto_1

    :cond_2
    move v9, v5

    .line 2621
    .local v9, "matchDynamic":Z
    :goto_1
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_3

    move v10, v6

    goto :goto_2

    :cond_3
    move v10, v5

    .line 2622
    .local v10, "matchPinned":Z
    :goto_2
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_4

    move v12, v6

    goto :goto_3

    :cond_4
    move v12, v5

    .line 2624
    .local v12, "matchManifest":Z
    :goto_3
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2625
    move/from16 v15, p1

    move-object/from16 v8, p2

    move/from16 v11, p12

    move/from16 v0, p13

    invoke-virtual {v4, v8, v15, v11, v0}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v23

    .line 2627
    .local v23, "canAccessAllShortcuts":Z
    if-eqz v23, :cond_5

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    move v11, v5

    .line 2631
    .local v11, "getPinnedByAnyLauncher":Z
    new-instance v17, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;

    move-object/from16 v4, v17

    move-wide/from16 v5, p5

    move-object/from16 v8, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;-><init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;ZZZZ)V

    move-object/from16 v15, v22

    move-object/from16 v16, p10

    move/from16 v18, p11

    move-object/from16 v19, p2

    move/from16 v20, p1

    move/from16 v21, v11

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 2656
    return-void
.end method

.method static synthetic lambda$getShortcutInfoLocked$2(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2697
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getShortcutsInnerLocked$1(JLandroid/util/ArraySet;Landroid/content/ComponentName;ZZZZLandroid/content/pm/ShortcutInfo;)Z
    .locals 3
    .param p0, "changedSince"    # J
    .param p2, "ids"    # Landroid/util/ArraySet;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "matchDynamic"    # Z
    .param p5, "matchPinned"    # Z
    .param p6, "getPinnedByAnyLauncher"    # Z
    .param p7, "matchManifest"    # Z
    .param p8, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2633
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    cmp-long v0, v0, p0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2634
    return v1

    .line 2636
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2637
    return v1

    .line 2639
    :cond_1
    if-eqz p3, :cond_2

    .line 2640
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2641
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2642
    return v1

    .line 2645
    :cond_2
    const/4 v0, 0x1

    if-eqz p4, :cond_3

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2646
    return v0

    .line 2648
    :cond_3
    if-nez p5, :cond_4

    if-eqz p6, :cond_5

    :cond_4
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2649
    return v0

    .line 2651
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2652
    return v0

    .line 2654
    :cond_6
    return v1
.end method


# virtual methods
.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    .line 2760
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2761
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$400(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    monitor-exit v0

    .line 2763
    return-void

    .line 2762
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;
    .locals 16
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I

    .line 2731
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    const-string/jumbo v0, "packageName can\'t be empty"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2732
    const-string/jumbo v0, "shortcutId can\'t be empty"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2734
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2735
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2736
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2738
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v10, v12, v9}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 2739
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2741
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2742
    move/from16 v15, p6

    move/from16 v7, p7

    :try_start_1
    invoke-virtual {v0, v10, v9, v15, v7}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    .line 2746
    .local v0, "getPinnedByAnyLauncher":Z
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 2750
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2754
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v2

    monitor-exit v14

    return-object v2

    .line 2751
    :cond_1
    :goto_0
    const-string v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist or disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const/4 v2, 0x0

    monitor-exit v14

    return-object v2

    .line 2755
    .end local v0    # "getPinnedByAnyLauncher":Z
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v0

    move/from16 v15, p6

    :goto_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2795
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2796
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2800
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2801
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2803
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2804
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2806
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2807
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2808
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2809
    monitor-exit v0

    return-object v2

    .line 2812
    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 2813
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 2816
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->access$500(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/pm/ShortcutBitmapSaver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutBitmapSaver;->getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v4

    .line 2817
    .local v4, "path":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2818
    const-string v5, "ShortcutService"

    const-string/jumbo v6, "null bitmap detected in getShortcutIconFd()"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 2822
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 2825
    :catch_0
    move-exception v5

    .line 2826
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon file not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    monitor-exit v0

    return-object v2

    .line 2814
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v2

    .line 2829
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2768
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2772
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2773
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2774
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2776
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2777
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2779
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2780
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2781
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2782
    monitor-exit v0

    return v2

    .line 2785
    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 2786
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2787
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    .line 2786
    return v2

    .line 2788
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;
    .locals 30
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "changedSince"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2571
    .local p6, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2573
    .local v11, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v27, v0

    .line 2575
    .local v27, "cloneKeyFieldOnly":Z
    if-eqz v27, :cond_1

    const/4 v0, 0x4

    move v12, v0

    goto :goto_1

    .line 2576
    :cond_1
    const/16 v0, 0x1b

    move v12, v0

    :goto_1
    nop

    .line 2577
    .local v12, "cloneFlag":I
    if-nez p5, :cond_2

    .line 2578
    const/4 v0, 0x0

    move-object/from16 v28, v0

    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 2577
    .end local v0    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v28, p6

    .line 2581
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v29

    monitor-enter v29

    .line 2582
    :try_start_0
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2583
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2585
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v10, p2

    invoke-virtual {v0, v10, v13, v14}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 2586
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2588
    if-eqz p5, :cond_3

    .line 2589
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, v28

    move-wide/from16 v6, p3

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 p6, v11

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .local p6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move/from16 v13, p10

    move/from16 v14, p11

    :try_start_1
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v1, p9

    move-object v3, v15

    goto :goto_3

    .line 2602
    :catchall_0
    move-exception v0

    move-object/from16 v2, p6

    move/from16 v1, p9

    move-object v3, v15

    goto :goto_6

    .line 2594
    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :cond_3
    move-object/from16 p6, v11

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v17, v28

    .line 2595
    .local v17, "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v1, p9

    :try_start_3
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v13, v2

    move-object/from16 v14, p0

    move-object v3, v15

    move/from16 v15, p1

    move-object/from16 v16, p2

    move-wide/from16 v18, p3

    move-object/from16 v20, p7

    move/from16 v21, p8

    move/from16 v22, p9

    move-object/from16 v23, p6

    move/from16 v24, v12

    move/from16 v25, p10

    move/from16 v26, p11

    :try_start_4
    invoke-direct/range {v13 .. v26}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2602
    .end local v17    # "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    monitor-exit v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2603
    iget-object v0, v3, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v2, p6

    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {v0, v2}, Lcom/android/server/pm/ShortcutService;->access$300(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2602
    .end local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v2, p6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v2, p6

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v2, p6

    move/from16 v1, p9

    :goto_4
    move-object v3, v15

    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_5
    goto :goto_6

    .end local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_4
    move-exception v0

    move-object v2, v11

    move v1, v13

    move-object v3, v15

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_6
    :try_start_5
    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_6
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;II)Z
    .locals 1
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 2835
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public isForegroundDefaultLauncher(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 2860
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2863
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 2864
    .local v1, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2865
    return v2

    .line 2867
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2868
    return v2

    .line 2870
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2871
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2872
    monitor-exit v3

    return v2

    .line 2874
    :cond_2
    monitor-exit v3

    .line 2875
    const/4 v2, 0x1

    return v2

    .line 2874
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2661
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2662
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2664
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2665
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2666
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2668
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2669
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2671
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 2674
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 2675
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRequestPinItemSupported(II)Z
    .locals 1
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I

    .line 2855
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isRequestPinItemSupported(II)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getShortcuts$0$ShortcutService$LocalService(ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V
    .locals 14
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "shortcutIdsF"    # Ljava/util/List;
    .param p4, "changedSince"    # J
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "queryFlags"    # I
    .param p8, "userId"    # I
    .param p9, "ret"    # Ljava/util/ArrayList;
    .param p10, "cloneFlag"    # I
    .param p11, "callingPid"    # I
    .param p12, "callingUid"    # I
    .param p13, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2596
    nop

    .line 2597
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2596
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    .line 2600
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2707
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2708
    const-string/jumbo v0, "shortcutIds"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2711
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2712
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2714
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2715
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2716
    .local v1, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2718
    const/4 v2, 0x0

    invoke-virtual {v1, p5, p3, p4, v2}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    .line 2719
    .end local v1    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2720
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2722
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2723
    return-void

    .line 2719
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "resultIntent"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I

    .line 2849
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService;->access$600(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2842
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2843
    return-void
.end method
