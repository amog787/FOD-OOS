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

    .line 2850
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "x1"    # Lcom/android/server/pm/ShortcutService$1;

    .line 2850
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

    .line 2981
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const-string/jumbo v4, "packageName"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2982
    const-string/jumbo v4, "shortcutId"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2984
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2985
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v12, p1

    invoke-virtual {v4, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2987
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    .line 2988
    invoke-virtual {v4, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 2989
    .local v4, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v13, 0x0

    if-nez v4, :cond_0

    .line 2990
    return-object v13

    .line 2993
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v5

    .line 2994
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

    .line 2997
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

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .locals 26
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p6, "changedSince"    # J
    .param p8, "componentName"    # Landroid/content/ComponentName;
    .param p9, "queryFlags"    # I
    .param p10, "userId"    # I
    .param p12, "cloneFlag"    # I
    .param p13, "callingPid"    # I
    .param p14, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;III)V"
        }
    .end annotation

    .line 2901
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    .local p11, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p9

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v9, v4

    goto :goto_0

    .line 2902
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v9, v5

    :goto_0
    nop

    .line 2903
    .local v9, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    move-object v10, v4

    goto :goto_1

    .line 2904
    :cond_1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v10, v4

    :goto_1
    nop

    .line 2906
    .local v10, "locIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/LocusId;>;"
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v5, p10

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    .line 2907
    .local v4, "user":Lcom/android/server/pm/ShortcutUser;
    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v24

    .line 2908
    .local v24, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v24, :cond_2

    .line 2909
    return-void

    .line 2911
    :cond_2
    and-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    move v12, v8

    goto :goto_2

    :cond_3
    move v12, v7

    .line 2912
    .local v12, "matchDynamic":Z
    :goto_2
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_4

    move v13, v8

    goto :goto_3

    :cond_4
    move v13, v7

    .line 2913
    .local v13, "matchPinned":Z
    :goto_3
    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_5

    move v15, v8

    goto :goto_4

    :cond_5
    move v15, v7

    .line 2914
    .local v15, "matchManifest":Z
    :goto_4
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_6

    move/from16 v16, v8

    goto :goto_5

    :cond_6
    move/from16 v16, v7

    .line 2916
    .local v16, "matchCached":Z
    :goto_5
    iget-object v6, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2917
    move/from16 v14, p1

    move-object/from16 v0, p2

    move/from16 v1, p13

    move/from16 v2, p14

    invoke-virtual {v6, v0, v14, v1, v2}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v25

    .line 2919
    .local v25, "canAccessAllShortcuts":Z
    if-eqz v25, :cond_7

    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_7

    move v7, v8

    :cond_7
    move v14, v7

    .line 2923
    .local v14, "getPinnedByAnyLauncher":Z
    new-instance v19, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$glaS4uJCas9aUmjUCxlz_EN5nmQ;

    move-object/from16 v6, v19

    move-wide/from16 v7, p6

    move-object/from16 v11, p8

    invoke-direct/range {v6 .. v16}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$glaS4uJCas9aUmjUCxlz_EN5nmQ;-><init>(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZ)V

    move-object/from16 v17, v24

    move-object/from16 v18, p11

    move/from16 v20, p12

    move-object/from16 v21, p2

    move/from16 v22, p1

    move/from16 v23, v14

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 2954
    return-void
.end method

.method static synthetic lambda$getShortcutInfoLocked$2(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2995
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getShortcutsInnerLocked$1(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZLandroid/content/pm/ShortcutInfo;)Z
    .locals 3
    .param p0, "changedSince"    # J
    .param p2, "ids"    # Landroid/util/ArraySet;
    .param p3, "locIds"    # Landroid/util/ArraySet;
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "matchDynamic"    # Z
    .param p6, "matchPinned"    # Z
    .param p7, "getPinnedByAnyLauncher"    # Z
    .param p8, "matchManifest"    # Z
    .param p9, "matchCached"    # Z
    .param p10, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2925
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    cmp-long v0, v0, p0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2926
    return v1

    .line 2928
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2929
    return v1

    .line 2931
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2932
    return v1

    .line 2934
    :cond_2
    if-eqz p4, :cond_3

    .line 2935
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2936
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2937
    return v1

    .line 2940
    :cond_3
    const/4 v0, 0x1

    if-eqz p5, :cond_4

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2941
    return v0

    .line 2943
    :cond_4
    if-nez p6, :cond_5

    if-eqz p7, :cond_6

    :cond_5
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2944
    return v0

    .line 2946
    :cond_6
    if-eqz p8, :cond_7

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2947
    return v0

    .line 2949
    :cond_7
    if-eqz p9, :cond_8

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2950
    return v0

    .line 2952
    :cond_8
    return v1
.end method

.method static synthetic lambda$pinShortcuts$3(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 3024
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3025
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3026
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3024
    :goto_0
    return v0
.end method

.method private updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V
    .locals 17
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "cacheFlags"    # I
    .param p7, "doCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZ)V"
        }
    .end annotation

    .line 3087
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    const-string/jumbo v0, "packageName"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3088
    const-string/jumbo v0, "shortcutIds"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3089
    const v0, 0x40004000    # 2.0039062f

    and-int/2addr v0, v5

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v8, "invalid cacheFlags"

    invoke-static {v0, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3092
    const/4 v8, 0x0

    .line 3093
    .local v8, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v9, 0x0

    .line 3095
    .local v9, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3096
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3097
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v11, p1

    :try_start_1
    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3099
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    .line 3100
    .local v0, "idSize":I
    iget-object v12, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v12, v4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v12

    .line 3101
    invoke-virtual {v12, v2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v12

    .line 3102
    .local v12, "sp":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_c

    if-nez v12, :cond_1

    move/from16 v16, v0

    goto/16 :goto_5

    .line 3106
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v0, :cond_b

    .line 3107
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3108
    .local v14, "id":Ljava/lang/String;
    invoke-virtual {v12, v14}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v15

    .line 3109
    .local v15, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v15, :cond_a

    invoke-virtual {v15, v5}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v7

    if-ne v6, v7, :cond_2

    .line 3110
    move/from16 v16, v0

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 3113
    :cond_2
    if-eqz v6, :cond_5

    .line 3114
    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3115
    invoke-virtual {v15, v5}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 3116
    if-nez v8, :cond_3

    .line 3117
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "idSize":I
    .local v16, "idSize":I
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v7

    move-object v8, v0

    .end local v8    # "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v0, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_2

    .line 3116
    .end local v16    # "idSize":I
    .local v0, "idSize":I
    .restart local v8    # "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_3
    move/from16 v16, v0

    .line 3119
    .end local v0    # "idSize":I
    .restart local v16    # "idSize":I
    :goto_2
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_4

    .line 3121
    .end local v16    # "idSize":I
    .restart local v0    # "idSize":I
    :cond_4
    move/from16 v16, v0

    .end local v0    # "idSize":I
    .restart local v16    # "idSize":I
    const-string v0, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only long lived shortcuts can get cached. Ignoring id "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3121
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto :goto_4

    .line 3125
    .end local v16    # "idSize":I
    .restart local v0    # "idSize":I
    :cond_5
    move/from16 v16, v0

    .end local v0    # "idSize":I
    .restart local v16    # "idSize":I
    const/4 v0, 0x0

    .line 3126
    .local v0, "removed":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v15, v5}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 3127
    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3128
    const/4 v3, 0x1

    invoke-virtual {v12, v14, v3}, Lcom/android/server/pm/ShortcutPackage;->deleteLongLivedWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    move-object v0, v7

    .line 3130
    :cond_6
    if-eqz v0, :cond_8

    .line 3131
    if-nez v9, :cond_7

    .line 3132
    new-instance v3, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v3

    .line 3134
    :cond_7
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_4

    .line 3136
    :cond_8
    if-nez v8, :cond_9

    .line 3137
    new-instance v3, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v3

    .end local v8    # "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v3, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_3

    .line 3136
    .end local v3    # "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v8    # "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_9
    const/4 v7, 0x1

    .line 3139
    :goto_3
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3109
    .end local v16    # "idSize":I
    .local v0, "idSize":I
    :cond_a
    move/from16 v16, v0

    const/4 v7, 0x1

    .line 3106
    .end local v0    # "idSize":I
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v16    # "idSize":I
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p4

    move/from16 v0, v16

    goto/16 :goto_1

    .end local v16    # "idSize":I
    .restart local v0    # "idSize":I
    :cond_b
    move/from16 v16, v0

    .line 3143
    .end local v0    # "idSize":I
    .end local v12    # "sp":Lcom/android/server/pm/ShortcutPackage;
    .end local v13    # "i":I
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3144
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 3146
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3147
    return-void

    .line 3102
    .restart local v0    # "idSize":I
    .restart local v12    # "sp":Lcom/android/server/pm/ShortcutPackage;
    :cond_c
    move/from16 v16, v0

    .line 3103
    .end local v0    # "idSize":I
    .restart local v16    # "idSize":I
    :goto_5
    :try_start_2
    monitor-exit v10

    return-void

    .line 3143
    .end local v12    # "sp":Lcom/android/server/pm/ShortcutPackage;
    .end local v16    # "idSize":I
    :catchall_0
    move-exception v0

    move/from16 v11, p1

    :goto_6
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    .line 3184
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$500(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3186
    monitor-exit v0

    .line 3187
    return-void

    .line 3186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    .line 3192
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$600(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3194
    monitor-exit v0

    .line 3195
    return-void

    .line 3194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .locals 8
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "cacheFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 3052
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V

    .line 3054
    return-void
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

    .line 3155
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    const-string/jumbo v0, "packageName can\'t be empty"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3156
    const-string/jumbo v0, "shortcutId can\'t be empty"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3158
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 3159
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3160
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3162
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v10, v12, v9}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 3163
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3165
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3166
    move/from16 v15, p6

    move/from16 v7, p7

    :try_start_1
    invoke-virtual {v0, v10, v9, v15, v7}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    .line 3170
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

    .line 3174
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

    .line 3178
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v2

    monitor-exit v14

    return-object v2

    .line 3175
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

    .line 3176
    const/4 v2, 0x0

    monitor-exit v14

    return-object v2

    .line 3179
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

.method public getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/IntentFilter;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 3067
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3068
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 3067
    return-object v0
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3227
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3228
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3229
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3231
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3233
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3235
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3236
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3238
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3239
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3240
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3241
    monitor-exit v0

    return-object v2

    .line 3244
    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 3245
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 3248
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->access$700(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/pm/ShortcutBitmapSaver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutBitmapSaver;->getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v4

    .line 3249
    .local v4, "path":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 3250
    const-string v5, "ShortcutService"

    const-string/jumbo v6, "null bitmap detected in getShortcutIconFd()"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 3254
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

    .line 3257
    :catch_0
    move-exception v5

    .line 3258
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

    .line 3259
    monitor-exit v0

    return-object v2

    .line 3246
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v2

    .line 3261
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

    .line 3200
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3201
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3202
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3204
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3206
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3208
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3209
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3211
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3212
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3213
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3214
    monitor-exit v0

    return v2

    .line 3217
    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 3218
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3219
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    .line 3218
    return v2

    .line 3220
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getShortcutIconUri(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 21
    .param p1, "launcherUserId"    # I
    .param p2, "launcherPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3267
    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    const-string/jumbo v0, "launcherPackage"

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3268
    const-string/jumbo v0, "packageName"

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3269
    const-string/jumbo v0, "shortcutId"

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3271
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 3272
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3273
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3275
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v11, v14, v10}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 3276
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3278
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 3279
    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    move-object v9, v0

    .line 3280
    .local v9, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v0, 0x0

    if-nez v9, :cond_0

    .line 3281
    monitor-exit v15

    return-object v0

    .line 3284
    :cond_0
    invoke-virtual {v9, v13}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    move-object/from16 v16, v2

    .line 3285
    .local v16, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v20, v9

    goto/16 :goto_3

    .line 3288
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 3289
    .local v8, "uri":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 3290
    const-string v2, "ShortcutService"

    const-string/jumbo v3, "null uri detected in getShortcutIconUri()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    monitor-exit v15

    return-object v0

    .line 3294
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-wide/from16 v17, v2

    .line 3296
    .local v17, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$800(Lcom/android/server/pm/ShortcutService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v12, v2, v14}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v4

    .line 3301
    .local v4, "packageUid":I
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$1000(Lcom/android/server/pm/ShortcutService;)Landroid/app/IUriGrantsManager;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$900(Lcom/android/server/pm/ShortcutService;)Landroid/os/IBinder;

    move-result-object v3

    .line 3302
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x1

    .line 3301
    move-object/from16 v5, p2

    move-object/from16 v19, v8

    .end local v8    # "uri":Ljava/lang/String;
    .local v19, "uri":Ljava/lang/String;
    move/from16 v8, p5

    move-object/from16 v20, v9

    .end local v9    # "p":Lcom/android/server/pm/ShortcutPackage;
    .local v20, "p":Lcom/android/server/pm/ShortcutPackage;
    move/from16 v9, p1

    :try_start_2
    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3309
    .end local v4    # "packageUid":I
    :try_start_3
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3310
    move-object/from16 v8, v19

    goto :goto_1

    .line 3309
    :catchall_0
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_2

    .line 3304
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3309
    .end local v19    # "uri":Ljava/lang/String;
    .end local v20    # "p":Lcom/android/server/pm/ShortcutPackage;
    .restart local v8    # "uri":Ljava/lang/String;
    .restart local v9    # "p":Lcom/android/server/pm/ShortcutPackage;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v9

    move-object v4, v8

    .end local v8    # "uri":Ljava/lang/String;
    .end local v9    # "p":Lcom/android/server/pm/ShortcutPackage;
    .restart local v19    # "uri":Ljava/lang/String;
    .restart local v20    # "p":Lcom/android/server/pm/ShortcutPackage;
    goto :goto_2

    .line 3304
    .end local v19    # "uri":Ljava/lang/String;
    .end local v20    # "p":Lcom/android/server/pm/ShortcutPackage;
    .restart local v8    # "uri":Ljava/lang/String;
    .restart local v9    # "p":Lcom/android/server/pm/ShortcutPackage;
    :catch_1
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 3305
    .end local v8    # "uri":Ljava/lang/String;
    .end local v9    # "p":Lcom/android/server/pm/ShortcutPackage;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "uri":Ljava/lang/String;
    .restart local v20    # "p":Lcom/android/server/pm/ShortcutPackage;
    :goto_0
    :try_start_4
    const-string v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grant uri access to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v4, v19

    .end local v19    # "uri":Ljava/lang/String;
    .local v4, "uri":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3307
    const/4 v8, 0x0

    .line 3309
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "uri":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/lang/String;
    :try_start_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3310
    nop

    .line 3311
    :goto_1
    monitor-exit v15

    return-object v8

    .line 3309
    .end local v8    # "uri":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v4    # "uri":Ljava/lang/String;
    .restart local v19    # "uri":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v4, v19

    .end local v19    # "uri":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/lang/String;
    :goto_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3310
    nop

    .end local p0    # "this":Lcom/android/server/pm/ShortcutService$LocalService;
    .end local p1    # "launcherUserId":I
    .end local p2    # "launcherPackage":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "shortcutId":Ljava/lang/String;
    .end local p5    # "userId":I
    throw v0

    .line 3285
    .end local v4    # "uri":Ljava/lang/String;
    .end local v17    # "token":J
    .end local v20    # "p":Lcom/android/server/pm/ShortcutPackage;
    .restart local v9    # "p":Lcom/android/server/pm/ShortcutPackage;
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService$LocalService;
    .restart local p1    # "launcherUserId":I
    .restart local p2    # "launcherPackage":Ljava/lang/String;
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "shortcutId":Ljava/lang/String;
    .restart local p5    # "userId":I
    :cond_3
    move-object/from16 v20, v9

    .line 3286
    .end local v9    # "p":Lcom/android/server/pm/ShortcutPackage;
    .restart local v20    # "p":Lcom/android/server/pm/ShortcutPackage;
    :goto_3
    monitor-exit v15

    return-object v0

    .line 3312
    .end local v16    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v20    # "p":Lcom/android/server/pm/ShortcutPackage;
    :catchall_4
    move-exception v0

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;
    .locals 32
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "changedSince"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p8, "componentName"    # Landroid/content/ComponentName;
    .param p9, "queryFlags"    # I
    .param p10, "userId"    # I
    .param p11, "callingPid"    # I
    .param p12, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2858
    .local p6, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v12, p10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2860
    .local v11, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v29, v0

    .line 2862
    .local v29, "cloneKeyFieldOnly":Z
    if-eqz v29, :cond_1

    const/4 v0, 0x4

    move v13, v0

    goto :goto_1

    .line 2863
    :cond_1
    const/16 v0, 0x1b

    move v13, v0

    :goto_1
    nop

    .line 2864
    .local v13, "cloneFlag":I
    if-nez p5, :cond_2

    .line 2865
    const/4 v0, 0x0

    move-object/from16 v30, v0

    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 2864
    .end local v0    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v30, p6

    .line 2868
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 2869
    :try_start_0
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2870
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2872
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v10, p2

    invoke-virtual {v0, v10, v12, v14}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 2873
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2875
    if-eqz p5, :cond_3

    .line 2876
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, v30

    move-object/from16 v6, p7

    move-wide/from16 v7, p3

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 p6, v11

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .local p6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move/from16 v11, p10

    move-object/from16 v12, p6

    move/from16 v14, p11

    move/from16 v15, p12

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move/from16 v2, p10

    goto :goto_3

    .line 2890
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v3, p6

    move/from16 v2, p10

    goto :goto_5

    .line 2881
    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :cond_3
    move-object/from16 p6, v11

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v18, v30

    .line 2882
    .local v18, "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v19, p7

    .line 2883
    .local v19, "locusIdsF":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v2, p10

    :try_start_3
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    new-instance v3, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$OwXAUkceFTQAGpPzTbihl14wvP4;

    move-object v14, v3

    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, p2

    move-wide/from16 v20, p3

    move-object/from16 v22, p8

    move/from16 v23, p9

    move/from16 v24, p10

    move-object/from16 v25, p6

    move/from16 v26, v13

    move/from16 v27, p11

    move/from16 v28, p12

    invoke-direct/range {v14 .. v28}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$OwXAUkceFTQAGpPzTbihl14wvP4;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2890
    .end local v18    # "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "locusIdsF":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    :goto_3
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2891
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v3, p6

    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->access$300(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2890
    .end local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v3, p6

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v3, p6

    move/from16 v2, p10

    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_4
    goto :goto_5

    .end local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_3
    move-exception v0

    move-object v3, v11

    move v2, v12

    move-object v1, v15

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_5
    :try_start_4
    monitor-exit v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;II)Z
    .locals 1
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 3318
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public isForegroundDefaultLauncher(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 3343
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3345
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3346
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 3347
    .local v1, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3348
    return v2

    .line 3350
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3351
    return v2

    .line 3353
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3354
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3355
    monitor-exit v3

    return v2

    .line 3357
    :cond_2
    monitor-exit v3

    .line 3358
    const/4 v2, 0x1

    return v2

    .line 3357
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

    .line 2959
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2960
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2962
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2963
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2964
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2966
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2967
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2969
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 2972
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

    .line 2973
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

    .line 3338
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isRequestPinItemSupported(II)Z

    move-result v0

    return v0
.end method

.method public isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z
    .locals 8
    .param p1, "callingUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "filter"    # Landroid/content/IntentFilter;

    .line 3075
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3076
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3077
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3079
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService;->isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getShortcuts$0$ShortcutService$LocalService(ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V
    .locals 15
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "shortcutIdsF"    # Ljava/util/List;
    .param p4, "locusIdsF"    # Ljava/util/List;
    .param p5, "changedSince"    # J
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .param p10, "ret"    # Ljava/util/ArrayList;
    .param p11, "cloneFlag"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2884
    nop

    .line 2885
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2884
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    .line 2888
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 17
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

    .line 3005
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    const-string/jumbo v0, "packageName"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3006
    const-string/jumbo v0, "shortcutIds"

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3008
    const/4 v13, 0x0

    .line 3009
    .local v13, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v2, 0x0

    .line 3011
    .local v2, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 3012
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3013
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3015
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3016
    move-object/from16 v15, p2

    :try_start_1
    invoke-virtual {v0, v15, v12, v9}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 3017
    .local v0, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3019
    iget-object v3, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v12}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    .line 3020
    invoke-virtual {v3, v10}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    move-object v8, v3

    .line 3021
    .local v8, "sp":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v8, :cond_0

    .line 3023
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3024
    .end local v2    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v3, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_2
    sget-object v4, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY;

    const/4 v5, 0x4

    const/16 v16, 0x0

    move-object v2, v8

    move-object/from16 v6, p2

    move/from16 v7, p1

    move-object v9, v8

    .end local v8    # "sp":Lcom/android/server/pm/ShortcutPackage;
    .local v9, "sp":Lcom/android/server/pm/ShortcutPackage;
    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 3041
    .end local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v9    # "sp":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 3021
    .end local v3    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .restart local v2    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v8    # "sp":Lcom/android/server/pm/ShortcutPackage;
    :cond_0
    move-object v9, v8

    .line 3030
    .end local v8    # "sp":Lcom/android/server/pm/ShortcutPackage;
    .restart local v9    # "sp":Lcom/android/server/pm/ShortcutPackage;
    :goto_0
    :try_start_3
    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v3

    .line 3032
    .local v3, "oldPinnedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v0, v12, v10, v11, v4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    .line 3034
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 3035
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 3036
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3035
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3039
    .end local v4    # "i":I
    :cond_1
    iget-object v4, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v11}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v3, v5, v2, v9}, Lcom/android/server/pm/ShortcutService;->access$400(Lcom/android/server/pm/ShortcutService;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 3041
    .end local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v3    # "oldPinnedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "sp":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3043
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v10, v12, v13, v2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 3045
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3046
    return-void

    .line 3041
    :catchall_1
    move-exception v0

    move-object/from16 v15, p2

    :goto_2
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "resultIntent"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I

    .line 3332
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3333
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService;->access$1100(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3325
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3326
    return-void
.end method

.method public uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .locals 8
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "cacheFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 3060
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V

    .line 3062
    return-void
.end method
