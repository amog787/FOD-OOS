.class public Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EnqueueNotificationRunnable"
.end annotation


# instance fields
.field private final r:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "userId"    # I
    .param p3, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 6031
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6032
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 6033
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 6034
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 6038
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6039
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6040
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 6042
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6043
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnqueueNotificationRunnable.run for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    :cond_0
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 6045
    .local v3, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v3, :cond_1

    .line 6047
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 6050
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 6051
    .local v4, "callingUid":I
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    move v13, v5

    .line 6052
    .local v13, "callingPid":I
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    move-object v14, v5

    .line 6053
    .local v14, "notification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    .line 6054
    .local v15, "pkg":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    .line 6055
    .local v8, "id":I
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v9

    .line 6058
    .local v9, "tag":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v5, v6, v15, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->access$8600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V

    .line 6062
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v5, v6, v3, v4, v13}, Lcom/android/server/notification/NotificationManagerService;->access$8700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 6065
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupChild()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6066
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v6

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v15, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V

    .line 6071
    :cond_2
    const-string v5, "com.android.providers.downloads"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "DownloadManager"

    const/4 v6, 0x2

    .line 6072
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6073
    :cond_3
    const/4 v5, 0x0

    .line 6074
    .local v5, "enqueueStatus":I
    if-eqz v3, :cond_4

    .line 6075
    const/4 v5, 0x1

    move/from16 v16, v5

    goto :goto_0

    .line 6074
    :cond_4
    move/from16 v16, v5

    .line 6080
    .end local v5    # "enqueueStatus":I
    .local v16, "enqueueStatus":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v5

    .line 6081
    .local v12, "noti":Ljava/lang/StringBuilder;
    const-string v5, " "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6082
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6083
    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 6084
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6083
    move v5, v4

    move v6, v13

    move-object v7, v15

    move-object/from16 v17, v12

    .end local v12    # "noti":Ljava/lang/StringBuilder;
    .local v17, "noti":Ljava/lang/StringBuilder;
    move/from16 v12, v16

    invoke-static/range {v5 .. v12}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 6090
    .end local v16    # "enqueueStatus":I
    .end local v17    # "noti":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6091
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->access$8800(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V

    .line 6092
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 6095
    :cond_6
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6097
    .end local v0    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "callingUid":I
    .end local v8    # "id":I
    .end local v9    # "tag":Ljava/lang/String;
    .end local v13    # "callingPid":I
    .end local v14    # "notification":Landroid/app/Notification;
    .end local v15    # "pkg":Ljava/lang/String;
    :goto_1
    monitor-exit v2

    .line 6098
    return-void

    .line 6097
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
