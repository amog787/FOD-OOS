.class public Lcom/android/server/notification/BadgeExtractor;
.super Ljava/lang/Object;
.source "BadgeExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BadgeExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 35
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 8
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 38
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_1

    .line 45
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/notification/RankingConfig;->badgingEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    .line 48
    .local v1, "userWantsBadges":Z
    iget-object v2, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/notification/RankingConfig;->canShowBadge(Ljava/lang/String;I)Z

    move-result v2

    .line 50
    .local v2, "appCanShowBadge":Z
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 54
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_2

    .line 51
    :cond_5
    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 60
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 61
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    .line 62
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 65
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v4

    .line 66
    .local v4, "metadata":Landroid/app/Notification$BubbleMetadata;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 67
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 70
    :cond_7
    iget-object v5, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-interface {v5}, Lcom/android/server/notification/RankingConfig;->isMediaNotificationFilteringEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 71
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 72
    .local v5, "notif":Landroid/app/Notification;
    invoke-virtual {v5}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 73
    invoke-virtual {v5}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v6

    .line 74
    .local v6, "notifStyle":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-class v7, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-class v7, Landroid/app/Notification$MediaStyle;

    .line 75
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 76
    :cond_8
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 80
    .end local v5    # "notif":Landroid/app/Notification;
    .end local v6    # "notifStyle":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_9
    return-object v0

    .line 40
    .end local v1    # "userWantsBadges":Z
    .end local v2    # "appCanShowBadge":Z
    .end local v4    # "metadata":Landroid/app/Notification$BubbleMetadata;
    :cond_a
    :goto_3
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 85
    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 86
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 90
    return-void
.end method
