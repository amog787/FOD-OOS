.class public Lcom/android/server/notification/BubbleExtractor;
.super Ljava/lang/Object;
.source "BubbleExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BubbleExtractor"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mConfig:Lcom/android/server/notification/RankingConfig;

.field private mContext:Landroid/content/Context;

.field private mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logBubbleError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "failureMessage"    # Ljava/lang/String;

    .line 216
    return-void
.end method


# virtual methods
.method protected canLaunchInActivityView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 184
    const-string v0, "BubbleExtractor"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 185
    const-string v2, "Unable to create bubble -- no intent"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v1

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 190
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    goto :goto_0

    .line 192
    :cond_1
    const/4 v3, 0x0

    :goto_0
    nop

    .line 193
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x1

    const/16 v5, 0xad

    if-nez v3, :cond_2

    .line 194
    invoke-static {v5, p3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v1

    .line 201
    :cond_2
    iget v6, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 202
    const/4 v4, 0x2

    invoke-static {v5, p3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v1

    .line 209
    :cond_3
    return v4
.end method

.method canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 141
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    .line 142
    .local v1, "metadata":Landroid/app/Notification$BubbleMetadata;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 144
    return v3

    .line 147
    :cond_0
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "shortcutId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 149
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 150
    :cond_1
    const/4 v5, 0x0

    :goto_0
    nop

    .line 151
    .local v5, "notificationShortcutId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 152
    .local v6, "shortcutValid":Z
    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 155
    :cond_2
    if-eqz v4, :cond_4

    .line 156
    iget-object v8, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 157
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v4, v2, v9}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    move v6, v8

    .line 159
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v8

    if-nez v8, :cond_5

    if-nez v6, :cond_5

    .line 161
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t find valid shortcut for bubble with shortcutId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/notification/BubbleExtractor;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return v3

    .line 165
    :cond_5
    if-eqz v6, :cond_6

    .line 167
    return v7

    .line 169
    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p0, v3, v7, v2}, Lcom/android/server/notification/BubbleExtractor;->canLaunchInActivityView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 54
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 56
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_1

    .line 66
    return-object v0

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-nez v2, :cond_2

    .line 71
    return-object v0

    .line 74
    :cond_2
    nop

    .line 76
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    .line 75
    invoke-interface {v1, v2, v3}, Lcom/android/server/notification/RankingConfig;->getBubblePreference(Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, "bubblePreference":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    .line 78
    .local v2, "recordChannel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 79
    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3

    if-nez v3, :cond_3

    .line 80
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v4

    .line 84
    .local v3, "canPresentAsBubble":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-interface {v6}, Lcom/android/server/notification/RankingConfig;->bubblesEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v1, :cond_8

    if-nez v3, :cond_4

    goto :goto_2

    .line 92
    :cond_4
    if-nez v2, :cond_5

    .line 94
    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_3

    .line 95
    :cond_5
    if-ne v1, v5, :cond_7

    .line 96
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v5

    goto :goto_1

    :cond_6
    move v6, v4

    :goto_1
    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_3

    .line 97
    :cond_7
    const/4 v6, 0x2

    if-ne v1, v6, :cond_9

    .line 98
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_3

    .line 87
    :cond_8
    :goto_2
    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    .line 88
    if-nez v3, :cond_9

    .line 90
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V

    .line 108
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v6

    if-nez v6, :cond_a

    move v4, v5

    .line 109
    .local v4, "applyFlag":Z
    :cond_a
    if-eqz v4, :cond_b

    .line 110
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v5, Landroid/app/Notification;->flags:I

    goto :goto_4

    .line 112
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 114
    :goto_4
    return-object v0

    .line 61
    .end local v1    # "bubblePreference":I
    .end local v2    # "recordChannel":Landroid/app/NotificationChannel;
    .end local v3    # "canPresentAsBubble":Z
    .end local v4    # "applyFlag":Z
    :cond_c
    :goto_5
    return-object v0
.end method

.method public setActivityManager(Landroid/app/ActivityManager;)V
    .locals 0
    .param p1, "manager"    # Landroid/app/ActivityManager;

    .line 132
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 133
    return-void
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 119
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 120
    return-void
.end method

.method public setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ShortcutHelper;

    .line 127
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 128
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 124
    return-void
.end method
