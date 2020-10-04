.class public Lcom/android/server/notification/ImportanceExtractor;
.super Ljava/lang/Object;
.source "ImportanceExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImportanceExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 32
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 35
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_1

    .line 42
    return-object v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 46
    return-object v0

    .line 37
    :cond_2
    :goto_0
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 51
    iput-object p1, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 52
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 57
    return-void
.end method
