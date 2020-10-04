.class public Lcom/android/server/notification/NotificationIntrusivenessExtractor;
.super Ljava/lang/Object;
.source "NotificationIntrusivenessExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z

.field static final HANG_TIME_MS:J = 0x2710L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IntrusivenessExtractor"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "IntrusivenessExtractor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 41
    sget-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntrusivenessExtractor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 45
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 51
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 52
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v1

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v1, v5, :cond_1

    .line 53
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 64
    return-object v0

    .line 67
    :cond_4
    new-instance v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;-><init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V

    return-object v0

    .line 46
    :cond_5
    :goto_0
    sget-boolean v1, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "IntrusivenessExtractor"

    const-string/jumbo v2, "skipping empty notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_6
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 87
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 92
    return-void
.end method
