.class public Lcom/android/server/notification/CriticalNotificationExtractor;
.super Ljava/lang/Object;
.source "CriticalNotificationExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field static final CRITICAL:I = 0x0

.field static final CRITICAL_LOW:I = 0x1

.field private static final DBG:Z = false

.field static final NORMAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CriticalNotificationExt"


# instance fields
.field private mSupportsCriticalNotifications:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    return-void
.end method

.method private supportsCriticalNotifications(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/notification/CriticalNotificationExtractor;->supportsCriticalNotifications(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    .line 57
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    return-object v1

    .line 69
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    const-string v0, "car_emergency"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "car_warning"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    goto :goto_0

    .line 80
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setCriticality(I)V

    .line 82
    :goto_0
    return-object v1

    .line 71
    :cond_4
    :goto_1
    return-object v1
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

    .line 91
    return-void
.end method
