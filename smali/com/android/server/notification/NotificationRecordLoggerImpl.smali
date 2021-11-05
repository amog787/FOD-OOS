.class public Lcom/android/server/notification/NotificationRecordLoggerImpl;
.super Ljava/lang/Object;
.source "NotificationRecordLoggerImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationRecordLogger;


# instance fields
.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 1
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 81
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 82
    return-void
.end method

.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 72
    if-nez p2, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    .line 75
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 77
    return-void
.end method

.method public maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    .locals 25
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "position"    # I
    .param p4, "buzzBeepBlink"    # I
    .param p5, "groupId"    # Lcom/android/internal/logging/InstanceId;

    .line 36
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 37
    .local v0, "p":Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;
    move/from16 v11, p4

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->shouldLogReported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    const/16 v3, 0xf4

    .line 41
    invoke-static {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->fromRecordPair(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result v4

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getInstanceId()I

    move-result v7

    .line 45
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNotificationIdHash()I

    move-result v8

    .line 46
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getChannelIdHash()I

    move-result v9

    .line 47
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getGroupIdHash()I

    move-result v10

    .line 48
    if-nez p5, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v12

    :goto_0
    move/from16 v16, v12

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle()I

    move-result v14

    .line 52
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople()I

    move-result v15

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result v17

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanationCode()I

    move-result v19

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getInitialImportance()I

    move-result v20

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getInitialImportanceExplanationCode()I

    move-result v21

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAssistantImportance()I

    move-result v22

    .line 65
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getAssistantHash()I

    move-result v23

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v24

    .line 40
    move/from16 v11, v16

    move/from16 v16, p3

    move/from16 v18, p4

    invoke-static/range {v3 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIIZLjava/lang/String;IIIIIIIIIIF)V

    .line 68
    return-void
.end method
