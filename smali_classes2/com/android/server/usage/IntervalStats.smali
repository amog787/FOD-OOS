.class public Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/IntervalStats$EventTracker;
    }
.end annotation


# static fields
.field public static final CURRENT_MAJOR_VERSION:I = 0x1

.field public static final CURRENT_MINOR_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IntervalStats"


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/Configuration;",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public final events:Landroid/app/usage/EventList;

.field public final interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public lastTimeSaved:J

.field public final mStringCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public majorVersion:I

.field public minorVersion:I

.field public final nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final packageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field public final packageStatsObfuscated:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 65
    iput v0, p0, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 69
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 70
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 71
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 72
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 78
    new-instance v0, Landroid/app/usage/EventList;

    invoke-direct {v0}, Landroid/app/usage/EventList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 125
    return-void
.end method

.method private deobfuscateEvents(Lcom/android/server/usage/PackagesTokenData;)Z
    .locals 9
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "dataOmitted":Z
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_9

    .line 515
    iget-object v2, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 516
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    iget v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 517
    .local v3, "packageToken":I
    invoke-virtual {p1, v3}, Lcom/android/server/usage/PackagesTokenData;->getPackageString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 518
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v5, "IntervalStats"

    if-nez v4, :cond_0

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse event package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v4, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 521
    const/4 v0, 0x1

    .line 522
    goto/16 :goto_1

    .line 525
    :cond_0
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v6, -0x1

    const-string v7, " for package "

    if-eq v4, v6, :cond_1

    .line 526
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 527
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse class "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq v4, v6, :cond_2

    .line 533
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 535
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse task root package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v4, v6, :cond_3

    .line 541
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 543
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse task root class "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_3
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_7

    const/16 v6, 0x8

    if-eq v4, v6, :cond_6

    const/16 v6, 0xc

    if-eq v4, v6, :cond_5

    const/16 v6, 0x1e

    if-eq v4, v6, :cond_4

    goto/16 :goto_1

    .line 578
    :cond_4
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 579
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse locus "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v4, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 583
    const/4 v0, 0x1

    .line 584
    goto :goto_1

    .line 566
    :cond_5
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 568
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse notification channel "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v4, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 573
    const/4 v0, 0x1

    .line 574
    goto :goto_1

    .line 555
    :cond_6
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 557
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse shortcut "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v4, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 561
    const/4 v0, 0x1

    .line 562
    goto :goto_1

    .line 550
    :cond_7
    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v4, :cond_8

    .line 551
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 514
    .end local v2    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v3    # "packageToken":I
    :cond_8
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_9
    return v0
.end method

.method private deobfuscateUsageStats(Lcom/android/server/usage/PackagesTokenData;)Z
    .locals 20
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 462
    .local v2, "dataOmitted":Z
    iget-object v3, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 463
    .local v3, "usageStatsSize":I
    const/4 v4, 0x0

    .local v4, "statsIndex":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 464
    iget-object v5, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 465
    .local v5, "packageToken":I
    iget-object v6, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    .line 466
    .local v6, "usageStats":Landroid/app/usage/UsageStats;
    invoke-virtual {v1, v5}, Lcom/android/server/usage/PackagesTokenData;->getPackageString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 467
    iget-object v7, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    const-string v8, "IntervalStats"

    if-nez v7, :cond_0

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse usage stats package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v2, 0x1

    .line 470
    move/from16 v17, v3

    goto/16 :goto_5

    .line 474
    :cond_0
    iget-object v7, v6, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 475
    .local v7, "chooserActionsSize":I
    const/4 v9, 0x0

    .local v9, "actionIndex":I
    :goto_1
    if-ge v9, v7, :cond_4

    .line 476
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 477
    .local v10, "categoryCountsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v11, v6, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 478
    .local v11, "actionToken":I
    invoke-virtual {v1, v5, v11}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, "action":Ljava/lang/String;
    const-string v13, " for package "

    if-nez v12, :cond_1

    .line 480
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to parse chooser action "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move/from16 v17, v3

    move/from16 v16, v7

    goto :goto_4

    .line 484
    :cond_1
    iget-object v14, v6, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 485
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseIntArray;

    .line 486
    .local v14, "categoryCounts":Landroid/util/SparseIntArray;
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    .line 487
    .local v15, "categoriesSize":I
    const/16 v16, 0x0

    move/from16 v17, v3

    move/from16 v3, v16

    .local v3, "categoryIndex":I
    .local v17, "usageStatsSize":I
    :goto_2
    if-ge v3, v15, :cond_3

    .line 488
    move/from16 v16, v7

    .end local v7    # "chooserActionsSize":I
    .local v16, "chooserActionsSize":I
    invoke-virtual {v14, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 489
    .local v7, "categoryToken":I
    move/from16 v18, v11

    .end local v11    # "actionToken":I
    .local v18, "actionToken":I
    invoke-virtual {v1, v5, v7}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v11

    .line 491
    .local v11, "category":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v15

    .end local v15    # "categoriesSize":I
    .local v19, "categoriesSize":I
    const-string v15, "Unable to parse chooser category "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    goto :goto_3

    .line 496
    .end local v19    # "categoriesSize":I
    .restart local v15    # "categoriesSize":I
    :cond_2
    move/from16 v19, v15

    .end local v15    # "categoriesSize":I
    .restart local v19    # "categoriesSize":I
    invoke-virtual {v14, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .end local v7    # "categoryToken":I
    .end local v11    # "category":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v7, v16

    move/from16 v11, v18

    move/from16 v15, v19

    goto :goto_2

    .end local v16    # "chooserActionsSize":I
    .end local v18    # "actionToken":I
    .end local v19    # "categoriesSize":I
    .local v7, "chooserActionsSize":I
    .local v11, "actionToken":I
    .restart local v15    # "categoriesSize":I
    :cond_3
    move/from16 v16, v7

    move/from16 v18, v11

    move/from16 v19, v15

    .line 498
    .end local v3    # "categoryIndex":I
    .end local v7    # "chooserActionsSize":I
    .end local v11    # "actionToken":I
    .end local v15    # "categoriesSize":I
    .restart local v16    # "chooserActionsSize":I
    .restart local v18    # "actionToken":I
    .restart local v19    # "categoriesSize":I
    iget-object v1, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .end local v10    # "categoryCountsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "action":Ljava/lang/String;
    .end local v14    # "categoryCounts":Landroid/util/SparseIntArray;
    .end local v18    # "actionToken":I
    .end local v19    # "categoriesSize":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move/from16 v7, v16

    move/from16 v3, v17

    goto/16 :goto_1

    .end local v16    # "chooserActionsSize":I
    .end local v17    # "usageStatsSize":I
    .local v3, "usageStatsSize":I
    .restart local v7    # "chooserActionsSize":I
    :cond_4
    move/from16 v17, v3

    move/from16 v16, v7

    .line 500
    .end local v3    # "usageStatsSize":I
    .end local v7    # "chooserActionsSize":I
    .end local v9    # "actionIndex":I
    .restart local v16    # "chooserActionsSize":I
    .restart local v17    # "usageStatsSize":I
    iget-object v1, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v3, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v5    # "packageToken":I
    .end local v6    # "usageStats":Landroid/app/usage/UsageStats;
    .end local v16    # "chooserActionsSize":I
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    goto/16 :goto_0

    .line 502
    .end local v4    # "statsIndex":I
    .end local v17    # "usageStatsSize":I
    .restart local v3    # "usageStatsSize":I
    :cond_5
    return v2
.end method

.method private getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 432
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 434
    return-object p1

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private isStatefulEvent(I)Z
    .locals 2
    .param p1, "eventType"    # I

    .line 271
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 284
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUserVisibleEvent(I)Z
    .locals 1
    .param p1, "eventType"    # I

    .line 292
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private obfuscateEventsData(Lcom/android/server/usage/PackagesTokenData;)V
    .locals 5
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;

    .line 655
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_9

    .line 656
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, v0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    .line 657
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    if-nez v1, :cond_0

    .line 658
    goto/16 :goto_1

    .line 661
    :cond_0
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v3, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getPackageTokenOrAdd(Ljava/lang/String;J)I

    move-result v2

    .line 664
    .local v2, "packageToken":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 665
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v0}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 666
    goto/16 :goto_1

    .line 668
    :cond_1
    iput v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 669
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 670
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 673
    :cond_2
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 674
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 677
    :cond_3
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 678
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 681
    :cond_4
    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    const/16 v4, 0xc

    if-eq v3, v4, :cond_6

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 695
    :cond_5
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 696
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    goto :goto_1

    .line 689
    :cond_6
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 690
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    goto :goto_1

    .line 683
    :cond_7
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 684
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 655
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v2    # "packageToken":I
    :cond_8
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 702
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method private obfuscateUsageStatsData(Lcom/android/server/usage/PackagesTokenData;)V
    .locals 18
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;

    .line 609
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 610
    .local v2, "usageStatsSize":I
    const/4 v3, 0x0

    .local v3, "statsIndex":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 611
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 612
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 613
    .local v5, "usageStats":Landroid/app/usage/UsageStats;
    if-nez v5, :cond_0

    .line 614
    move/from16 v17, v2

    goto/16 :goto_4

    .line 617
    :cond_0
    iget-wide v6, v5, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getPackageTokenOrAdd(Ljava/lang/String;J)I

    move-result v6

    .line 620
    .local v6, "packageToken":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 621
    move/from16 v17, v2

    goto :goto_4

    .line 623
    :cond_1
    iput v6, v5, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 625
    iget-object v7, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 626
    .local v7, "chooserActionsSize":I
    const/4 v8, 0x0

    .local v8, "actionIndex":I
    :goto_1
    if-ge v8, v7, :cond_4

    .line 627
    iget-object v9, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 628
    .local v9, "action":Ljava/lang/String;
    iget-object v10, v5, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 629
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 630
    .local v10, "categoriesMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v10, :cond_2

    .line 631
    move/from16 v17, v2

    goto :goto_3

    .line 634
    :cond_2
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 635
    .local v11, "categoryCounts":Landroid/util/SparseIntArray;
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 636
    .local v12, "categoriesSize":I
    const/4 v13, 0x0

    .local v13, "categoryIndex":I
    :goto_2
    if-ge v13, v12, :cond_3

    .line 637
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 638
    .local v14, "category":Ljava/lang/String;
    invoke-virtual {v1, v6, v4, v14}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 640
    .local v15, "categoryToken":I
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v17, v2

    .end local v2    # "usageStatsSize":I
    .local v17, "usageStatsSize":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    .end local v14    # "category":Ljava/lang/String;
    .end local v15    # "categoryToken":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v17

    goto :goto_2

    .end local v17    # "usageStatsSize":I
    .restart local v2    # "usageStatsSize":I
    :cond_3
    move/from16 v17, v2

    .line 642
    .end local v2    # "usageStatsSize":I
    .end local v13    # "categoryIndex":I
    .restart local v17    # "usageStatsSize":I
    invoke-virtual {v1, v6, v4, v9}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 644
    .local v2, "actionToken":I
    iget-object v13, v5, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v13, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    .end local v2    # "actionToken":I
    .end local v9    # "action":Ljava/lang/String;
    .end local v10    # "categoriesMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "categoryCounts":Landroid/util/SparseIntArray;
    .end local v12    # "categoriesSize":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v17

    goto :goto_1

    .end local v17    # "usageStatsSize":I
    .local v2, "usageStatsSize":I
    :cond_4
    move/from16 v17, v2

    .line 646
    .end local v2    # "usageStatsSize":I
    .end local v8    # "actionIndex":I
    .restart local v17    # "usageStatsSize":I
    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "usageStats":Landroid/app/usage/UsageStats;
    .end local v6    # "packageToken":I
    .end local v7    # "chooserActionsSize":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 648
    .end local v3    # "statsIndex":I
    .end local v17    # "usageStatsSize":I
    .restart local v2    # "usageStatsSize":I
    :cond_5
    return-void
.end method


# virtual methods
.method public addEvent(Landroid/app/usage/UsageEvents$Event;)V
    .locals 4
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 333
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 334
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 337
    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 340
    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 343
    :cond_2
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 344
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p1}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 347
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 348
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 350
    :cond_4
    return-void
.end method

.method addEventStatsTo(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;)V"
        }
    .end annotation

    .line 420
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v3, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v2, 0xf

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 422
    iget-object v7, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v10, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v12, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v9, 0x10

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 424
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v3, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v2, 0x11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 426
    iget-object v7, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v10, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v12, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v9, 0x12

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 428
    return-void
.end method

.method buildEvent(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/usage/UsageEvents$Event;
    .locals 5
    .param p1, "parser"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/usage/UsageEvents$Event;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    .local p2, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 178
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 238
    :pswitch_1
    const-wide v1, 0x10500000011L

    .line 239
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 238
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 240
    goto/16 :goto_2

    .line 234
    :pswitch_2
    const-wide v1, 0x10500000010L

    .line 235
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 234
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 236
    goto/16 :goto_2

    .line 230
    :pswitch_3
    const-wide v1, 0x1050000000fL

    .line 231
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 230
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 232
    goto/16 :goto_2

    .line 227
    :pswitch_4
    const-wide v1, 0x1050000000eL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 228
    goto/16 :goto_2

    .line 222
    :pswitch_5
    const-wide v1, 0x1050000000dL

    .line 223
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 222
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 225
    goto/16 :goto_2

    .line 218
    :pswitch_6
    const-wide v1, 0x1090000000cL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 220
    goto/16 :goto_2

    .line 214
    :pswitch_7
    const-wide v1, 0x1050000000bL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 216
    goto/16 :goto_2

    .line 210
    :pswitch_8
    const-wide v1, 0x10900000009L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 212
    goto/16 :goto_2

    .line 206
    :pswitch_9
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 207
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000008L

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 208
    goto/16 :goto_2

    .line 203
    :pswitch_a
    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 204
    goto/16 :goto_2

    .line 200
    :pswitch_b
    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 201
    goto/16 :goto_2

    .line 196
    :pswitch_c
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000005L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 198
    goto/16 :goto_2

    .line 192
    :pswitch_d
    const-wide v1, 0x10500000004L

    .line 193
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 192
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 194
    goto/16 :goto_2

    .line 188
    :pswitch_e
    const-wide v1, 0x10900000003L

    .line 189
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 190
    goto :goto_2

    .line 184
    :pswitch_f
    const-wide v1, 0x10500000002L

    .line 185
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 184
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 186
    goto :goto_2

    .line 180
    :pswitch_10
    const-wide v1, 0x10900000001L

    .line 181
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 182
    goto :goto_2

    .line 243
    :pswitch_11
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    const-string v3, ""

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 261
    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_1

    .line 255
    :cond_1
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 256
    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_2
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 251
    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_1

    .line 245
    :cond_3
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_4

    .line 246
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 265
    :cond_4
    :goto_1
    return-object v0

    :goto_2
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 162
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 163
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 164
    if-eqz p2, :cond_0

    .line 165
    invoke-direct {p0, p2}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 167
    :cond_0
    return-object v0
.end method

.method commitTime(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .line 393
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 394
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 395
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 396
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 397
    return-void
.end method

.method public deobfuscateData(Lcom/android/server/usage/PackagesTokenData;)Z
    .locals 3
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;

    .line 599
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->deobfuscateUsageStats(Lcom/android/server/usage/PackagesTokenData;)Z

    move-result v0

    .line 600
    .local v0, "statsOmitted":Z
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->deobfuscateEvents(Lcom/android/server/usage/PackagesTokenData;)Z

    move-result v1

    .line 601
    .local v1, "eventsOmitted":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 147
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 148
    .local v0, "configStats":Landroid/app/usage/ConfigurationStats;
    if-nez v0, :cond_0

    .line 149
    new-instance v1, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v1}, Landroid/app/usage/ConfigurationStats;-><init>()V

    move-object v0, v1

    .line 150
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 151
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 152
    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 153
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    return-object v0
.end method

.method getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 132
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_0

    .line 133
    new-instance v1, Landroid/app/usage/UsageStats;

    invoke-direct {v1}, Landroid/app/usage/UsageStats;-><init>()V

    move-object v0, v1

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 135
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 136
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 137
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    return-object v0
.end method

.method incrementAppLaunchCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 389
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    iget v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 390
    return-void
.end method

.method public obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V
    .locals 0
    .param p1, "packagesTokenData"    # Lcom/android/server/usage/PackagesTokenData;

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->obfuscateUsageStatsData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 711
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->obfuscateEventsData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 712
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "timeStamp"    # J
    .param p5, "eventType"    # I
    .param p6, "instanceId"    # I

    .line 310
    const/16 v0, 0x1a

    if-eq p5, v0, :cond_1

    const/16 v0, 0x19

    if-ne p5, v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 320
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    move-object v1, v0

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStats;->update(Ljava/lang/String;JII)V

    goto :goto_2

    .line 313
    .end local v0    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 314
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 315
    iget-object v2, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 316
    .local v2, "usageStats":Landroid/app/usage/UsageStats;
    const/4 v4, 0x0

    move-object v3, v2

    move-wide v5, p3

    move v7, p5

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStats;->update(Ljava/lang/String;JII)V

    .line 314
    .end local v2    # "usageStats":Landroid/app/usage/UsageStats;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_2
    nop

    .line 322
    :goto_2
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    .line 323
    iput-wide p3, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 325
    :cond_3
    return-void
.end method

.method updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 354
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    iget-object v1, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 355
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 358
    :cond_0
    iget-object v1, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 359
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 360
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 361
    .local v2, "chooserCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    .end local v2    # "chooserCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v2, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 365
    .restart local v2    # "chooserCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 366
    .local v3, "currentCount":I
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void
.end method

.method updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "timeStamp"    # J

    .line 370
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 372
    .local v0, "activeStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget-wide v3, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    sub-long v3, p2, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 373
    const-wide/16 v1, 0x1

    sub-long v1, p2, v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 376
    .end local v0    # "activeStats":Landroid/app/usage/ConfigurationStats;
    :cond_0
    if-eqz p1, :cond_1

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v0

    .line 378
    .local v0, "configStats":Landroid/app/usage/ConfigurationStats;
    iput-wide p2, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 379
    iget v1, v0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 380
    iget-object v1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v1, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 382
    .end local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 383
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 385
    :cond_2
    return-void
.end method

.method updateKeyguardHidden(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .line 415
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 416
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 417
    return-void
.end method

.method updateKeyguardShown(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .line 410
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 411
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 412
    return-void
.end method

.method updateScreenInteractive(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .line 400
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 401
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 402
    return-void
.end method

.method updateScreenNonInteractive(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .line 405
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 406
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 407
    return-void
.end method

.method upgradeIfNeeded()V
    .locals 2

    .line 445
    iget v0, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 446
    return-void

    .line 451
    :cond_0
    iput v1, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 452
    return-void
.end method
