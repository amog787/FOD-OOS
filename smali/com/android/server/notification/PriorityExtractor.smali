.class public Lcom/android/server/notification/PriorityExtractor;
.super Ljava/lang/Object;
.source "PriorityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PriorityExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


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
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 36
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/PriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_1

    .line 43
    return-object v0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setPackagePriority(I)V

    .line 49
    return-object v0

    .line 38
    :cond_3
    :goto_1
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 54
    iput-object p1, p0, Lcom/android/server/notification/PriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 55
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 60
    return-void
.end method
