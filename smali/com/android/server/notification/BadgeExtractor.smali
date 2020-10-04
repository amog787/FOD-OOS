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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 34
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 37
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_1

    .line 44
    return-object v0

    .line 46
    :cond_1
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/notification/RankingConfig;->badgingEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    .line 47
    .local v1, "userWantsBadges":Z
    iget-object v2, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 48
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/notification/RankingConfig;->canShowBadge(Ljava/lang/String;I)Z

    move-result v2

    .line 49
    .local v2, "appCanShowBadge":Z
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 53
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

    .line 55
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_2

    .line 50
    :cond_5
    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 59
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 60
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    .line 61
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 64
    :cond_6
    return-object v0

    .line 39
    .end local v1    # "userWantsBadges":Z
    .end local v2    # "appCanShowBadge":Z
    :cond_7
    :goto_3
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 69
    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 70
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 74
    return-void
.end method
