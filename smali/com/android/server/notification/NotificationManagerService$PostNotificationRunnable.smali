.class public Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
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
    name = "PostNotificationRunnable"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "key"    # Ljava/lang/String;

    .line 7142
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7143
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 7144
    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$NotificationManagerService$PostNotificationRunnable(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "finalRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 7236
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$11000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v0

    .line 7237
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, p2}, Lcom/android/server/notification/NotificationManagerService;->access$10900(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 7236
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/GroupHelper;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public run()V
    .locals 15

    .line 7148
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7150
    const/4 v1, 0x0

    .line 7151
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7152
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 7153
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 7154
    .local v4, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7155
    move-object v1, v4

    .line 7156
    goto :goto_1

    .line 7152
    .end local v4    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7159
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_6

    .line 7160
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find enqueued record for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7271
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7272
    .local v3, "N":I
    const/4 v4, 0x0

    .line 7273
    .restart local v4    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 7274
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    move-object v4, v6

    .line 7275
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7276
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7277
    goto :goto_3

    .line 7273
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 7283
    .end local v5    # "i":I
    :cond_3
    :goto_3
    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 7284
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 7285
    .local v6, "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->access$11100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7286
    .end local v6    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    goto :goto_4

    .line 7287
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7289
    .end local v3    # "N":I
    .end local v4    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7161
    return-void

    .line 7164
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v1}, Lcom/android/server/notification/NotificationManagerService;->access$10600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 7165
    const-string v3, "NotificationService"

    const-string/jumbo v4, "notification blocked by assistant request"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7271
    :try_start_3
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7272
    .restart local v3    # "N":I
    const/4 v4, 0x0

    .line 7273
    .restart local v4    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v3, :cond_8

    .line 7274
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    move-object v4, v6

    .line 7275
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 7276
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7277
    goto :goto_6

    .line 7273
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 7283
    .end local v5    # "i":I
    :cond_8
    :goto_6
    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 7284
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 7285
    .restart local v6    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->access$11100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7286
    .end local v6    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    goto :goto_7

    .line 7287
    :cond_9
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7289
    .end local v3    # "N":I
    .end local v4    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_a
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7166
    return-void

    .line 7169
    :cond_b
    :try_start_4
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7170
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result v3

    move v9, v3

    .line 7171
    .local v9, "isPackageSuspended":Z
    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 7172
    if-eqz v9, :cond_c

    .line 7173
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$8600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    .line 7175
    :cond_c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7176
    .local v3, "old":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    move-object v10, v4

    .line 7177
    .local v10, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    move-object v11, v4

    .line 7180
    .local v11, "notification":Landroid/app/Notification;
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_8

    .line 7183
    :cond_d
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    goto :goto_9

    .line 7181
    :cond_e
    :goto_8
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$10700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 7186
    :goto_9
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v4

    move v12, v4

    .line 7187
    .local v12, "index":I
    const/4 v4, 0x0

    if-gez v12, :cond_f

    .line 7188
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7189
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$8600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 7190
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    move-object v13, v3

    goto :goto_a

    .line 7192
    :cond_f
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    move-object v3, v5

    .line 7193
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v12, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7194
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$8600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7196
    iget v5, v11, Landroid/app/Notification;->flags:I

    .line 7197
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    or-int/2addr v5, v6

    iput v5, v11, Landroid/app/Notification;->flags:I

    .line 7198
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 7199
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    .line 7200
    .local v5, "isInterruptive":Z
    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationRecord;->setTextChanged(Z)V

    .line 7201
    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    move-object v13, v3

    .line 7204
    .end local v3    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "isInterruptive":Z
    .local v13, "old":Lcom/android/server/notification/NotificationRecord;
    :goto_a
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7208
    iget v3, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_10

    .line 7209
    iget v3, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x22

    iput v3, v11, Landroid/app/Notification;->flags:I

    .line 7213
    :cond_10
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 7214
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 7215
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v6

    .line 7217
    .local v6, "position":I
    const/4 v3, 0x0

    .line 7218
    .local v3, "buzzBeepBlinkLoggingCode":I
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v5

    if-nez v5, :cond_11

    .line 7219
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v5

    move v3, v5

    move v14, v3

    goto :goto_b

    .line 7218
    :cond_11
    move v14, v3

    .line 7222
    .end local v3    # "buzzBeepBlinkLoggingCode":I
    .local v14, "buzzBeepBlinkLoggingCode":I
    :goto_b
    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 7223
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    :cond_12
    move-object v3, v4

    .line 7224
    .local v3, "oldSbn":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v4

    invoke-virtual {v4, v1, v13}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7225
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7226
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$10800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 7227
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v4

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;

    invoke-direct {v5, p0, v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 7234
    :cond_14
    if-eqz v3, :cond_15

    .line 7235
    move-object v4, v1

    .line 7236
    .local v4, "finalRecord":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v7, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;

    invoke-direct {v7, p0, v4, v10}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v5, v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7239
    .end local v3    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "finalRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_15
    :goto_c
    goto :goto_d

    .line 7240
    :cond_16
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not posting notification without small icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7241
    if-eqz v13, :cond_17

    iget-boolean v3, v13, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v3, :cond_17

    .line 7242
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    const/4 v4, 0x4

    .line 7243
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v5

    .line 7242
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 7244
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$2;

    invoke-direct {v4, p0, v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$2;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7254
    :cond_17
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7255
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7254
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7258
    :goto_d
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 7259
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7261
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    .line 7259
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 7264
    :cond_18
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7265
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/NotificationManagerService;->maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V

    .line 7268
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7269
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;

    move-result-object v8

    .line 7268
    move-object v4, v1

    move-object v5, v13

    move v7, v14

    invoke-interface/range {v3 .. v8}, Lcom/android/server/notification/NotificationRecordLogger;->maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7271
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "N":I
    .end local v6    # "position":I
    .end local v9    # "isPackageSuspended":Z
    .end local v10    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v12    # "index":I
    .end local v13    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v14    # "buzzBeepBlinkLoggingCode":I
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7272
    .local v1, "N":I
    const/4 v2, 0x0

    .line 7273
    .local v2, "enqueued":Lcom/android/server/notification/NotificationRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_1a

    .line 7274
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v2, v4

    .line 7275
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 7276
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7277
    goto :goto_f

    .line 7273
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 7283
    .end local v3    # "i":I
    :cond_1a
    :goto_f
    if-eqz v2, :cond_1c

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 7284
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 7285
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->access$11100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7286
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    goto :goto_10

    .line 7287
    :cond_1b
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7289
    .end local v1    # "N":I
    .end local v2    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_1c
    nop

    .line 7290
    monitor-exit v0

    .line 7291
    return-void

    .line 7271
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7272
    .local v2, "N":I
    const/4 v3, 0x0

    .line 7273
    .local v3, "enqueued":Lcom/android/server/notification/NotificationRecord;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v2, :cond_1e

    .line 7274
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    move-object v3, v5

    .line 7275
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 7276
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7277
    goto :goto_12

    .line 7273
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 7283
    .end local v4    # "i":I
    :cond_1e
    :goto_12
    if-eqz v3, :cond_20

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 7284
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 7285
    .local v5, "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->access$11100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7286
    .end local v5    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    goto :goto_13

    .line 7287
    :cond_1f
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7289
    .end local v2    # "N":I
    .end local v3    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_20
    nop

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
    throw v1

    .line 7290
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
