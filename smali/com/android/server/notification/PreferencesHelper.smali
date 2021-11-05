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

.field private static final ATT_SENT_INVALID_MESSAGE:Ljava/lang/String; = "sent_invalid_msg"

.field private static final ATT_SENT_VALID_MESSAGE:Ljava/lang/String; = "sent_valid_msg"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_USER_ALLOWED:Ljava/lang/String; = "allowed"

.field private static final ATT_USER_DEMOTED_INVALID_MSG_APP:Ljava/lang/String; = "user_demote_msg_app"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_APP_LOCKED_IMPORTANCE:Z = false

.field static final DEFAULT_BUBBLE_PREFERENCE:I = 0x0

.field static final DEFAULT_GLOBAL_ALLOW_BUBBLE:Z = true

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field static final DEFAULT_MEDIA_NOTIFICATION_FILTERING:Z = true

.field private static final DEFAULT_OEM_LOCKED_IMPORTANCE:Z = false

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final NON_BLOCKABLE_CHANNEL_DELIM:Ljava/lang/String; = ":"

.field static final NOTIFICATION_CHANNEL_COUNT_LIMIT:I = 0xc350

.field private static final NOTIFICATION_CHANNEL_GROUP_PULL_LIMIT:I = 0x3e8

.field private static final NOTIFICATION_CHANNEL_PULL_LIMIT:I = 0x7d0

.field private static final NOTIFICATION_PREFERENCES_PULL_LIMIT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "NotificationPrefHelper"

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TAG_DELEGATE:Ljava/lang/String; = "delegate"

.field private static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final TAG_STATUS_ICONS:Ljava/lang/String; = "silent_status_icons"

.field static final UNKNOWN_UID:I = -0x2710

.field private static final XML_VERSION:I = 0x2

.field private static final XML_VERSION_BUBBLES_UPGRADE:I = 0x1


# instance fields
.field private mAllowInvalidShortcuts:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAreChannelsBypassingDnd:Z

.field private mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field private mBubblesEnabledGlobally:Z

.field private final mContext:Landroid/content/Context;

.field private mHideSilentStatusBarIcons:Z

.field private final mIsMediaNotificationFilteringEnabled:Z

.field private final mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field private mOemLockedApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p4, "zenHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p5, "notificationChannelLogger"    # Lcom/android/server/notification/NotificationChannelLogger;
    .param p6, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p7, "statsEventBuilderFactory"    # Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabledGlobally:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    .line 183
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 184
    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 185
    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 186
    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 187
    iput-object p5, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 188
    iput-object p6, p0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 189
    iput-object p7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 193
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 194
    return-void
.end method

.method private channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .locals 3
    .param p1, "pkgPref"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .param p2, "channel"    # Landroid/app/NotificationChannel;

    .line 1653
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1654
    return v1

    .line 1658
    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1662
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1659
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

    .line 466
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 467
    return v1

    .line 470
    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x10402b5

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 473
    return v1

    .line 476
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 478
    return v1

    .line 483
    :cond_2
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 485
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 487
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 488
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 489
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_4

    .line 490
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 492
    :cond_4
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v1, :cond_5

    .line 493
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 495
    :cond_5
    iget v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v1, v2, :cond_6

    .line 496
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 498
    :cond_6
    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
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

    .line 448
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 450
    return v2

    .line 453
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    return v2

    .line 459
    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method private deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)V
    .locals 2
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1112
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1114
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1115
    .local v0, "lm":Landroid/metrics/LogMaker;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1116
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1117
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v1, p1, p3, p2}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 1119
    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 1123
    .end local v0    # "lm":Landroid/metrics/LogMaker;
    :cond_0
    return-void
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

    .line 1910
    .local p4, "packagePreferences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/PreferencesHelper$PackagePreferences;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1912
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1913
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1914
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1915
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1917
    .local v3, "fToken":J
    const-wide v5, 0x10900000001L

    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1918
    const-wide v5, 0x10500000002L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1919
    const-wide v5, 0x11100000003L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1920
    const-wide v5, 0x10500000004L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1921
    const-wide v5, 0x11100000005L

    iget v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1922
    const-wide v5, 0x10800000006L

    iget-boolean v7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1924
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

    .line 1925
    .local v6, "channel":Landroid/app/NotificationChannel;
    const-wide v7, 0x20b00000007L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannel;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1926
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    goto :goto_1

    .line 1927
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

    .line 1928
    .local v6, "group":Landroid/app/NotificationChannelGroup;
    const-wide v7, 0x20b00000008L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannelGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1929
    .end local v6    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_2

    .line 1931
    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1912
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "fToken":J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1934
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

    .line 1854
    .local p3, "packagePreferences":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/PreferencesHelper$PackagePreferences;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1855
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_a

    .line 1856
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1857
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1858
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1859
    const-string v3, "  AppSettings: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1861
    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1862
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

    .line 1863
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1864
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_1

    .line 1865
    const-string v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1866
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1868
    :cond_1
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v3, :cond_2

    .line 1869
    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1870
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1872
    :cond_2
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v3, v4, :cond_3

    .line 1873
    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1874
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    :cond_3
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 1877
    const-string v3, " showBadge="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1878
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1880
    :cond_4
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v3, :cond_5

    .line 1881
    const-string v3, " defaultAppLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1882
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1884
    :cond_5
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-eqz v3, :cond_6

    .line 1885
    const-string v3, " oemLocked="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1886
    iget-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1888
    :cond_6
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1889
    const-string v3, " futureLockedChannels="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1890
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1892
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1893
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

    .line 1894
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const-string v6, "    "

    invoke-virtual {v4, p0, v6, v5}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1896
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    goto :goto_2

    .line 1897
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

    .line 1898
    .local v4, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1899
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1902
    .end local v4    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_3

    .line 1855
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1905
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method private findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 3
    .param p1, "p"    # Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 1067
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 1068
    .local v1, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p4, :cond_0

    .line 1070
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1071
    :cond_0
    return-object v1

    .line 1073
    .end local v1    # "nc":Landroid/app/NotificationChannel;
    :cond_1
    goto :goto_0

    .line 1074
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2305
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2308
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2309
    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2313
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2305
    return-object v0
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2289
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2292
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2293
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2297
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2294
    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2301
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2298
    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2289
    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 379
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;II)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 386
    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "importance"    # I
    .param p5, "priority"    # I
    .param p6, "visibility"    # I
    .param p7, "showBadge"    # Z
    .param p8, "bubblePreference"    # I

    .line 394
    invoke-static {p1, p3}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "key":Ljava/lang/String;
    const/16 v1, -0x2710

    if-ne p3, v1, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_0

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_0
    nop

    .line 399
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_5

    .line 400
    new-instance v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;-><init>(Lcom/android/server/notification/PreferencesHelper$1;)V

    move-object v2, v3

    .line 401
    iput-object p1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 402
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 403
    iput p4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 404
    iput p5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 405
    iput p6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 406
    iput-boolean p7, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 407
    iput p8, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 408
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 410
    .local v3, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 413
    :cond_1
    iput-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    goto :goto_2

    .line 411
    :cond_2
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 418
    .end local v3    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_3

    .line 419
    :catch_0
    move-exception v3

    .line 420
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

    .line 423
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne v3, v1, :cond_4

    .line 424
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 426
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_5
    :goto_4
    return-object v2
.end method

.method private getPackageChannels()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2156
    .local v0, "packageChannels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2158
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2159
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v4, 0x0

    .line 2160
    .local v4, "channelCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2161
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2162
    add-int/lit8 v4, v4, 0x1

    .line 2160
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2165
    .end local v5    # "j":I
    :cond_1
    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    nop

    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4    # "channelCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2167
    .end local v2    # "i":I
    :cond_2
    monitor-exit v1

    .line 2168
    return-object v0

    .line 2167
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

    .line 373
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 374
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

    .line 2374
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

    .line 434
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 435
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 437
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    .line 439
    return v3

    .line 443
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private syncChannelsBypassingDnd(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1612
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

    .line 1614
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 1615
    return-void
.end method

.method private static unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2378
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

.method private updateChannelsBypassingDnd(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1623
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1625
    .local v1, "numPackagePreferences":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1626
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1629
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_3

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v4, :cond_0

    .line 1630
    goto :goto_2

    .line 1633
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

    .line 1634
    .local v5, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v3, v5}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1635
    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-nez v4, :cond_1

    .line 1636
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1637
    invoke-virtual {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1639
    :cond_1
    monitor-exit v0

    return-void

    .line 1641
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    :cond_2
    goto :goto_1

    .line 1625
    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1643
    .end local v1    # "numPackagePreferences":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v0, :cond_5

    .line 1646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    .line 1647
    invoke-virtual {p0, v0}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(Z)V

    .line 1649
    :cond_5
    return-void

    .line 1643
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

    .line 2370
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 2371
    return-void
.end method


# virtual methods
.method public areChannelsBypassingDnd()Z
    .locals 1

    .line 1676
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2356
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2357
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2358
    return v1

    .line 2360
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    .line 2361
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 2362
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 2361
    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2366
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public bubblesEnabled()Z
    .locals 1

    .line 2327
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabledGlobally:Z

    return v0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 662
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 663
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    monitor-exit v0

    return v1

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearData(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2272
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2273
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 2274
    .local v1, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_0

    .line 2275
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 2276
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 2277
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 2278
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 2279
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 2280
    const/16 v3, -0x3e8

    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 2281
    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 2282
    iput v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 2283
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 2285
    .end local v1    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    monitor-exit v0

    .line 2286
    return-void

    .line 2285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V
    .locals 1
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 954
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 955
    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z
    .locals 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromTargetApp"    # Z
    .param p5, "hasDndAccess"    # Z

    .line 810
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 814
    const/4 v3, 0x0

    .local v3, "needsPolicyFileChange":Z
    const/4 v4, 0x0

    .line 815
    .local v4, "wasUndeleted":Z
    iget-object v11, v1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 816
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 817
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v0, :cond_19

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 823
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_1
    :goto_0
    const-string/jumbo v5, "miscellaneous"

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 826
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    move-object v12, v5

    .line 827
    .local v12, "existing":Landroid/app/NotificationChannel;
    const/16 v5, -0x3e8

    const/4 v6, 0x0

    if-eqz v12, :cond_c

    if-eqz p4, :cond_c

    .line 829
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 831
    invoke-virtual {v12, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 832
    const/4 v3, 0x1

    .line 833
    const/4 v4, 0x1

    .line 836
    invoke-direct {v1, v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 838
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, v10, v9, v8}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v13, v4

    goto :goto_1

    .line 829
    :cond_2
    move v13, v4

    .line 841
    .end local v4    # "wasUndeleted":Z
    .local v13, "wasUndeleted":Z
    :goto_1
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 843
    const/4 v2, 0x1

    move v3, v2

    .line 845
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 847
    const/4 v2, 0x1

    move v3, v2

    .line 849
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-eq v2, v4, :cond_5

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 851
    const/4 v2, 0x1

    move v3, v2

    .line 853
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 855
    const/4 v2, 0x1

    move v3, v2

    .line 860
    :cond_6
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    move v14, v2

    .line 861
    .local v14, "previousExistingImportance":I
    nop

    .line 862
    invoke-static {v12}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v6

    .line 863
    .local v6, "previousLoggingImportance":I
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    if-nez v2, :cond_7

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 866
    const/4 v2, 0x1

    move v3, v2

    .line 871
    :cond_7
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    if-nez v2, :cond_9

    if-eqz p5, :cond_9

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    .line 873
    .local v2, "bypassDnd":Z
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    if-eq v2, v4, :cond_9

    .line 874
    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 875
    const/4 v3, 0x1

    .line 877
    iget-boolean v4, v1, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v2, v4, :cond_8

    .line 878
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eq v14, v4, :cond_9

    .line 879
    :cond_8
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 884
    .end local v2    # "bypassDnd":Z
    :cond_9
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v2

    if-ne v2, v5, :cond_a

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 886
    const/4 v2, 0x1

    move v15, v2

    .end local v3    # "needsPolicyFileChange":Z
    .local v2, "needsPolicyFileChange":Z
    goto :goto_2

    .line 884
    .end local v2    # "needsPolicyFileChange":Z
    .restart local v3    # "needsPolicyFileChange":Z
    :cond_a
    move v15, v3

    .line 889
    .end local v3    # "needsPolicyFileChange":Z
    .local v15, "needsPolicyFileChange":Z
    :goto_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 890
    if-eqz v15, :cond_b

    if-nez v13, :cond_b

    .line 891
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v7, 0x0

    move-object v3, v12

    move/from16 v4, p2

    move-object/from16 v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    .line 894
    :cond_b
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v15

    .line 948
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v6    # "previousLoggingImportance":I
    .end local v12    # "existing":Landroid/app/NotificationChannel;
    .end local v14    # "previousExistingImportance":I
    :catchall_0
    move-exception v0

    move v4, v13

    move v3, v15

    goto/16 :goto_5

    .end local v15    # "needsPolicyFileChange":Z
    .restart local v3    # "needsPolicyFileChange":Z
    :catchall_1
    move-exception v0

    move v4, v13

    goto/16 :goto_5

    .line 897
    .end local v13    # "wasUndeleted":Z
    .restart local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v4    # "wasUndeleted":Z
    .restart local v12    # "existing":Landroid/app/NotificationChannel;
    :cond_c
    :try_start_3
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const v13, 0xc350

    if-ge v7, v13, :cond_17

    .line 901
    const/4 v3, 0x1

    .line 903
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    if-ltz v7, :cond_16

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    const/4 v13, 0x5

    if-gt v7, v13, :cond_16

    .line 909
    if-eqz p4, :cond_e

    if-nez p5, :cond_e

    .line 910
    iget v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v13, 0x2

    if-ne v7, v13, :cond_d

    move v7, v2

    goto :goto_3

    :cond_d
    move v7, v6

    :goto_3
    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 912
    :cond_e
    if-eqz p4, :cond_10

    .line 913
    iget v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 914
    if-eqz v12, :cond_f

    .line 915
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v7

    goto :goto_4

    .line 916
    :cond_f
    const/4 v7, -0x1

    .line 914
    :goto_4
    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 918
    :cond_10
    invoke-virtual {v1, v10}, Lcom/android/server/notification/PreferencesHelper;->clearLockedFieldsLocked(Landroid/app/NotificationChannel;)V

    .line 919
    iget-boolean v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 920
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v7

    if-nez v7, :cond_11

    .line 921
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 922
    invoke-virtual {v10, v2}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 925
    :cond_11
    iget-boolean v7, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v10, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v7

    if-ne v7, v2, :cond_12

    .line 927
    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 930
    :cond_12
    iget-boolean v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-nez v5, :cond_13

    .line 931
    invoke-virtual {v10, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 933
    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    .line 936
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 937
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Tried to create a conversation channel without a preexisting parent"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 941
    :cond_14
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    iget-boolean v6, v1, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eq v5, v6, :cond_15

    .line 943
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 945
    :cond_15
    invoke-direct {v1, v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 947
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v2, v10, v9, v8}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 948
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v12    # "existing":Landroid/app/NotificationChannel;
    monitor-exit v11

    .line 950
    return v3

    .line 905
    .restart local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v12    # "existing":Landroid/app/NotificationChannel;
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid importance level"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 898
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Limit exceed; cannot create more channels"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 824
    .end local v12    # "existing":Landroid/app/NotificationChannel;
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Reserved id"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 818
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid package"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "needsPolicyFileChange":Z
    .end local v4    # "wasUndeleted":Z
    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "channel":Landroid/app/NotificationChannel;
    .end local p4    # "fromTargetApp":Z
    .end local p5    # "hasDndAccess":Z
    throw v2

    .line 948
    .end local v0    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v3    # "needsPolicyFileChange":Z
    .restart local v4    # "wasUndeleted":Z
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "channel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromTargetApp":Z
    .restart local p5    # "hasDndAccess":Z
    :catchall_2
    move-exception v0

    :goto_5
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .locals 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromTargetApp"    # Z

    .line 770
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 775
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 776
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_5

    .line 779
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 780
    .local v3, "oldGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v3, :cond_1

    .line 781
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 784
    if-eqz p4, :cond_0

    .line 785
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 786
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->unlockFields(I)V

    .line 787
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    goto :goto_0

    .line 790
    :cond_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 791
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->lockFields(I)V

    .line 792
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 796
    :cond_1
    :goto_0
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 798
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 799
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 801
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v10, v1

    goto :goto_2

    :cond_3
    move v10, v4

    .line 799
    :goto_2
    move-object v6, p3

    move v7, p2

    move-object v8, p1

    invoke-interface/range {v5 .. v10}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Landroid/app/NotificationChannelGroup;ILjava/lang/String;ZZ)V

    .line 803
    :cond_4
    iget-object v1, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    nop

    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "oldGroup":Landroid/app/NotificationChannelGroup;
    monitor-exit v0

    .line 805
    return-void

    .line 777
    .restart local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "group":Landroid/app/NotificationChannelGroup;
    .end local p4    # "fromTargetApp":Z
    throw v1

    .line 804
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

.method public deleteConversation(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1441
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    .local v1, "deletedChannelIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1443
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1444
    monitor-exit v0

    return-object v1

    .line 1446
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1447
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1448
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1449
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1450
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 1451
    invoke-direct {p0, v5, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 1452
    .local v6, "lm":Landroid/metrics/LogMaker;
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1454
    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1455
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v7, v5, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 1457
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    .end local v6    # "lm":Landroid/metrics/LogMaker;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1460
    .end local v4    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v4, :cond_3

    .line 1461
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 1463
    :cond_3
    monitor-exit v0

    return-object v1

    .line 1464
    .end local v1    # "deletedChannelIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 1099
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1100
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1101
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 1102
    monitor-exit v0

    return-void

    .line 1104
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1105
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_1

    .line 1106
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)V

    .line 1108
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    monitor-exit v0

    .line 1109
    return-void

    .line 1108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 8
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

    .line 1320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    .local v0, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1322
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1323
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1327
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 1328
    .local v3, "channelGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v3, :cond_1

    .line 1329
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v4, v3, p2, p1}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroupDeleted(Landroid/app/NotificationChannelGroup;ILjava/lang/String;)V

    .line 1333
    :cond_1
    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1334
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 1335
    iget-object v6, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1336
    .local v6, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1337
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelLocked(Landroid/app/NotificationChannel;Ljava/lang/String;I)V

    .line 1338
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    .end local v6    # "nc":Landroid/app/NotificationChannel;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1341
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "channelGroup":Landroid/app/NotificationChannelGroup;
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_3
    monitor-exit v1

    .line 1342
    return-object v0

    .line 1324
    .restart local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_4
    :goto_1
    monitor-exit v1

    return-object v0

    .line 1341
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method didUserEverDemoteInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 734
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 735
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 736
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    monitor-exit v0

    return v2

    .line 737
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1843
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1844
    const-wide v1, 0x20b00000002L

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1846
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    const-wide v0, 0x20b00000003L

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1849
    return-void

    .line 1846
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

    .line 1830
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    const-string/jumbo v0, "per-package config:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    const-string v0, "PackagePreferences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1835
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1836
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    const-string v0, "Restored without uid:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1839
    return-void

    .line 1836
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

    .line 2092
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2093
    .local v0, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v1

    .line 2094
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

    .line 2095
    .local v3, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2096
    .local v4, "userId":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2097
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2098
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2100
    .local v6, "banJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2101
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2104
    goto :goto_1

    .line 2102
    :catch_0
    move-exception v7

    .line 2103
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 2105
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2107
    .end local v3    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "userId":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "banJson":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 2108
    :cond_2
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 8
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 2136
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2137
    .local v0, "channels":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    .line 2138
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

    .line 2139
    .local v3, "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2140
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2141
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2143
    .local v5, "channelCountJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2144
    const-string v6, "channelCount"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    goto :goto_1

    .line 2145
    :catch_0
    move-exception v6

    .line 2146
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 2148
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2150
    .end local v3    # "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "channelCountJson":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 2151
    :cond_2
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 2025
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2026
    .local v0, "ranking":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2028
    .local v1, "PackagePreferencess":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v2, "noUid"

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    goto :goto_0

    .line 2029
    :catch_0
    move-exception v2

    .line 2032
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2033
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2034
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_8

    .line 2035
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2036
    .local v5, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz p1, :cond_0

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2037
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2039
    .local v6, "PackagePreferences":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v7, "userId"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2040
    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2041
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_1

    .line 2042
    const-string v7, "importance"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 2043
    invoke-static {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    .line 2042
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2046
    :cond_1
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_2

    .line 2047
    const-string/jumbo v7, "priority"

    iget v9, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 2048
    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    .line 2047
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2050
    :cond_2
    iget v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v7, v8, :cond_3

    .line 2051
    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 2052
    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    .line 2051
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2054
    :cond_3
    iget-boolean v7, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 2055
    const-string/jumbo v7, "showBadge"

    iget-boolean v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2057
    :cond_4
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2058
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

    .line 2059
    .local v9, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2060
    nop

    .end local v9    # "channel":Landroid/app/NotificationChannel;
    goto :goto_2

    .line 2061
    :cond_5
    const-string v8, "channels"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2062
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 2063
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

    .line 2064
    .local v10, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2065
    nop

    .end local v10    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_3

    .line 2066
    :cond_6
    const-string v9, "groups"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2069
    .end local v7    # "channels":Lorg/json/JSONArray;
    .end local v8    # "groups":Lorg/json/JSONArray;
    goto :goto_4

    .line 2067
    :catch_1
    move-exception v7

    .line 2070
    :goto_4
    :try_start_3
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2034
    .end local v5    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v6    # "PackagePreferences":Lorg/json/JSONObject;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2073
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2075
    :try_start_4
    const-string v2, "PackagePreferencess"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2078
    goto :goto_5

    .line 2076
    :catch_2
    move-exception v2

    .line 2079
    :goto_5
    return-object v0

    .line 2073
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

    .line 633
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 634
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    monitor-exit v0

    return v1

    .line 635
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

    .line 1584
    const/4 v0, 0x0

    .line 1585
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1586
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1587
    .local v2, "numPackagePreferences":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1588
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1591
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_2

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    .line 1592
    goto :goto_2

    .line 1595
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

    .line 1596
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1597
    add-int/lit8 v0, v0, 0x1

    .line 1598
    goto :goto_2

    .line 1600
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    goto :goto_1

    .line 1587
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1602
    .end local v2    # "numPackagePreferences":I
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1

    .line 1603
    return v0

    .line 1602
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

    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1567
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1568
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1569
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1570
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    .line 1572
    add-int/lit8 v0, v0, 0x1

    .line 1568
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1575
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 1576
    return v0

    .line 1575
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

    .line 1546
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    const/4 v0, 0x0

    .line 1548
    .local v0, "blockedCount":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1549
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1550
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1551
    monitor-exit v1

    return v0

    .line 1553
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1554
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1555
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1556
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-nez v6, :cond_1

    .line 1557
    add-int/lit8 v0, v0, 0x1

    .line 1554
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1560
    .end local v4    # "i":I
    :cond_2
    monitor-exit v1

    return v0

    .line 1561
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBubblePreference(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 627
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 628
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    monitor-exit v0

    return v1

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "conversationId"    # Ljava/lang/String;
    .param p5, "returnParentIfNoConversationChannel"    # Z
    .param p6, "includeDeleted"    # Z

    .line 1040
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1042
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1043
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 1044
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1046
    :cond_0
    if-nez p3, :cond_1

    .line 1047
    const-string/jumbo v2, "miscellaneous"

    move-object p3, v2

    .line 1049
    :cond_1
    const/4 v2, 0x0

    .line 1050
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz p4, :cond_2

    .line 1052
    invoke-direct {p0, v1, p3, p4, p6}, Lcom/android/server/notification/PreferencesHelper;->findConversationChannel(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v3

    move-object v2, v3

    .line 1054
    :cond_2
    if-nez v2, :cond_4

    if-eqz p5, :cond_4

    .line 1056
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1057
    .local v3, "nc":Landroid/app/NotificationChannel;
    if-eqz v3, :cond_4

    if-nez p6, :cond_3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1058
    :cond_3
    monitor-exit v0

    return-object v3

    .line 1061
    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_4
    monitor-exit v0

    return-object v2

    .line 1062
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConversations(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 1399
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1401
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1402
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 1403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v2

    .line 1405
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1406
    .local v2, "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ConversationChannelWrapper;>;"
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1407
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 1408
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1409
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1410
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1411
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1412
    new-instance v6, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v6}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    .line 1413
    .local v6, "conversation":Landroid/service/notification/ConversationChannelWrapper;
    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    .line 1414
    iget v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    .line 1415
    invoke-virtual {v6, v5}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1416
    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1417
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1416
    invoke-virtual {v6, v7}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    .line 1418
    const/4 v7, 0x0

    .line 1419
    .local v7, "blockedByGroup":Z
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1420
    iget-object v8, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    .line 1421
    .local v8, "group":Landroid/app/NotificationChannelGroup;
    if-eqz v8, :cond_2

    .line 1422
    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1423
    const/4 v7, 0x1

    goto :goto_1

    .line 1425
    :cond_1
    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    .line 1429
    .end local v8    # "group":Landroid/app/NotificationChannelGroup;
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    .line 1430
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    .end local v6    # "conversation":Landroid/service/notification/ConversationChannelWrapper;
    .end local v7    # "blockedByGroup":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1435
    .end local v4    # "i":I
    :cond_4
    monitor-exit v0

    return-object v2

    .line 1436
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ConversationChannelWrapper;>;"
    .end local v3    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConversations(Z)Ljava/util/ArrayList;
    .locals 11
    .param p1, "onlyImportant"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1361
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    .local v1, "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ConversationChannelWrapper;>;"
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1364
    .local v3, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1365
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 1366
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1367
    .local v6, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1368
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1369
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_3

    .line 1370
    :cond_0
    new-instance v7, Landroid/service/notification/ConversationChannelWrapper;

    invoke-direct {v7}, Landroid/service/notification/ConversationChannelWrapper;-><init>()V

    .line 1371
    .local v7, "conversation":Landroid/service/notification/ConversationChannelWrapper;
    iget-object v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setPkg(Ljava/lang/String;)V

    .line 1372
    iget v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setUid(I)V

    .line 1373
    invoke-virtual {v7, v6}, Landroid/service/notification/ConversationChannelWrapper;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1374
    iget-object v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 1375
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 1374
    invoke-virtual {v7, v8}, Landroid/service/notification/ConversationChannelWrapper;->setParentChannelLabel(Ljava/lang/CharSequence;)V

    .line 1376
    const/4 v8, 0x0

    .line 1377
    .local v8, "blockedByGroup":Z
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1378
    iget-object v9, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 1379
    .local v9, "group":Landroid/app/NotificationChannelGroup;
    if-eqz v9, :cond_2

    .line 1380
    invoke-virtual {v9}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1381
    const/4 v8, 0x1

    goto :goto_2

    .line 1383
    :cond_1
    invoke-virtual {v9}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/service/notification/ConversationChannelWrapper;->setGroupLabel(Ljava/lang/CharSequence;)V

    .line 1387
    .end local v9    # "group":Landroid/app/NotificationChannelGroup;
    :cond_2
    :goto_2
    if-nez v8, :cond_3

    .line 1388
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    .end local v6    # "nc":Landroid/app/NotificationChannel;
    .end local v7    # "conversation":Landroid/service/notification/ConversationChannelWrapper;
    .end local v8    # "blockedByGroup":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1392
    .end local v3    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_4
    goto/16 :goto_0

    .line 1394
    :cond_5
    monitor-exit v0

    return-object v1

    .line 1395
    .end local v1    # "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/ConversationChannelWrapper;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1527
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const/4 v0, 0x0

    .line 1529
    .local v0, "deletedCount":I
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1530
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1531
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1532
    monitor-exit v1

    return v0

    .line 1534
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1535
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1536
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1537
    .local v5, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1538
    add-int/lit8 v0, v0, 0x1

    .line 1535
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1541
    .end local v4    # "i":I
    :cond_2
    monitor-exit v1

    return v0

    .line 1542
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

    .line 643
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 644
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    monitor-exit v0

    return v1

    .line 645
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

    .line 654
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 655
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 656
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

    .line 657
    .end local v1    # "userLockedFields":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 1032
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1263
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1265
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1266
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 1267
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1269
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object v2

    .line 1270
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

    .line 1240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1242
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1243
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1246
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 1247
    .local v2, "group":Landroid/app/NotificationChannelGroup;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1248
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1249
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1250
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1251
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p4, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1252
    :cond_1
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1253
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1249
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1257
    .end local v4    # "i":I
    :cond_3
    monitor-exit v0

    return-object v2

    .line 1244
    .end local v2    # "group":Landroid/app/NotificationChannelGroup;
    .end local v3    # "N":I
    :cond_4
    :goto_1
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1258
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

    .line 1276
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    .line 1278
    .local v1, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1279
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    .line 1280
    .local v0, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v0, :cond_0

    .line 1281
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 1283
    :cond_0
    new-instance v4, Landroid/app/NotificationChannelGroup;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1284
    .local v4, "nonGrouped":Landroid/app/NotificationChannelGroup;
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1285
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 1286
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    .line 1287
    .local v8, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_1

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1288
    :cond_1
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1289
    iget-object v9, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1290
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 1291
    .local v9, "ncg":Landroid/app/NotificationChannelGroup;
    if-nez v9, :cond_2

    .line 1292
    iget-object v10, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v10

    move-object v9, v10

    .line 1293
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 1294
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    :cond_2
    invoke-virtual {v9, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1298
    .end local v9    # "ncg":Landroid/app/NotificationChannelGroup;
    goto :goto_1

    .line 1300
    :cond_3
    invoke-virtual {v4, v8}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 1285
    .end local v8    # "nc":Landroid/app/NotificationChannel;
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1304
    .end local v7    # "i":I
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1305
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    :cond_6
    if-eqz p5, :cond_8

    .line 1308
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

    .line 1309
    .local v7, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1310
    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    .end local v7    # "group":Landroid/app/NotificationChannelGroup;
    :cond_7
    goto :goto_2

    .line 1314
    :cond_8
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v3

    return-object v5

    .line 1315
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

    .line 1348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1350
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1351
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1352
    monitor-exit v1

    return-object v0

    .line 1354
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1355
    nop

    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v1

    .line 1356
    return-object v0

    .line 1355
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

    .line 1470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1473
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1474
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1475
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1477
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1478
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1479
    iget-object v5, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1480
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_1

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1481
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1484
    .end local v4    # "i":I
    :cond_3
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 1485
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "N":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNotificationChannelsByConversationId(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
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

    .line 1079
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1083
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1084
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v2, :cond_0

    .line 1085
    monitor-exit v1

    return-object v0

    .line 1087
    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1088
    .local v4, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1089
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1090
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    .end local v4    # "nc":Landroid/app/NotificationChannel;
    :cond_1
    goto :goto_0

    .line 1093
    :cond_2
    monitor-exit v1

    return-object v0

    .line 1094
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
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

    .line 1493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1494
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1495
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    .line 1496
    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1495
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1498
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v3, :cond_1

    .line 1499
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

    .line 1500
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v2, v4}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1501
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    goto :goto_0

    .line 1505
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 1505
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

    .line 1722
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1723
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1725
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1728
    :cond_0
    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 1731
    :cond_1
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1729
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    .line 1726
    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    .line 1732
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

    .line 2112
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2114
    .local v1, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2115
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 2116
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2117
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_0

    .line 2118
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2122
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    return-object v2

    .line 2123
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

    .line 756
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 757
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    monitor-exit v0

    return v1

    .line 758
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

    .line 762
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 763
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    monitor-exit v0

    return v1

    .line 764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasSentInvalidMsg(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 718
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 719
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 720
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    monitor-exit v0

    return v2

    .line 721
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasSentValidMsg(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 726
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 727
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 728
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    monitor-exit v0

    return v2

    .line 729
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 683
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 684
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 685
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 686
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
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

    .line 1790
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1791
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1793
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

    .line 1795
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

    .line 742
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 743
    return v0

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 746
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 747
    .local v2, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 748
    .local v3, "group":Landroid/app/NotificationChannelGroup;
    if-nez v3, :cond_1

    .line 749
    monitor-exit v1

    return v0

    .line 751
    :cond_1
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 752
    .end local v2    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v3    # "group":Landroid/app/NotificationChannelGroup;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 676
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 677
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 678
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 679
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMediaNotificationFilteringEnabled()Z
    .locals 1

    .line 2332
    const/4 v0, 0x1

    return v0
.end method

.method public lockChannelsForOEM([Ljava/lang/String;)V
    .locals 14
    .param p1, "appOrChannelList"    # [Ljava/lang/String;

    .line 1166
    if-nez p1, :cond_0

    .line 1167
    return-void

    .line 1169
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_a

    aget-object v3, p1, v2

    .line 1170
    .local v3, "appOrChannel":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1171
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, "appSplit":[Ljava/lang/String;
    if-eqz v4, :cond_9

    array-length v5, v4

    if-lez v5, :cond_9

    .line 1173
    aget-object v5, v4, v1

    .line 1174
    .local v5, "appName":Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    aget-object v6, v4, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 1176
    .local v6, "channelId":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1177
    const/4 v9, 0x0

    .line 1178
    .local v9, "foundApp":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1179
    .local v11, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1180
    const/4 v9, 0x1

    .line 1181
    if-nez v6, :cond_3

    .line 1183
    iput-boolean v8, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    .line 1184
    iget-object v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationChannel;

    .line 1185
    .local v13, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v13, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 1186
    .end local v13    # "channel":Landroid/app/NotificationChannel;
    goto :goto_3

    :cond_2
    goto :goto_4

    .line 1188
    :cond_3
    iget-object v12, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationChannel;

    .line 1189
    .local v12, "channel":Landroid/app/NotificationChannel;
    if-eqz v12, :cond_4

    .line 1190
    invoke-virtual {v12, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 1194
    :cond_4
    iget-object v13, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    .end local v11    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v12    # "channel":Landroid/app/NotificationChannel;
    :cond_5
    :goto_4
    goto :goto_2

    .line 1198
    :cond_6
    if-nez v9, :cond_8

    .line 1199
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    invoke-interface {v8, v5, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1201
    .local v8, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_7

    .line 1202
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_7
    iget-object v10, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    invoke-interface {v10, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    .end local v8    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "foundApp":Z
    :cond_8
    monitor-exit v7

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1169
    .end local v3    # "appOrChannel":Ljava/lang/String;
    .end local v4    # "appSplit":[Ljava/lang/String;
    .end local v5    # "appName":Ljava/lang/String;
    .end local v6    # "channelId":Ljava/lang/String;
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1210
    :cond_a
    return-void
.end method

.method lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 2
    .param p1, "original"    # Landroid/app/NotificationChannel;
    .param p2, "update"    # Landroid/app/NotificationChannel;

    .line 1800
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1801
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1803
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1804
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1806
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1807
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1809
    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1810
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1811
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1813
    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1814
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1816
    :cond_5
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1817
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 1818
    :cond_6
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1820
    :cond_7
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_8

    .line 1821
    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1823
    :cond_8
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1824
    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1826
    :cond_9
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2198
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2200
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2201
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2202
    .local v3, "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 2203
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2205
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 2207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10402b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2206
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 2200
    .end local v3    # "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2212
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 2213
    return-void

    .line 2212
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

    .line 2217
    const/4 v0, 0x0

    if-eqz p3, :cond_7

    array-length v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 2220
    :cond_0
    const/4 v1, 0x0

    .line 2221
    .local v1, "updated":Z
    if-eqz p1, :cond_2

    .line 2223
    array-length v0, p3

    array-length v2, p4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2224
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2225
    aget-object v3, p3, v2

    .line 2226
    .local v3, "pkg":Ljava/lang/String;
    aget v4, p4, v2

    .line 2227
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 2228
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2230
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    const/4 v1, 0x1

    .line 2224
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2229
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2233
    .end local v0    # "size":I
    .end local v2    # "i":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_1
    goto :goto_4

    .line 2234
    :cond_2
    array-length v2, p3

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, p3, v0

    .line 2236
    .restart local v3    # "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 2237
    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2238
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v4, :cond_3

    .line 2240
    :try_start_2
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    .line 2241
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v3, p2}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2243
    :try_start_3
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7, v8}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    monitor-exit v5

    .line 2245
    const/4 v1, 0x1

    .line 2248
    goto :goto_2

    .line 2244
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

    .line 2246
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

    .line 2252
    :cond_3
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2253
    :try_start_6
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 2254
    invoke-virtual {v6, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6

    .line 2253
    invoke-direct {p0, v3, v6}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v6

    .line 2255
    .local v6, "fullPackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v6, :cond_4

    .line 2256
    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 2257
    invoke-direct {p0, v6}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 2259
    .end local v6    # "fullPackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_4
    monitor-exit v5

    .line 2261
    goto :goto_3

    .line 2259
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

    .line 2260
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

    .line 2234
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2265
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 2266
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2268
    :cond_6
    return v1

    .line 2218
    .end local v1    # "updated":Z
    :cond_7
    :goto_5
    return v0
.end method

.method public onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 2186
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2188
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2189
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2190
    .local v3, "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2191
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2188
    .end local v3    # "PackagePreferences":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2194
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 2195
    return-void

    .line 2194
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

    .line 2175
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 2176
    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 2182
    invoke-direct {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->syncChannelsBypassingDnd(I)V

    .line 2183
    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1516
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1517
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1518
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    .line 1519
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1520
    monitor-exit v0

    return v3

    .line 1522
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1523
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

    .line 1128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1131
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1132
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 1133
    monitor-exit v0

    return-void

    .line 1135
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    nop

    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0

    .line 1137
    return-void

    .line 1136
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

    .line 1141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1143
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1144
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-nez v1, :cond_0

    .line 1145
    monitor-exit v0

    return-void

    .line 1147
    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1148
    .local v2, "N":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1149
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1150
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1151
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1154
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 1155
    return-void

    .line 1154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1998
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1999
    const/4 v1, 0x0

    .line 2000
    .local v1, "totalGroupsPulled":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2001
    const/16 v3, 0x3e8

    if-le v1, v3, :cond_0

    .line 2002
    goto :goto_3

    .line 2004
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 2005
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 2006
    .local v6, "groupChannel":Landroid/app/NotificationChannelGroup;
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_1

    .line 2007
    goto :goto_2

    .line 2009
    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    const/16 v8, 0x2759

    .line 2010
    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    .line 2011
    .local v7, "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2012
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2013
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2014
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2015
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2016
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2017
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 2018
    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    nop

    .end local v6    # "groupChannel":Landroid/app/NotificationChannelGroup;
    .end local v7    # "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    goto :goto_1

    .line 2000
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2021
    .end local v1    # "totalGroupsPulled":I
    .end local v2    # "i":I
    :cond_3
    :goto_3
    monitor-exit v0

    .line 2022
    return-void

    .line 2021
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullPackageChannelPreferencesStats(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1963
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1964
    const/4 v1, 0x0

    .line 1965
    .local v1, "totalChannelsPulled":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1966
    const/16 v3, 0x7d0

    if-le v1, v3, :cond_0

    .line 1967
    goto/16 :goto_4

    .line 1969
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1970
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1971
    .local v6, "channel":Landroid/app/NotificationChannel;
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_1

    .line 1972
    goto :goto_3

    .line 1974
    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    const/16 v8, 0x2758

    .line 1975
    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v7

    .line 1976
    .local v7, "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1977
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1978
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1979
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1980
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1981
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1982
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1983
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1984
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1985
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1986
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1987
    invoke-virtual {v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1988
    nop

    .end local v6    # "channel":Landroid/app/NotificationChannel;
    .end local v7    # "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    goto :goto_1

    .line 1965
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1990
    .end local v1    # "totalChannelsPulled":I
    .end local v2    # "i":I
    :cond_4
    :goto_4
    monitor-exit v0

    .line 1991
    return-void

    .line 1990
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullPackagePreferencesStats(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1940
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1941
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1942
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 1943
    goto :goto_1

    .line 1945
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v2}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    const/16 v3, 0x2757

    .line 1946
    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1947
    .local v2, "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 1948
    .local v3, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1949
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1950
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1951
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1952
    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1953
    invoke-virtual {v2}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1941
    nop

    .end local v2    # "event":Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .end local v3    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1955
    .end local v1    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1956
    return-void

    .line 1955
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 199
    .local v0, "type":I
    const/4 v13, 0x2

    if-eq v0, v13, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 203
    :cond_1
    const/4 v2, 0x0

    .line 204
    .local v2, "upgradeForBubbles":Z
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lez v3, :cond_3

    .line 205
    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "attribute":Ljava/lang/String;
    const-string/jumbo v4, "version"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 208
    .local v4, "xmlVersion":I
    if-ne v4, v14, :cond_2

    move v5, v14

    goto :goto_0

    :cond_2
    move v5, v15

    :goto_0
    move v2, v5

    move/from16 v16, v2

    goto :goto_1

    .line 211
    .end local v3    # "attribute":Ljava/lang/String;
    .end local v4    # "xmlVersion":I
    :cond_3
    move/from16 v16, v2

    .end local v2    # "upgradeForBubbles":Z
    .local v16, "upgradeForBubbles":Z
    :goto_1
    iget-object v8, v10, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v8

    move-object v2, v1

    move v1, v0

    .line 212
    .end local v0    # "type":I
    .local v1, "type":I
    .local v2, "tag":Ljava/lang/String;
    :goto_2
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move v7, v0

    .end local v1    # "type":I
    .local v7, "type":I
    if-eq v0, v14, :cond_1c

    .line 213
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v6, v0

    .line 214
    .end local v2    # "tag":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    const/4 v5, 0x3

    if-ne v7, v5, :cond_4

    :try_start_2
    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    move-object v2, v6

    move v1, v7

    move-object/from16 v21, v8

    goto/16 :goto_f

    .line 217
    :cond_4
    if-ne v7, v13, :cond_1b

    .line 218
    :try_start_3
    const-string/jumbo v0, "silent_status_icons"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_6

    .line 219
    if-eqz p2, :cond_5

    if-eqz v12, :cond_5

    .line 220
    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_e

    .line 222
    :cond_5
    :try_start_4
    const-string v0, "hide_gentle"

    invoke-static {v11, v0, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_e

    .line 224
    :cond_6
    :try_start_5
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 225
    const-string/jumbo v0, "uid"

    const/16 v4, -0x2710

    invoke-static {v11, v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 226
    .local v1, "uid":I
    const-string/jumbo v0, "name"

    const/4 v3, 0x0

    invoke-interface {v11, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 227
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v0, :cond_19

    .line 228
    if-eqz p2, :cond_7

    .line 230
    :try_start_6
    iget-object v0, v10, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2, v12}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v0

    .line 233
    goto :goto_3

    .line 231
    :catch_0
    move-exception v0

    .line 235
    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 236
    .local v0, "skipWarningLogged":Z
    const/4 v9, 0x0

    .line 237
    .local v9, "hasSAWPermission":Z
    if-eqz v16, :cond_9

    if-eq v1, v4, :cond_9

    .line 238
    :try_start_7
    iget-object v3, v10, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v18, 0x18

    const/16 v21, 0x0

    const-string v22, "check-notif-bubble"

    move-object/from16 v17, v3

    move/from16 v19, v1

    move-object/from16 v20, v2

    invoke-virtual/range {v17 .. v22}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v3, :cond_8

    move v3, v14

    goto :goto_4

    :cond_8
    move v3, v15

    :goto_4
    move v9, v3

    move/from16 v17, v9

    goto :goto_5

    .line 242
    :cond_9
    move/from16 v17, v9

    .end local v9    # "hasSAWPermission":Z
    .local v17, "hasSAWPermission":Z
    :goto_5
    if-eqz v17, :cond_a

    .line 243
    move v9, v14

    goto :goto_6

    .line 244
    :cond_a
    :try_start_8
    const-string v3, "allow_bubble"

    invoke-static {v11, v3, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move v9, v3

    :goto_6
    nop

    .line 247
    .local v9, "bubblePref":I
    const-string v3, "importance"

    .line 249
    const/16 v13, -0x3e8

    invoke-static {v11, v3, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v3, "priority"

    .line 251
    invoke-static {v11, v3, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v3, "visibility"

    .line 253
    invoke-static {v11, v3, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v3, "show_badge"

    .line 255
    invoke-static {v11, v3, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 247
    move/from16 v23, v1

    .end local v1    # "uid":I
    .local v23, "uid":I
    move-object/from16 v1, p0

    move-object/from16 v24, v2

    .end local v2    # "name":Ljava/lang/String;
    .local v24, "name":Ljava/lang/String;
    move/from16 v3, p3

    move/from16 v4, v23

    move/from16 v5, v19

    move-object/from16 v19, v6

    .end local v6    # "tag":Ljava/lang/String;
    .local v19, "tag":Ljava/lang/String;
    move/from16 v6, v20

    move/from16 v20, v7

    .end local v7    # "type":I
    .local v20, "type":I
    move/from16 v7, v21

    move-object/from16 v21, v8

    move/from16 v8, v22

    :try_start_9
    invoke-direct/range {v1 .. v9}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 258
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const-string v2, "importance"

    invoke-static {v11, v2, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 260
    const-string/jumbo v2, "priority"

    invoke-static {v11, v2, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 262
    const-string/jumbo v2, "visibility"

    invoke-static {v11, v2, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 264
    const-string/jumbo v2, "show_badge"

    invoke-static {v11, v2, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 266
    const-string v2, "app_user_locked_fields"

    invoke-static {v11, v2, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 268
    const-string/jumbo v2, "sent_invalid_msg"

    invoke-static {v11, v2, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 270
    const-string/jumbo v2, "sent_valid_msg"

    invoke-static {v11, v2, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 272
    const-string/jumbo v2, "user_demote_msg_app"

    invoke-static {v11, v2, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 275
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v3, v0

    .line 276
    .end local v0    # "skipWarningLogged":Z
    .local v2, "innerDepth":I
    .local v3, "skipWarningLogged":Z
    :goto_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move v4, v0

    .end local v20    # "type":I
    .local v4, "type":I
    if-eq v0, v14, :cond_18

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 278
    :try_start_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_18

    .line 279
    :cond_b
    if-eq v4, v5, :cond_17

    const/4 v0, 0x4

    if-ne v4, v0, :cond_c

    .line 280
    goto/16 :goto_b

    .line 283
    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "tagName":Ljava/lang/String;
    const-string v6, "channelGroup"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 286
    const-string v6, "id"

    const/4 v7, 0x0

    invoke-interface {v11, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "id":Ljava/lang/String;
    const-string/jumbo v8, "name"

    invoke-interface {v11, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "groupName":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 290
    new-instance v5, Landroid/app/NotificationChannelGroup;

    invoke-direct {v5, v6, v8}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 292
    .local v5, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v5, v11}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 293
    iget-object v15, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v15, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 285
    .end local v5    # "group":Landroid/app/NotificationChannelGroup;
    .end local v6    # "id":Ljava/lang/String;
    .end local v8    # "groupName":Ljava/lang/CharSequence;
    :cond_d
    const/4 v7, 0x0

    .line 297
    :cond_e
    :goto_8
    const-string v5, "channel"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 298
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const v6, 0xc350

    if-lt v5, v6, :cond_f

    .line 299
    if-nez v3, :cond_17

    .line 300
    const-string v5, "NotificationPrefHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping further channels for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; app has too many"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v3, 0x1

    move/from16 v20, v4

    const/4 v15, 0x0

    goto :goto_7

    .line 306
    :cond_f
    const-string v5, "id"

    invoke-interface {v11, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v11, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, "channelName":Ljava/lang/String;
    const-string v8, "importance"

    invoke-static {v11, v8, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 310
    .local v8, "channelImportance":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_14

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 311
    new-instance v15, Landroid/app/NotificationChannel;

    invoke-direct {v15, v5, v6, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 313
    .local v15, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_10

    .line 314
    iget-object v7, v10, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v11, v7}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_9

    .line 316
    :cond_10
    invoke-virtual {v15, v11}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 318
    :goto_9
    iget-boolean v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v15, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 320
    iget-boolean v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v15, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 321
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v7

    if-nez v7, :cond_11

    .line 322
    iget-object v7, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 323
    invoke-virtual {v15, v14}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 326
    :cond_11
    nop

    .line 327
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 328
    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    const-string v13, ":placeholder_id"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    move v7, v14

    goto :goto_a

    :cond_12
    const/4 v7, 0x0

    .line 330
    .local v7, "isInvalidShortcutChannel":Z
    :goto_a
    iget-boolean v13, v10, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    if-nez v13, :cond_13

    iget-boolean v13, v10, Lcom/android/server/notification/PreferencesHelper;->mAllowInvalidShortcuts:Z

    if-nez v13, :cond_14

    if-nez v7, :cond_14

    .line 332
    :cond_13
    iget-object v13, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "channelName":Ljava/lang/String;
    .end local v7    # "isInvalidShortcutChannel":Z
    .end local v8    # "channelImportance":I
    .end local v15    # "channel":Landroid/app/NotificationChannel;
    :cond_14
    const-string v5, "delegate"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 338
    const-string/jumbo v5, "uid"

    .line 339
    const/16 v6, -0x2710

    invoke-static {v11, v5, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 340
    .local v5, "delegateId":I
    const-string/jumbo v7, "name"

    .line 341
    invoke-static {v11, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "delegateName":Ljava/lang/String;
    const-string v8, "enabled"

    invoke-static {v11, v8, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    .line 344
    .local v8, "delegateEnabled":Z
    const-string v13, "allowed"

    invoke-static {v11, v13, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v13

    .line 347
    .local v13, "userAllowed":Z
    const/4 v15, 0x0

    .line 348
    .local v15, "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    if-eq v5, v6, :cond_15

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_15

    .line 350
    new-instance v6, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v6, v7, v5, v8, v13}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object v15, v6

    .line 354
    :cond_15
    iput-object v15, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 357
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v5    # "delegateId":I
    .end local v7    # "delegateName":Ljava/lang/String;
    .end local v8    # "delegateEnabled":Z
    .end local v13    # "userAllowed":Z
    .end local v15    # "d":Lcom/android/server/notification/PreferencesHelper$Delegate;
    :cond_16
    nop

    .line 276
    :cond_17
    :goto_b
    move/from16 v20, v4

    const/16 v13, -0x3e8

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 360
    :cond_18
    :try_start_b
    invoke-direct {v10, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 363
    goto :goto_c

    .line 368
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "innerDepth":I
    .end local v3    # "skipWarningLogged":Z
    .end local v9    # "bubblePref":I
    .end local v17    # "hasSAWPermission":Z
    .end local v23    # "uid":I
    .end local v24    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move v1, v4

    move-object/from16 v2, v19

    goto/16 :goto_f

    .line 361
    .restart local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v2    # "innerDepth":I
    .restart local v3    # "skipWarningLogged":Z
    .restart local v9    # "bubblePref":I
    .restart local v17    # "hasSAWPermission":Z
    .restart local v23    # "uid":I
    .restart local v24    # "name":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 362
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_c
    const-string v5, "NotificationPrefHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 365
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "innerDepth":I
    .end local v3    # "skipWarningLogged":Z
    .end local v9    # "bubblePref":I
    .end local v17    # "hasSAWPermission":Z
    .end local v23    # "uid":I
    .end local v24    # "name":Ljava/lang/String;
    :goto_c
    move v1, v4

    goto :goto_d

    .line 368
    .end local v4    # "type":I
    .restart local v20    # "type":I
    :catchall_2
    move-exception v0

    move-object/from16 v2, v19

    move/from16 v1, v20

    goto :goto_f

    .line 227
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "type":I
    .local v1, "uid":I
    .local v2, "name":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    .local v7, "type":I
    :cond_19
    move-object/from16 v24, v2

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "type":I
    .restart local v24    # "name":Ljava/lang/String;
    move/from16 v1, v20

    .line 365
    .end local v20    # "type":I
    .end local v24    # "name":Ljava/lang/String;
    .local v1, "type":I
    :goto_d
    move-object/from16 v2, v19

    move-object/from16 v8, v21

    const/4 v13, 0x2

    const/4 v15, 0x0

    goto/16 :goto_2

    .line 224
    .end local v1    # "type":I
    .end local v19    # "tag":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_1a
    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "type":I
    goto :goto_e

    .line 368
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "type":I
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :catchall_3
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v2, v19

    move/from16 v1, v20

    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "type":I
    goto :goto_f

    .line 217
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "type":I
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_1b
    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    .line 212
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "type":I
    :goto_e
    move-object/from16 v2, v19

    move/from16 v1, v20

    move-object/from16 v8, v21

    const/4 v13, 0x2

    const/4 v15, 0x0

    goto/16 :goto_2

    .line 368
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "type":I
    .local v2, "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :catchall_4
    move-exception v0

    move/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v1, v20

    .end local v7    # "type":I
    .restart local v20    # "type":I
    goto :goto_f

    .end local v20    # "type":I
    .restart local v7    # "type":I
    :cond_1c
    move/from16 v20, v7

    move-object/from16 v21, v8

    .end local v7    # "type":I
    .restart local v20    # "type":I
    :try_start_d
    monitor-exit v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :catchall_5
    move-exception v0

    move/from16 v1, v20

    goto :goto_f

    .end local v20    # "type":I
    .restart local v1    # "type":I
    :catchall_6
    move-exception v0

    move-object/from16 v21, v8

    :goto_f
    :try_start_e
    monitor-exit v21
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_f
.end method

.method public revokeNotificationDelegate(Ljava/lang/String;I)V
    .locals 5
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I

    .line 1754
    const/4 v0, 0x0

    .line 1755
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1756
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1757
    .local v2, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_0

    .line 1758
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 1759
    const/4 v0, 0x1

    .line 1761
    .end local v2    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    if-eqz v0, :cond_1

    .line 1763
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1765
    :cond_1
    return-void

    .line 1761
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

    .line 1706
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1707
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1708
    .local v1, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1709
    monitor-exit v0

    return-void

    .line 1712
    :cond_0
    iget v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 1714
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1715
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1716
    return-void

    .line 1714
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setBubblesAllowed(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "bubblePreference"    # I

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 608
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 609
    .local v2, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eq v3, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 610
    iput p3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 611
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 612
    .end local v2    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    if-eqz v0, :cond_1

    .line 614
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 616
    :cond_1
    return-void

    .line 612
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

    .line 1691
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1692
    .local v0, "wasEnabled":Z
    :goto_0
    if-ne v0, p3, :cond_1

    .line 1693
    return-void

    .line 1695
    :cond_1
    nop

    .line 1696
    if-eqz p3, :cond_2

    const/16 v1, -0x3e8

    .line 1695
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->setImportance(Ljava/lang/String;II)V

    .line 1697
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-interface {v1, p2, p1, p3}, Lcom/android/server/notification/NotificationChannelLogger;->logAppNotificationsAllowed(ILjava/lang/String;Z)V

    .line 1698
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .line 1162
    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    .line 1163
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .line 1684
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1685
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1686
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1688
    return-void

    .line 1686
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setInvalidMessageSent(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 697
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 698
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 699
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 700
    .local v2, "valueChanged":Z
    :goto_0
    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 702
    monitor-exit v0

    return v2

    .line 703
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "valueChanged":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isDemoted"    # Z

    .line 690
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 691
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 692
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iput-boolean p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 693
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    monitor-exit v0

    .line 694
    return-void

    .line 693
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I
    .param p3, "delegatePkg"    # Ljava/lang/String;
    .param p4, "delegateUid"    # I

    .line 1740
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1741
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 1743
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

    .line 1744
    .local v2, "userAllowed":Z
    :goto_1
    new-instance v4, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v4, p3, p4, v3, v2}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(Ljava/lang/String;IZZ)V

    move-object v3, v4

    .line 1745
    .local v3, "delegate":Lcom/android/server/notification/PreferencesHelper$Delegate;
    iput-object v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    .line 1746
    .end local v1    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "userAllowed":Z
    .end local v3    # "delegate":Lcom/android/server/notification/PreferencesHelper$Delegate;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1747
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1748
    return-void

    .line 1746
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

    .line 669
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 670
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iput-boolean p3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 671
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 673
    return-void

    .line 671
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setValidMessageSent(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 707
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 708
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 709
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget-boolean v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 710
    .local v2, "valueChanged":Z
    :goto_0
    iput-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 712
    monitor-exit v0

    return v2

    .line 713
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "valueChanged":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldHideSilentStatusIcons()Z
    .locals 1

    .line 1158
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    return v0
.end method

.method public toggleNotificationDelegate(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "sourceUid"    # I
    .param p3, "userAllowed"    # Z

    .line 1771
    const/4 v0, 0x0

    .line 1772
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1773
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    .line 1774
    .local v2, "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v3, :cond_0

    .line 1775
    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iput-boolean p3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 1776
    const/4 v0, 0x1

    .line 1778
    .end local v2    # "prefs":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    if-eqz v0, :cond_1

    .line 1780
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1782
    :cond_1
    return-void

    .line 1778
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

    .line 2336
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 2337
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 2339
    :cond_0
    const/4 v0, 0x0

    .line 2341
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2342
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2343
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 2344
    .local v3, "oldValue":Z
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    .line 2347
    .local v4, "newValue":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2348
    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    or-int/2addr v0, v6

    .line 2341
    .end local v2    # "userId":I
    .end local v3    # "oldValue":Z
    .end local v4    # "newValue":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2350
    .end local v1    # "index":I
    :cond_3
    if-eqz v0, :cond_4

    .line 2351
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2353
    :cond_4
    return-void
.end method

.method public updateBubblesEnabled()V
    .locals 3

    .line 2317
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_bubbles"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 2320
    .local v0, "newValue":Z
    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabledGlobally:Z

    if-eq v0, v1, :cond_1

    .line 2321
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabledGlobally:Z

    .line 2322
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 2324
    :cond_1
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

    .line 1214
    .local p2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p3, "toAdd":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1215
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

    .line 1216
    .local v2, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1217
    if-eqz p2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1218
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1219
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

    .line 1220
    .local v5, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1221
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    goto :goto_1

    .line 1224
    .end local v2    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_0
    goto :goto_0

    .line 1225
    :cond_1
    if-eqz p3, :cond_3

    .line 1226
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1227
    .local v2, "approvedApp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1228
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1227
    invoke-direct {p0, v3, v4}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    .line 1229
    .local v3, "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    .line 1230
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

    .line 1231
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v4}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 1232
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    goto :goto_3

    .line 1233
    .end local v2    # "approvedApp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "p":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    :cond_2
    goto :goto_2

    .line 1235
    :cond_3
    monitor-exit v0

    .line 1236
    return-void

    .line 1235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "updatedChannel"    # Landroid/app/NotificationChannel;
    .param p4, "fromUser"    # Z

    .line 960
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 963
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;I)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    .line 964
    .local v1, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz v1, :cond_c

    .line 967
    iget-object v2, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 968
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 971
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 972
    const/16 v3, -0x3e8

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 975
    :cond_0
    if-eqz p4, :cond_1

    .line 976
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 977
    invoke-virtual {p0, v2, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 979
    :cond_1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 982
    :goto_0
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    .line 984
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    .line 986
    .local v3, "importance":I
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 987
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 990
    :cond_2
    const-string v5, "com.oneplus.mms"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 991
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 994
    :cond_3
    iget-boolean v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {p3, v5}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    .line 996
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 997
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-nez v5, :cond_4

    .line 998
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1001
    :cond_4
    iget-object v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 1006
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    iput v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    .line 1007
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1008
    const/4 v5, 0x2

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    iput v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    .line 1009
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v5

    iput v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    .line 1010
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 1013
    :cond_6
    invoke-virtual {v2, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1015
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1016
    if-eqz p4, :cond_7

    goto :goto_2

    :cond_7
    move v4, v6

    :goto_2
    invoke-virtual {v5, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 1015
    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 1017
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 1018
    invoke-static {v2}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v9

    .line 1017
    move-object v6, p3

    move v7, p2

    move-object v8, p1

    move v10, p4

    invoke-interface/range {v5 .. v10}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    .line 1021
    :cond_8
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/notification/PreferencesHelper;->mAreChannelsBypassingDnd:Z

    if-ne v4, v5, :cond_9

    .line 1022
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 1023
    :cond_9
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->updateChannelsBypassingDnd(I)V

    .line 1025
    .end local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .end local v3    # "importance":I
    :cond_a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    invoke-direct {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 1027
    return-void

    .line 969
    .restart local v1    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .restart local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_b
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

    .line 965
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .restart local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .restart local p4    # "fromUser":Z
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/PreferencesHelper;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "updatedChannel":Landroid/app/NotificationChannel;
    .end local p4    # "fromUser":Z
    throw v2

    .line 1025
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
    .locals 10
    .param p1, "areChannelsBypassingDnd"    # Z

    .line 1666
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1667
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v9, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1670
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    move v7, v2

    goto :goto_0

    .line 1671
    :cond_0
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    iget v8, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 1667
    invoke-virtual {v1, v9}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1673
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

    .line 504
    const/4 v0, 0x0

    const-string/jumbo v1, "ranking"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 508
    :cond_0
    const-string/jumbo v1, "silent_status_icons"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide_gentle"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    const-string/jumbo v1, "silent_status_icons"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 515
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_12

    .line 516
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 517
    .local v4, "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    if-eqz p2, :cond_2

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_2

    .line 518
    goto/16 :goto_6

    .line 520
    :cond_2
    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-nez v5, :cond_4

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-ne v5, v6, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-ne v5, v7, :cond_4

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    .line 526
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-gtz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    .line 527
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-gtz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-nez v5, :cond_4

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v7

    .line 533
    .local v5, "hasNonDefaultSettings":Z
    :goto_2
    if-eqz v5, :cond_11

    .line 534
    const-string/jumbo v8, "package"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    const-string/jumbo v8, "name"

    iget-object v9, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 536
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq v8, v6, :cond_5

    .line 537
    const-string v8, "importance"

    iget v9, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    :cond_5
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v8, :cond_6

    .line 540
    const-string/jumbo v8, "priority"

    iget v9, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    :cond_6
    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq v8, v6, :cond_7

    .line 543
    const-string/jumbo v6, "visibility"

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    :cond_7
    iget v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz v6, :cond_8

    .line 546
    const-string v6, "allow_bubble"

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 548
    :cond_8
    const-string/jumbo v6, "show_badge"

    iget-boolean v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    const-string v6, "app_user_locked_fields"

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    .line 550
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 549
    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    const-string/jumbo v6, "sent_invalid_msg"

    iget-boolean v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    .line 552
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 551
    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    const-string/jumbo v6, "sent_valid_msg"

    iget-boolean v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    .line 554
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 553
    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    const-string/jumbo v6, "user_demote_msg_app"

    iget-boolean v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    .line 556
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 555
    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    if-nez p2, :cond_9

    .line 559
    const-string/jumbo v6, "uid"

    iget v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    :cond_9
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v6, :cond_c

    .line 563
    const-string v6, "delegate"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    const-string/jumbo v6, "name"

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    const-string/jumbo v6, "uid"

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v6, v6, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eq v6, v7, :cond_a

    .line 568
    const-string v6, "enabled"

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v8, v8, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    :cond_a
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v6, v6, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eq v6, v7, :cond_b

    .line 571
    const-string v6, "allowed"

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v7, v7, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 572
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    .line 571
    invoke-interface {p1, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    :cond_b
    const-string v6, "delegate"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    :cond_c
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    .line 578
    .local v7, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v7, p1}, Landroid/app/NotificationChannelGroup;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 579
    .end local v7    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_3

    .line 581
    :cond_d
    iget-object v6, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 582
    .local v7, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_e

    .line 583
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_f

    .line 584
    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1, v8}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_5

    .line 587
    :cond_e
    invoke-virtual {v7, p1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 589
    .end local v7    # "channel":Landroid/app/NotificationChannel;
    :cond_f
    :goto_5
    goto :goto_4

    .line 591
    :cond_10
    const-string/jumbo v6, "package"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    .end local v4    # "r":Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .end local v5    # "hasNonDefaultSettings":Z
    :cond_11
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 594
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    const-string/jumbo v1, "ranking"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    return-void

    .line 594
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
