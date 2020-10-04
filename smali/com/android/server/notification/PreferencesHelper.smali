.class public Lcom/android/server/notification/PreferencesHelper;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/PreferencesHelper$Delegate;,
        Lcom/android/server/notification/PreferencesHelper$PackagePreferences;,
        Lcom/android/server/notification/PreferencesHelper$LockableAppFields;
    }
.end annotation


# static fields
.field private static final ATT_ALLOW_BUBBLE:Ljava/lang/String; = "allow_bubble"

.field private static final ATT_APP_USER_LOCKED_FIELDS:Ljava/lang/String; = "app_user_locked_fields"

.field private static final ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATT_HIDE_SILENT:Ljava/lang/String; = "hide_gentle"

.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_USER_ALLOWED:Ljava/lang/String; = "allowed"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_ALLOW_BUBBLE:Z = true

.field private static final DEFAULT_APP_LOCKED_IMPORTANCE:Z = false

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field private static final DEFAULT_OEM_LOCKED_IMPORTANCE:Z = false

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final NON_BLOCKABLE_CHANNEL_DELIM:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "NotificationPrefHelper"

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TAG_DELEGATE:Ljava/lang/String; = "delegate"

.field private static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG_STATUS_ICONS:Ljava/lang/String; = "silent_status_icons"

.field private static final UNKNOWN_UID:I = -0x2710

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private final mAppOrChannelList:[Ljava/lang/String;

.field private mAreChannelsBypassingDnd:Z

.field private mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field private mBubblesEnabled:Landroid/util/SparseBooleanArray;

.field private final mContext:Landroid/content/Context;

.field private mHideSilentStatusBarIcons:Z

.field private final mPackagePreferences:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p4, "zenHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 151
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 152
    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 153
    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 154
    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 156
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 157
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 158
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 163
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5020015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAppOrChannelList:[Ljava/lang/String;

    .line 167
    return-void
.end method

.method private channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .locals 3
    .param p1, "pkgPref"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .param p2, "channel"    # Landroid/app/NotificationChannel;

    .line 1289
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1290
    return v1

    .line 1294
    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1298
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1295
    :cond_2
    :goto_0
    return v1
.end method

.method private createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 377
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x10401f5

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 380
    return v3

    .line 383
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    return v3

    .line 390
    :cond_1
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v1, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 394
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 395
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 396
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v3, -0x3e8

    if-eq v1, v3, :cond_3

    .line 397
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 399
    :cond_3
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v1, :cond_4

    .line 400
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 402
    :cond_4
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v1, v3, :cond_5

    .line 403
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 405
    :cond_5
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return v4
.end method

.method private deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 359
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 361
    return v2

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    return v2

    .line 370
    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method private static dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 9
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;)V"
        }
    .end annotation

    .line 1544
    .local p4, "packagePreferences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/PreferencesHelper$PackagePreferences;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1546
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1547
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1548
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1549
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1551
    .local v3, "fToken":J
    const-wide v5, 0x10900000001L

    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1552
    const-wide v5, 0x10500000002L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1553
    const-wide v5, 0x11100000003L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1554
    const-wide v5, 0x10500000004L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1555
    const-wide v5, 0x11100000005L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1556
    const-wide v5, 0x10800000006L

    iget-boolean v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1558
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1559
    .local v6, "channel":Landroid/app/NotificationChannel;
    const-wide v7, 0x20b00000007L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannel;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1560
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    goto :goto_1

    .line 1561
    :cond_0
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 1562
    .local v6, "group":Landroid/app/NotificationChannelGroup;
    const-wide v7, 0x20b00000008L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannelGroup;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1563
    .end local v6    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_2

    .line 1565
    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1546
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "fToken":J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1568
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/PreferencesHelper$PackagePreferences;",
            ">;)V"
        }
    .end annotation

    .line 1488
    .local p3, "packagePreferences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/PreferencesHelper$PackagePreferences;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1489
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_a

    .line 1490
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1491
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1492
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1493
    const-string v3, "  AppSettings: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1494
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1495
    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_0

    const-string v3, "UNKNOWN_UID"

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1498
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_1

    .line 1499
    const-string v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1500
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    :cond_1
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v3, :cond_2

    .line 1503
    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1504
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1506
    :cond_2
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v3, v4, :cond_3

    .line 1507
    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1508
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1510
    :cond_3
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 1511
    const-string v3, " showBadge="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1512
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1514
    :cond_4
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v3, :cond_5

    .line 1515
    const-string v3, " defaultAppLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1516
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1518
    :cond_5
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-eqz v3, :cond_6

    .line 1519
    const-string v3, " oemLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1520
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1522
    :cond_6
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1523
    const-string v3, " futureLockedChannels="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1524
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1526
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1527
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1528
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1529
    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const-string v6, "    "

    invoke-virtual {v4, p0, v6, v5}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1530
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    goto :goto_2

    .line 1531
    :cond_8
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 1532
    .local v4, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1533
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1536
    .end local v4    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_3

    .line 1489
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1539
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1869
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1872
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1873
    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1877
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1869
    return-object v0
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1853
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1856
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1857
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1861
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1858
    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1865
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1862
    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1853
    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 307
    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/16 v5, -0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I
    .param p4, "priority"    # I
    .param p5, "visibility"    # I
    .param p6, "showBadge"    # Z
    .param p7, "allowBubble"    # Z

    .line 314
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "key":Ljava/lang/String;
    const/16 v1, -0x2710

    if-ne p2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_0
    nop

    .line 318
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_2

    .line 319
    new-instance v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>(Lcom/android/server/notification/PreferencesHelper$1;)V

    move-object v2, v3

    .line 320
    iput-object p1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 321
    iput p2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 322
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 323
    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 324
    iput p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 325
    iput-boolean p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 326
    iput-boolean p7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 329
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_1

    .line 330
    :catch_0
    move-exception v3

    .line 331
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationPrefHelper"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v3, v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_2
    :goto_2
    return-object v2
.end method

.method private getPackageChannels()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1701
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1702
    .local v0, "packageChannels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1703
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1704
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1705
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v5, 0x0

    .line 1706
    .local v5, "channelCount":I
    move v6, v2

    .local v6, "j":I
    :goto_1
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1707
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1708
    add-int/lit8 v5, v5, 0x1

    .line 1706
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1711
    .end local v6    # "j":I
    :cond_1
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    nop

    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v5    # "channelCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1713
    .end local v3    # "i":I
    :cond_2
    monitor-exit v1

    .line 1714
    return-object v0

    .line 1713
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 302
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    return-object v1
.end method

.method private static packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 345
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 346
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 347
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 348
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    .line 350
    return v3

    .line 354
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private syncChannelsBypassingDnd(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1248
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 1251
    return-void
.end method

.method private updateChannelsBypassingDnd(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1259
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1260
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1261
    .local v1, "numPackagePreferences":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1262
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1265
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_3

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v4, :cond_0

    .line 1266
    goto :goto_2

    .line 1269
    :cond_0
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1270
    .local v5, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v3, v5}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1271
    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-nez v4, :cond_1

    .line 1272
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1273
    invoke-virtual {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1275
    :cond_1
    monitor-exit v0

    return-void

    .line 1277
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    :cond_2
    goto :goto_1

    .line 1261
    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1279
    .end local v1    # "numPackagePreferences":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v0, :cond_5

    .line 1282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1283
    invoke-virtual {p0, v0}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1285
    :cond_5
    return-void

    .line 1279
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateConfig()V
    .locals 1

    .line 1950
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 1951
    return-void
.end method


# virtual methods
.method public areBubblesAllowed(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 525
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 526
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    monitor-exit v0

    return v1

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public areChannelsBypassingDnd()Z
    .locals 1

    .line 1311
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1936
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1937
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1938
    return v1

    .line 1940
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    .line 1941
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 1942
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 1941
    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1946
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public bubblesEnabled(Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1901
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1902
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1903
    return v1

    .line 1905
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    .line 1906
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 1907
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_bubbles"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 1906
    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1911
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 560
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 561
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    monitor-exit v0

    return v1

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearData(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1817
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1818
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1819
    .local v1, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_1

    .line 1820
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1821
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 1822
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1823
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1824
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 1825
    const/16 v4, -0x3e8

    iput v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1826
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1827
    iput v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1828
    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    .line 1835
    invoke-direct {p0, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1838
    goto :goto_0

    .line 1836
    :catch_0
    move-exception v2

    .line 1837
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v3, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDefaultChannelIfNeeded - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1842
    .local v2, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v2, :cond_0

    .line 1843
    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onPackagePreferencesCleared()V

    .line 1845
    :cond_0
    const-string v3, "NotificationPrefHelper"

    const-string v4, "Package preferences have been cleared!"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1849
    .end local v1    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_1
    monitor-exit v0

    .line 1850
    return-void

    .line 1849
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    .locals 1
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 776
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 777
    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z
    .locals 17
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromTargetApp"    # Z
    .param p5, "hasDndAccess"    # Z

    .line 640
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 644
    const/4 v5, 0x0

    .line 645
    .local v5, "needsPolicyFileChange":Z
    iget-object v6, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 646
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 647
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v0, :cond_1b

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "needsPolicyFileChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v4

    .line 653
    .restart local v5    # "needsPolicyFileChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_1
    :goto_0
    const-string/jumbo v7, "miscellaneous"

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 656
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 658
    .local v7, "existing":Landroid/app/NotificationChannel;
    const/4 v8, 0x0

    if-eqz v7, :cond_a

    if-eqz p4, :cond_a

    .line 659
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 660
    invoke-virtual {v7, v8}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 661
    const/4 v5, 0x1

    .line 664
    invoke-direct {v1, v3, v2}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 668
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 670
    const/4 v4, 0x1

    move v5, v4

    .line 672
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 674
    const/4 v4, 0x1

    move v5, v4

    .line 676
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v4

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v8

    if-eq v4, v8, :cond_5

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v4

    invoke-virtual {v7, v4}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 678
    const/4 v4, 0x1

    move v5, v4

    .line 680
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 682
    const/4 v4, 0x1

    move v5, v4

    .line 687
    :cond_6
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    .line 688
    .local v4, "previousExistingImportance":I
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v8

    if-nez v8, :cond_7

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v8

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 691
    const/4 v5, 0x1

    .line 696
    :cond_7
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v8

    if-nez v8, :cond_9

    if-eqz p5, :cond_9

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    .line 698
    .local v8, "bypassDnd":Z
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v9

    if-eq v8, v9, :cond_9

    .line 699
    invoke-virtual {v7, v8}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 700
    const/4 v5, 0x1

    .line 702
    iget-boolean v9, v1, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v8, v9, :cond_8

    .line 703
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v9

    if-eq v4, v9, :cond_9

    .line 704
    :cond_8
    iget-object v9, v1, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    move-result v9

    invoke-direct {v1, v9}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 709
    .end local v8    # "bypassDnd":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 710
    monitor-exit v6

    return v5

    .line 713
    .end local v4    # "previousExistingImportance":I
    :cond_a
    const/4 v5, 0x1

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v9

    if-ltz v9, :cond_19

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_18

    .line 721
    const/4 v9, 0x2

    if-eqz p4, :cond_c

    if-nez p5, :cond_c

    .line 722
    iget v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-ne v10, v9, :cond_b

    move v10, v4

    goto :goto_1

    :cond_b
    move v10, v8

    :goto_1
    invoke-virtual {v3, v10}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 724
    :cond_c
    if-eqz p4, :cond_d

    .line 725
    iget v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v3, v10}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 727
    :cond_d
    invoke-virtual {v1, v3}, Lcom/android/server/notification/PreferencesHelper;->clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V

    .line 728
    iget-boolean v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v3, v10}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v10

    if-nez v10, :cond_14

    .line 730
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 731
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 737
    :cond_e
    iget-object v10, v1, Lcom/android/server/notification/PreferencesHelper;->mAppOrChannelList:[Ljava/lang/String;

    array-length v11, v10

    move v12, v8

    :goto_2
    if-ge v12, v11, :cond_13

    aget-object v13, v10, v12

    .line 738
    .local v13, "appOrChannel":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 739
    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 740
    .local v14, "appSplit":[Ljava/lang/String;
    if-eqz v14, :cond_11

    array-length v15, v14

    if-lez v15, :cond_11

    .line 741
    aget-object v15, v14, v8

    .line 742
    .local v15, "appName":Ljava/lang/String;
    array-length v8, v14

    if-ne v8, v9, :cond_f

    aget-object v8, v14, v4

    goto :goto_3

    :cond_f
    const/4 v8, 0x0

    .line 744
    .local v8, "channelId":Ljava/lang/String;
    :goto_3
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 745
    const-string v9, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v7

    .end local v7    # "existing":Landroid/app/NotificationChannel;
    .local v16, "existing":Landroid/app/NotificationChannel;
    const-string v7, "createNotificationChannel, setImportanceLockedByOEM for pkg: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", channel: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_4

    .line 744
    .end local v16    # "existing":Landroid/app/NotificationChannel;
    .restart local v7    # "existing":Landroid/app/NotificationChannel;
    :cond_10
    move-object/from16 v16, v7

    .end local v7    # "existing":Landroid/app/NotificationChannel;
    .restart local v16    # "existing":Landroid/app/NotificationChannel;
    goto :goto_4

    .line 740
    .end local v8    # "channelId":Ljava/lang/String;
    .end local v15    # "appName":Ljava/lang/String;
    .end local v16    # "existing":Landroid/app/NotificationChannel;
    .restart local v7    # "existing":Landroid/app/NotificationChannel;
    :cond_11
    move-object/from16 v16, v7

    .end local v7    # "existing":Landroid/app/NotificationChannel;
    .restart local v16    # "existing":Landroid/app/NotificationChannel;
    goto :goto_4

    .line 738
    .end local v14    # "appSplit":[Ljava/lang/String;
    .end local v16    # "existing":Landroid/app/NotificationChannel;
    .restart local v7    # "existing":Landroid/app/NotificationChannel;
    :cond_12
    move-object/from16 v16, v7

    .line 737
    .end local v7    # "existing":Landroid/app/NotificationChannel;
    .end local v13    # "appOrChannel":Ljava/lang/String;
    .restart local v16    # "existing":Landroid/app/NotificationChannel;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v16

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto :goto_2

    .end local v16    # "existing":Landroid/app/NotificationChannel;
    .restart local v7    # "existing":Landroid/app/NotificationChannel;
    :cond_13
    move-object/from16 v16, v7

    .end local v7    # "existing":Landroid/app/NotificationChannel;
    .restart local v16    # "existing":Landroid/app/NotificationChannel;
    goto :goto_5

    .line 729
    .end local v16    # "existing":Landroid/app/NotificationChannel;
    .restart local v7    # "existing":Landroid/app/NotificationChannel;
    :cond_14
    move-object/from16 v16, v7

    .line 755
    .end local v7    # "existing":Landroid/app/NotificationChannel;
    .restart local v16    # "existing":Landroid/app/NotificationChannel;
    :goto_5
    iget-boolean v4, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 756
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_15

    .line 757
    const/16 v4, -0x3e8

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 760
    :cond_15
    iget-boolean v4, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-nez v4, :cond_16

    .line 761
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 764
    :cond_16
    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    iget-boolean v7, v1, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq v4, v7, :cond_17

    .line 766
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 768
    :cond_17
    invoke-direct {v1, v3, v2}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 770
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v16    # "existing":Landroid/app/NotificationChannel;
    monitor-exit v6

    .line 772
    return v5

    .line 716
    .restart local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v7    # "existing":Landroid/app/NotificationChannel;
    :cond_18
    move-object/from16 v16, v7

    .end local v7    # "existing":Landroid/app/NotificationChannel;
    .restart local v16    # "existing":Landroid/app/NotificationChannel;
    goto :goto_6

    .line 715
    .end local v16    # "existing":Landroid/app/NotificationChannel;
    .restart local v7    # "existing":Landroid/app/NotificationChannel;
    :cond_19
    move-object/from16 v16, v7

    .line 717
    .end local v7    # "existing":Landroid/app/NotificationChannel;
    .restart local v16    # "existing":Landroid/app/NotificationChannel;
    :goto_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid importance level"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "needsPolicyFileChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v4

    .line 654
    .end local v16    # "existing":Landroid/app/NotificationChannel;
    .restart local v5    # "needsPolicyFileChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_1a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "Reserved id"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "needsPolicyFileChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v4

    .line 648
    .restart local v5    # "needsPolicyFileChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_1b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid package"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "needsPolicyFileChange":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v4

    .line 770
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v5    # "needsPolicyFileChange":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromTargetApp"    # Z

    .line 603
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 608
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 609
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_3

    .line 612
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 613
    .local v3, "oldGroup":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 615
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 617
    :cond_0
    if-eqz v3, :cond_2

    .line 618
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 621
    if-eqz p4, :cond_1

    .line 622
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 623
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->unlockFields(I)V

    .line 624
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    if-eq v4, v5, :cond_2

    .line 628
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    .line 629
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 633
    :cond_2
    :goto_0
    iget-object v1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    nop

    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "oldGroup":Landroid/app/NotificationChannelGroup;
    monitor-exit v0

    .line 635
    return-void

    .line 610
    .restart local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "group":Landroid/app/NotificationChannelGroup;
    .end local p4    # "fromTargetApp":Z
    throw v1

    .line 634
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "group":Landroid/app/NotificationChannelGroup;
    .restart local p4    # "fromTargetApp":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 863
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 864
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 865
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 866
    monitor-exit v0

    return-void

    .line 868
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 869
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_1

    .line 870
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 871
    invoke-direct {p0, v2, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 872
    .local v3, "lm":Landroid/metrics/LogMaker;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 873
    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 875
    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 876
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 879
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .end local v3    # "lm":Landroid/metrics/LogMaker;
    :cond_1
    monitor-exit v0

    .line 880
    return-void

    .line 879
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v0, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1070
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1071
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1075
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1078
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1079
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1080
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1081
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1082
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1085
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_2
    monitor-exit v1

    .line 1086
    return-object v0

    .line 1072
    .restart local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_3
    :goto_1
    monitor-exit v1

    return-object v0

    .line 1085
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1477
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1478
    const-wide v1, 0x20b00000002L

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1480
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    const-wide v0, 0x20b00000003L

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1483
    return-void

    .line 1480
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    const-string/jumbo v0, "per-package config:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    const-string v0, "PackagePreferences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1470
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    const-string v0, "Restored without uid:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1473
    return-void

    .line 1470
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 8
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1638
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1639
    .local v0, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v1

    .line 1640
    .local v1, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1641
    .local v3, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1642
    .local v4, "userId":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1643
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1644
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1646
    .local v6, "banJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1647
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    goto :goto_1

    .line 1648
    :catch_0
    move-exception v7

    .line 1649
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 1651
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1653
    .end local v3    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "userId":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "banJson":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 1654
    :cond_2
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 8
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1682
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1683
    .local v0, "channels":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    .line 1684
    .local v1, "packageChannels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1685
    .local v3, "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1686
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1687
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1689
    .local v5, "channelCountJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1690
    const-string v6, "channelCount"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    goto :goto_1

    .line 1691
    :catch_0
    move-exception v6

    .line 1692
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1694
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1696
    .end local v3    # "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "channelCountJson":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 1697
    :cond_2
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1571
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1572
    .local v0, "ranking":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1574
    .local v1, "PackagePreferencess":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v2, "noUid"

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    goto :goto_0

    .line 1575
    :catch_0
    move-exception v2

    .line 1578
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1579
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1580
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_8

    .line 1581
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1582
    .local v5, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz p1, :cond_0

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1583
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1585
    .local v6, "PackagePreferences":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v7, "userId"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1586
    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1587
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_1

    .line 1588
    const-string v7, "importance"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1589
    invoke-static {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    .line 1588
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1592
    :cond_1
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_2

    .line 1593
    const-string/jumbo v7, "priority"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1594
    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    .line 1593
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1596
    :cond_2
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v7, v8, :cond_3

    .line 1597
    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1598
    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    .line 1597
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1600
    :cond_3
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 1601
    const-string/jumbo v7, "showBadge"

    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1603
    :cond_4
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1604
    .local v7, "channels":Lorg/json/JSONArray;
    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 1605
    .local v9, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1606
    nop

    .end local v9    # "channel":Landroid/app/NotificationChannel;
    goto :goto_2

    .line 1607
    :cond_5
    const-string v8, "channels"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1608
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 1609
    .local v8, "groups":Lorg/json/JSONArray;
    iget-object v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 1610
    .local v10, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1611
    nop

    .end local v10    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_3

    .line 1612
    :cond_6
    const-string v9, "groups"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1615
    nop

    .end local v7    # "channels":Lorg/json/JSONArray;
    .end local v8    # "groups":Lorg/json/JSONArray;
    goto :goto_4

    .line 1613
    :catch_1
    move-exception v7

    .line 1616
    :goto_4
    :try_start_3
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1580
    .end local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v6    # "PackagePreferences":Lorg/json/JSONObject;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1619
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1621
    :try_start_4
    const-string v2, "PackagePreferencess"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1624
    goto :goto_5

    .line 1622
    :catch_2
    move-exception v2

    .line 1625
    :goto_5
    return-object v0

    .line 1619
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3
.end method

.method public getAppLockedFields(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 531
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 532
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v0

    return v1

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppsBypassingDndCount(I)I
    .locals 8
    .param p1, "userId"    # I

    .line 1220
    const/4 v0, 0x0

    .line 1221
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1222
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1223
    .local v2, "numPackagePreferences":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1224
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1227
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_2

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    .line 1228
    goto :goto_2

    .line 1231
    :cond_0
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1232
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1233
    add-int/lit8 v0, v0, 0x1

    .line 1234
    goto :goto_2

    .line 1236
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    goto :goto_1

    .line 1223
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1238
    .end local v2    # "numPackagePreferences":I
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1

    .line 1239
    return v0

    .line 1238
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBlockedAppCount(I)I
    .locals 6
    .param p1, "userId"    # I

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1203
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1204
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1205
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1206
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    .line 1208
    add-int/lit8 v0, v0, 0x1

    .line 1204
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1211
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 1212
    return v0

    .line 1211
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1182
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const/4 v0, 0x0

    .line 1184
    .local v0, "blockedCount":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1185
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1186
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1187
    monitor-exit v1

    return v0

    .line 1189
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1190
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1191
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1192
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-nez v6, :cond_1

    .line 1193
    add-int/lit8 v0, v0, 0x1

    .line 1190
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1196
    .end local v4    # "i":I
    :cond_2
    monitor-exit v1

    return v0

    .line 1197
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1163
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const/4 v0, 0x0

    .line 1165
    .local v0, "deletedCount":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1166
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1167
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1168
    monitor-exit v1

    return v0

    .line 1170
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1171
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1172
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1173
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1174
    add-int/lit8 v0, v0, 0x1

    .line 1171
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1177
    .end local v4    # "i":I
    :cond_2
    monitor-exit v1

    return v0

    .line 1178
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 541
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 542
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    monitor-exit v0

    return v1

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIsAppImportanceLocked(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 552
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 553
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 554
    .local v1, "userLockedFields":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 555
    .end local v1    # "userLockedFields":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 844
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 846
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 847
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 848
    monitor-exit v0

    return-object v2

    .line 850
    :cond_0
    if-nez p3, :cond_1

    .line 851
    const-string/jumbo v3, "miscellaneous"

    move-object p3, v3

    .line 853
    :cond_1
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 854
    .local v3, "nc":Landroid/app/NotificationChannel;
    if-eqz v3, :cond_3

    if-nez p4, :cond_2

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 855
    :cond_2
    monitor-exit v0

    return-object v3

    .line 857
    :cond_3
    monitor-exit v0

    return-object v2

    .line 858
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1011
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1013
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1014
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 1015
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1017
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object v2

    .line 1018
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 988
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 990
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 991
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 994
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 995
    .local v2, "group":Landroid/app/NotificationChannelGroup;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 996
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 997
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 998
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 999
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p4, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1000
    :cond_1
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1001
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 997
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1005
    .end local v4    # "i":I
    :cond_3
    monitor-exit v0

    return-object v2

    .line 992
    .end local v2    # "group":Landroid/app/NotificationChannelGroup;
    .end local v3    # "N":I
    :cond_4
    :goto_1
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1006
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .param p4, "includeNonGrouped"    # Z
    .param p5, "includeEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1024
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    .line 1026
    .local v1, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1027
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 1028
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v0, :cond_0

    .line 1029
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 1031
    :cond_0
    new-instance v4, Landroid/app/NotificationChannelGroup;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1032
    .local v4, "nonGrouped":Landroid/app/NotificationChannelGroup;
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1033
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 1034
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 1035
    .local v8, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_1

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1036
    :cond_1
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1037
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1038
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 1039
    .local v9, "ncg":Landroid/app/NotificationChannelGroup;
    if-nez v9, :cond_2

    .line 1040
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v10

    move-object v9, v10

    .line 1041
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1042
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    :cond_2
    invoke-virtual {v9, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1046
    .end local v9    # "ncg":Landroid/app/NotificationChannelGroup;
    goto :goto_1

    .line 1048
    :cond_3
    invoke-virtual {v4, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1033
    .end local v8    # "nc":Landroid/app/NotificationChannel;
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1052
    .end local v7    # "i":I
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1053
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :cond_6
    if-eqz p5, :cond_8

    .line 1056
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    .line 1057
    .local v7, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1058
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    .end local v7    # "group":Landroid/app/NotificationChannelGroup;
    :cond_7
    goto :goto_2

    .line 1062
    :cond_8
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v3

    return-object v5

    .line 1063
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4    # "nonGrouped":Landroid/app/NotificationChannelGroup;
    .end local v6    # "N":I
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1094
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1095
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1096
    monitor-exit v1

    return-object v0

    .line 1098
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1099
    nop

    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v1

    .line 1100
    return-object v0

    .line 1099
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1106
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1109
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1110
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1111
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1113
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1114
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1115
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1116
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1117
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1120
    .end local v4    # "i":I
    :cond_3
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 1121
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1131
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 1132
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1131
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1134
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v3, :cond_1

    .line 1135
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1136
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v2, v4}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1137
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    goto :goto_0

    .line 1141
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 1141
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I

    .line 1356
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1357
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1359
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1362
    :cond_0
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 1365
    :cond_1
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1363
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    .line 1360
    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    .line 1366
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageBans()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1658
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1659
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1660
    .local v1, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1661
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1662
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1663
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    .line 1664
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1668
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    return-object v2

    .line 1669
    .end local v1    # "N":I
    .end local v2    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackagePriority(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 589
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 590
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    monitor-exit v0

    return v1

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 595
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 596
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    monitor-exit v0

    return v1

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 3
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I
    .param p3, "potentialDelegatePkg"    # Ljava/lang/String;
    .param p4, "potentialDelegateUid"    # I

    .line 1424
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1425
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1427
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, p4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isValidDelegate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1429
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;

    .line 575
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 576
    return v0

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 579
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 580
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 581
    .local v3, "group":Landroid/app/NotificationChannelGroup;
    if-nez v3, :cond_1

    .line 582
    monitor-exit v1

    return v0

    .line 584
    :cond_1
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 585
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "group":Landroid/app/NotificationChannelGroup;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockChannelsForOEM([Ljava/lang/String;)V
    .locals 13
    .param p1, "appOrChannelList"    # [Ljava/lang/String;

    .line 923
    if-nez p1, :cond_0

    .line 924
    return-void

    .line 926
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v3, p1, v2

    .line 927
    .local v3, "appOrChannel":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 928
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 929
    .local v4, "appSplit":[Ljava/lang/String;
    if-eqz v4, :cond_7

    array-length v5, v4

    if-lez v5, :cond_7

    .line 930
    aget-object v5, v4, v1

    .line 931
    .local v5, "appName":Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    aget-object v6, v4, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 933
    .local v6, "channelId":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 934
    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 935
    .local v10, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v11, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 936
    if-nez v6, :cond_3

    .line 938
    iput-boolean v8, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 939
    iget-object v11, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationChannel;

    .line 940
    .local v12, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v12, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 941
    .end local v12    # "channel":Landroid/app/NotificationChannel;
    goto :goto_3

    :cond_2
    goto :goto_4

    .line 943
    :cond_3
    iget-object v11, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    .line 944
    .local v11, "channel":Landroid/app/NotificationChannel;
    if-eqz v11, :cond_4

    .line 945
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_4

    .line 949
    :cond_4
    iget-object v12, v10, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->futureOemLockedChannels:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v10    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v11    # "channel":Landroid/app/NotificationChannel;
    :cond_5
    :goto_4
    goto :goto_2

    .line 954
    :cond_6
    monitor-exit v7

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 926
    .end local v3    # "appOrChannel":Ljava/lang/String;
    .end local v4    # "appSplit":[Ljava/lang/String;
    .end local v5    # "appName":Ljava/lang/String;
    .end local v6    # "channelId":Ljava/lang/String;
    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 958
    :cond_8
    return-void
.end method

.method lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 2
    .param p1, "original"    # Landroid/app/NotificationChannel;
    .param p2, "update"    # Landroid/app/NotificationChannel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1434
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1435
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1437
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1438
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1440
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1441
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1443
    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1444
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1445
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1447
    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1448
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1450
    :cond_5
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1451
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 1452
    :cond_6
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1454
    :cond_7
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_8

    .line 1455
    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1457
    :cond_8
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1458
    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1460
    :cond_9
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1744
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1745
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1746
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1747
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1748
    .local v3, "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 1749
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1751
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1753
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10401f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1752
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 1746
    .end local v3    # "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1758
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 1759
    return-void

    .line 1758
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)Z
    .locals 9
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .line 1763
    const/4 v0, 0x0

    if-eqz p3, :cond_7

    array-length v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1766
    :cond_0
    const/4 v1, 0x0

    .line 1767
    .local v1, "updated":Z
    if-eqz p1, :cond_2

    .line 1769
    array-length v0, p3

    array-length v2, p4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1770
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1771
    aget-object v3, p3, v2

    .line 1772
    .local v3, "pkg":Ljava/lang/String;
    aget v4, p4, v2

    .line 1773
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1774
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    const/4 v1, 0x1

    .line 1770
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1775
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1779
    .end local v0    # "size":I
    .end local v2    # "i":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_1
    goto :goto_4

    .line 1780
    :cond_2
    array-length v2, p3

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, p3, v0

    .line 1782
    .restart local v3    # "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1783
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v4, :cond_3

    .line 1785
    :try_start_2
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 1786
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1788
    :try_start_3
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7, v8}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    monitor-exit v5

    .line 1790
    const/4 v1, 0x1

    .line 1793
    goto :goto_2

    .line 1789
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "updated":Z
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "removingPackage":Z
    .end local p2    # "changeUserId":I
    .end local p3    # "pkgList":[Ljava/lang/String;
    .end local p4    # "uidList":[I
    :try_start_4
    throw v6
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1791
    .restart local v1    # "updated":Z
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "removingPackage":Z
    .restart local p2    # "changeUserId":I
    .restart local p3    # "pkgList":[Ljava/lang/String;
    .restart local p4    # "uidList":[I
    :catch_0
    move-exception v5

    .line 1797
    :cond_3
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1798
    :try_start_6
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 1799
    invoke-virtual {v6, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6

    .line 1798
    invoke-direct {p0, v3, v6}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v6

    .line 1800
    .local v6, "fullPackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v6, :cond_4

    .line 1801
    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 1802
    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 1804
    .end local v6    # "fullPackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_4
    monitor-exit v5

    .line 1806
    goto :goto_3

    .line 1804
    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "updated":Z
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "removingPackage":Z
    .end local p2    # "changeUserId":I
    .end local p3    # "pkgList":[Ljava/lang/String;
    .end local p4    # "uidList":[I
    :try_start_7
    throw v6
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1805
    .restart local v1    # "updated":Z
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "removingPackage":Z
    .restart local p2    # "changeUserId":I
    .restart local p3    # "pkgList":[Ljava/lang/String;
    .restart local p4    # "uidList":[I
    :catch_1
    move-exception v5

    .line 1780
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1810
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 1811
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1813
    :cond_6
    return v1

    .line 1764
    .end local v1    # "updated":Z
    :cond_7
    :goto_5
    return v0
.end method

.method public onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1732
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1733
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1734
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1735
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1736
    .local v3, "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1737
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1734
    .end local v3    # "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1740
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 1741
    return-void

    .line 1740
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 1721
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 1722
    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 1728
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 1729
    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1152
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1153
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1154
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    .line 1155
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1156
    monitor-exit v0

    return v3

    .line 1158
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1159
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 885
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 888
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 889
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 890
    monitor-exit v0

    return-void

    .line 892
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    nop

    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0

    .line 894
    return-void

    .line 893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 898
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 900
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 901
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 902
    monitor-exit v0

    return-void

    .line 904
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 905
    .local v2, "N":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 906
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 907
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 908
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 911
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 912
    return-void

    .line 911
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V
    .locals 22
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 172
    .local v1, "type":I
    const/4 v12, 0x2

    if-eq v1, v12, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 175
    :cond_1
    iget-object v13, v9, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v13

    .line 178
    :try_start_0
    iget-object v0, v9, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 179
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v14, v0

    .end local v1    # "type":I
    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v0, v15, :cond_13

    .line 180
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v8, v0

    .line 181
    .end local v2    # "tag":Ljava/lang/String;
    .local v8, "tag":Ljava/lang/String;
    const/4 v7, 0x3

    if-ne v14, v7, :cond_2

    :try_start_2
    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    move-object v2, v8

    move v1, v14

    goto/16 :goto_a

    .line 184
    :cond_2
    if-ne v14, v12, :cond_12

    .line 185
    :try_start_3
    const-string/jumbo v0, "silent_status_icons"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    .line 186
    if-eqz p2, :cond_3

    if-eqz v11, :cond_3

    .line 187
    move-object/from16 v18, v8

    goto/16 :goto_9

    .line 189
    :cond_3
    :try_start_4
    const-string v0, "hide_gentle"

    invoke-static {v10, v0, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v8

    goto/16 :goto_9

    .line 191
    :cond_4
    :try_start_5
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 192
    const-string/jumbo v0, "uid"

    const/16 v5, -0x2710

    invoke-static {v10, v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 193
    .local v1, "uid":I
    const-string/jumbo v0, "name"

    const/4 v4, 0x0

    invoke-interface {v10, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 194
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_10

    .line 195
    if-eqz p2, :cond_5

    .line 197
    :try_start_6
    iget-object v0, v9, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 200
    .end local v1    # "uid":I
    .local v0, "uid":I
    move/from16 v16, v0

    goto :goto_1

    .line 198
    .end local v0    # "uid":I
    .restart local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 203
    :cond_5
    move/from16 v16, v1

    .end local v1    # "uid":I
    .local v16, "uid":I
    :goto_1
    :try_start_7
    const-string v0, "importance"

    .line 204
    const/16 v2, -0x3e8

    invoke-static {v10, v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "priority"

    .line 206
    invoke-static {v10, v1, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v1, "visibility"

    .line 208
    invoke-static {v10, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v1, "show_badge"

    .line 210
    invoke-static {v10, v1, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v19

    const-string v1, "allow_bubble"

    .line 212
    invoke-static {v10, v1, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 203
    move-object/from16 v1, p0

    move v12, v2

    move-object v2, v3

    move-object/from16 v21, v3

    .end local v3    # "name":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    move/from16 v3, v16

    move v4, v0

    move/from16 v5, v17

    move v15, v6

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v18, v8

    .end local v8    # "tag":Ljava/lang/String;
    .local v18, "tag":Ljava/lang/String;
    move/from16 v8, v20

    :try_start_8
    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIZZ)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    move-object v1, v0

    .line 214
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const-string v0, "importance"

    invoke-static {v10, v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 216
    const-string/jumbo v0, "priority"

    invoke-static {v10, v0, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 218
    const-string/jumbo v0, "visibility"

    invoke-static {v10, v0, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 220
    const-string/jumbo v0, "show_badge"

    const/4 v2, 0x1

    invoke-static {v10, v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 222
    const-string v0, "app_user_locked_fields"

    invoke-static {v10, v0, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 225
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v2, v0

    .line 226
    .local v2, "innerDepth":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v3, 0x3

    if-ne v14, v3, :cond_6

    .line 228
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_f

    .line 229
    :cond_6
    if-eq v14, v3, :cond_e

    const/4 v0, 0x4

    if-ne v14, v0, :cond_7

    .line 230
    const/16 v6, -0x2710

    const/4 v15, 0x1

    goto :goto_2

    .line 233
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "tagName":Ljava/lang/String;
    const-string v4, "channelGroup"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 236
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-interface {v10, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v10, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "groupName":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 240
    new-instance v7, Landroid/app/NotificationChannelGroup;

    invoke-direct {v7, v4, v6}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 242
    .local v7, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v7, v10}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 243
    iget-object v8, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 235
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "groupName":Ljava/lang/CharSequence;
    .end local v7    # "group":Landroid/app/NotificationChannelGroup;
    :cond_8
    const/4 v5, 0x0

    .line 247
    :cond_9
    :goto_3
    const-string v4, "channel"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 248
    const-string v4, "id"

    invoke-interface {v10, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .restart local v4    # "id":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v10, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "channelName":Ljava/lang/String;
    const-string v7, "importance"

    invoke-static {v10, v7, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 252
    .local v7, "channelImportance":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 253
    new-instance v8, Landroid/app/NotificationChannel;

    invoke-direct {v8, v4, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 255
    .local v8, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_a

    .line 256
    iget-object v15, v9, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10, v15}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_4

    .line 258
    :cond_a
    invoke-virtual {v8, v10}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 260
    :goto_4
    iget-boolean v15, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v8, v15}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 262
    iget-object v15, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v15, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "channelName":Ljava/lang/String;
    .end local v7    # "channelImportance":I
    .end local v8    # "channel":Landroid/app/NotificationChannel;
    :cond_b
    const-string v4, "delegate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 267
    const-string/jumbo v4, "uid"

    .line 268
    const/16 v6, -0x2710

    invoke-static {v10, v4, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 269
    .local v4, "delegateId":I
    const-string/jumbo v7, "name"

    .line 270
    invoke-static {v10, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "delegateName":Ljava/lang/String;
    const-string v8, "enabled"

    const/4 v15, 0x1

    invoke-static {v10, v8, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    .line 273
    .local v8, "delegateEnabled":Z
    const-string v3, "allowed"

    invoke-static {v10, v3, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    .line 276
    .local v3, "userAllowed":Z
    const/16 v17, 0x0

    .line 277
    .local v17, "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    if-eq v4, v6, :cond_c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 279
    new-instance v5, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v5, v7, v4, v8, v3}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object/from16 v17, v5

    goto :goto_5

    .line 283
    :cond_c
    move-object/from16 v5, v17

    .end local v17    # "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    .local v5, "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    :goto_5
    iput-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    .line 266
    .end local v3    # "userAllowed":Z
    .end local v4    # "delegateId":I
    .end local v5    # "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    .end local v7    # "delegateName":Ljava/lang/String;
    .end local v8    # "delegateEnabled":Z
    :cond_d
    const/16 v6, -0x2710

    const/4 v15, 0x1

    .line 286
    .end local v0    # "tagName":Ljava/lang/String;
    :goto_6
    goto/16 :goto_2

    .line 229
    :cond_e
    const/16 v6, -0x2710

    const/4 v15, 0x1

    goto/16 :goto_2

    .line 289
    :cond_f
    :try_start_9
    invoke-direct {v9, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 292
    goto :goto_7

    .line 290
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 291
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_a
    const-string v3, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 294
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "innerDepth":I
    .end local v16    # "uid":I
    .end local v21    # "name":Ljava/lang/String;
    :goto_7
    move v1, v14

    goto :goto_8

    .line 297
    :catchall_1
    move-exception v0

    move v1, v14

    move-object/from16 v2, v18

    goto :goto_a

    .line 194
    .end local v18    # "tag":Ljava/lang/String;
    .local v1, "uid":I
    .local v3, "name":Ljava/lang/String;
    .local v8, "tag":Ljava/lang/String;
    :cond_10
    move-object/from16 v21, v3

    move-object/from16 v18, v8

    .end local v3    # "name":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    move v1, v14

    .line 294
    .end local v14    # "type":I
    .end local v21    # "name":Ljava/lang/String;
    .local v1, "type":I
    :goto_8
    move-object/from16 v2, v18

    const/4 v12, 0x2

    goto/16 :goto_0

    .line 191
    .end local v1    # "type":I
    .end local v18    # "tag":Ljava/lang/String;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_11
    move-object/from16 v18, v8

    .end local v8    # "tag":Ljava/lang/String;
    .restart local v18    # "tag":Ljava/lang/String;
    goto :goto_9

    .line 297
    .end local v18    # "tag":Ljava/lang/String;
    .restart local v8    # "tag":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v8

    move v1, v14

    move-object/from16 v2, v18

    .end local v8    # "tag":Ljava/lang/String;
    .restart local v18    # "tag":Ljava/lang/String;
    goto :goto_a

    .line 184
    .end local v18    # "tag":Ljava/lang/String;
    .restart local v8    # "tag":Ljava/lang/String;
    :cond_12
    move-object/from16 v18, v8

    .line 179
    .end local v8    # "tag":Ljava/lang/String;
    .restart local v18    # "tag":Ljava/lang/String;
    :goto_9
    move v1, v14

    move-object/from16 v2, v18

    const/4 v12, 0x2

    goto/16 :goto_0

    .line 297
    .end local v18    # "tag":Ljava/lang/String;
    .local v2, "tag":Ljava/lang/String;
    :cond_13
    :try_start_b
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :catchall_3
    move-exception v0

    move v1, v14

    goto :goto_a

    .end local v14    # "type":I
    .restart local v1    # "type":I
    :catchall_4
    move-exception v0

    :goto_a
    :try_start_c
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0
.end method

.method public revokeNotificationDelegate(Ljava/lang/String;I)V
    .locals 5
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I

    .line 1388
    const/4 v0, 0x0

    .line 1389
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1390
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1391
    .local v2, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_0

    .line 1392
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 1393
    const/4 v0, 0x1

    .line 1395
    .end local v2    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    if-eqz v0, :cond_1

    .line 1397
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1399
    :cond_1
    return-void

    .line 1395
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1340
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1341
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1342
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1343
    monitor-exit v0

    return-void

    .line 1346
    :cond_0
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1348
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1350
    return-void

    .line 1348
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setBubblesAllowed(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "allowed"    # Z

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 506
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 507
    .local v2, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-eq v3, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 508
    iput-boolean p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    .line 509
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 510
    .end local v2    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    if-eqz v0, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 514
    :cond_1
    return-void

    .line 510
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .line 1326
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1327
    .local v0, "wasEnabled":Z
    :goto_0
    if-ne v0, p3, :cond_1

    .line 1328
    return-void

    .line 1330
    :cond_1
    nop

    .line 1331
    if-eqz p3, :cond_2

    const/16 v1, -0x3e8

    .line 1330
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->setImportance(Ljava/lang/String;II)V

    .line 1332
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .line 919
    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 920
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .line 1319
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1320
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1323
    return-void

    .line 1321
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I
    .param p3, "delegatePkg"    # Ljava/lang/String;
    .param p4, "delegateUid"    # I

    .line 1374
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1375
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1377
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 1378
    .local v2, "userAllowed":Z
    :goto_1
    new-instance v4, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v4, p3, p4, v3, v2}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object v3, v4

    .line 1379
    .local v3, "delegate":Lcom/android/server/notification/PreferencesHelper$Delegate;
    iput-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1380
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "userAllowed":Z
    .end local v3    # "delegate":Lcom/android/server/notification/PreferencesHelper$Delegate;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1382
    return-void

    .line 1380
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "showBadge"    # Z

    .line 567
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 568
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput-boolean p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 571
    return-void

    .line 569
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public shouldHideSilentStatusIcons()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return v0
.end method

.method public toggleNotificationDelegate(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I
    .param p3, "userAllowed"    # Z

    .line 1405
    const/4 v0, 0x0

    .line 1406
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1407
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1408
    .local v2, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_0

    .line 1409
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iput-boolean p3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 1410
    const/4 v0, 0x1

    .line 1412
    .end local v2    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    if-eqz v0, :cond_1

    .line 1414
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1416
    :cond_1
    return-void

    .line 1412
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateBadgingEnabled()V
    .locals 8

    .line 1916
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 1917
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 1919
    :cond_0
    const/4 v0, 0x0

    .line 1921
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1922
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1923
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 1924
    .local v3, "oldValue":Z
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const-string/jumbo v6, "notification_badging"

    invoke-static {v4, v6, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    .line 1927
    .local v4, "newValue":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1928
    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    or-int/2addr v0, v5

    .line 1921
    .end local v2    # "userId":I
    .end local v3    # "oldValue":Z
    .end local v4    # "newValue":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1930
    .end local v1    # "index":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1931
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1933
    :cond_4
    return-void
.end method

.method public updateBubblesEnabled()V
    .locals 8

    .line 1881
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 1882
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    .line 1884
    :cond_0
    const/4 v0, 0x0

    .line 1886
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1887
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1888
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 1889
    .local v3, "oldValue":Z
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const-string/jumbo v6, "notification_bubbles"

    invoke-static {v4, v6, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    .line 1892
    .local v4, "newValue":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1893
    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    or-int/2addr v0, v5

    .line 1886
    .end local v2    # "userId":I
    .end local v3    # "oldValue":Z
    .end local v4    # "newValue":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1895
    .end local v1    # "index":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1896
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1898
    :cond_4
    return-void
.end method

.method public updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 962
    .local p2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p3, "toAdd":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 964
    .local v2, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 965
    if-eqz p2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 966
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 967
    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 968
    .local v5, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 969
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    goto :goto_1

    .line 972
    .end local v2    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    goto :goto_0

    .line 973
    :cond_1
    if-eqz p3, :cond_3

    .line 974
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 975
    .local v2, "approvedApp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 976
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 975
    invoke-direct {p0, v3, v4}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    .line 977
    .local v3, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 978
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 979
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 980
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    goto :goto_3

    .line 981
    .end local v2    # "approvedApp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_2
    goto :goto_2

    .line 983
    :cond_3
    monitor-exit v0

    .line 984
    return-void

    .line 983
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "updatedChannel"    # Landroid/app/NotificationChannel;
    .param p4, "fromUser"    # Z

    .line 782
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 785
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 786
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_b

    .line 789
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 790
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 793
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 794
    const/16 v3, -0x3e8

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 797
    :cond_0
    if-eqz p4, :cond_1

    .line 798
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 799
    invoke-virtual {p0, v2, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 801
    :cond_1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 804
    :goto_0
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 805
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 806
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 808
    :cond_2
    iget-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 810
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 811
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_3

    .line 812
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 815
    :cond_3
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 820
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 821
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 822
    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 823
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 824
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 827
    :cond_5
    invoke-virtual {v2, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 829
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 830
    if-eqz p4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 829
    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 833
    :cond_7
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v3, v4, :cond_8

    .line 834
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 835
    :cond_8
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 837
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 839
    return-void

    .line 791
    .restart local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_a
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Channel does not exist"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .end local p4    # "fromUser":Z
    throw v3

    .line 787
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromUser":Z
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .end local p4    # "fromUser":Z
    throw v2

    .line 837
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromUser":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateZenPolicy(Z)V
    .locals 9
    .param p1, "areChannelsBypassingDnd"    # Z

    .line 1302
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1303
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1306
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    move v7, v2

    goto :goto_0

    .line 1307
    :cond_0
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 1303
    invoke-virtual {v1, v8}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1308
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V
    .locals 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    const/4 v0, 0x0

    const-string/jumbo v1, "ranking"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 415
    :cond_0
    const-string/jumbo v2, "silent_status_icons"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hide_gentle"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    const-string/jumbo v2, "silent_status_icons"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 421
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 422
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_12

    .line 423
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 424
    .local v5, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz p2, :cond_2

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, p3, :cond_2

    .line 425
    goto/16 :goto_6

    .line 427
    :cond_2
    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v7, -0x3e8

    if-ne v6, v7, :cond_4

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-nez v6, :cond_4

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-ne v6, v7, :cond_4

    iget-boolean v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-ne v6, v1, :cond_4

    iget v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    if-nez v6, :cond_4

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 433
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-gtz v6, :cond_4

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 434
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-gtz v6, :cond_4

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v6, :cond_4

    iget-boolean v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-eq v6, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v1

    .line 437
    .local v6, "hasNonDefaultSettings":Z
    :goto_2
    if-eqz v6, :cond_11

    .line 438
    const-string/jumbo v8, "package"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const-string/jumbo v8, "name"

    iget-object v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq v8, v7, :cond_5

    .line 441
    const-string v8, "importance"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    :cond_5
    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v8, :cond_6

    .line 444
    const-string/jumbo v8, "priority"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    :cond_6
    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v8, v7, :cond_7

    .line 447
    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    :cond_7
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    if-eq v7, v1, :cond_8

    .line 450
    const-string v7, "allow_bubble"

    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowBubble:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    :cond_8
    const-string/jumbo v7, "show_badge"

    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    const-string v7, "app_user_locked_fields"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 454
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 453
    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    if-nez p2, :cond_9

    .line 457
    const-string/jumbo v7, "uid"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    :cond_9
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v7, :cond_c

    .line 461
    const-string v7, "delegate"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    const-string/jumbo v7, "name"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    const-string/jumbo v7, "uid"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v7, v7, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eq v7, v1, :cond_a

    .line 466
    const-string v7, "enabled"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    :cond_a
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v7, v7, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eq v7, v1, :cond_b

    .line 469
    const-string v7, "allowed"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 470
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 469
    invoke-interface {p1, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    :cond_b
    const-string v7, "delegate"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    :cond_c
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    .line 476
    .local v8, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v8, p1}, Landroid/app/NotificationChannelGroup;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 477
    .end local v8    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_3

    .line 479
    :cond_d
    iget-object v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 480
    .local v8, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_e

    .line 481
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    if-nez v9, :cond_f

    .line 482
    iget-object v9, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1, v9}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_5

    .line 485
    :cond_e
    invoke-virtual {v8, p1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 487
    .end local v8    # "channel":Landroid/app/NotificationChannel;
    :cond_f
    :goto_5
    goto :goto_4

    .line 489
    :cond_10
    const-string/jumbo v7, "package"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    .end local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v6    # "hasNonDefaultSettings":Z
    :cond_11
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 492
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_12
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    const-string/jumbo v1, "ranking"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    return-void

    .line 492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
