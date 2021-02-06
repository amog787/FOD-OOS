.class public Lcom/android/server/notification/NotificationChannelExtractor;
.super Ljava/lang/Object;
.source "NotificationChannelExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChannelExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 33
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 38
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v2, :cond_1

    .line 45
    return-object v0

    .line 47
    :cond_1
    nop

    .line 48
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 47
    invoke-interface/range {v2 .. v8}, Lcom/android/server/notification/RankingConfig;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 51
    .local v1, "updatedChannel":Landroid/app/NotificationChannel;
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 53
    return-object v0

    .line 40
    .end local v1    # "updatedChannel":Landroid/app/NotificationChannel;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 58
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 59
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 64
    return-void
.end method
