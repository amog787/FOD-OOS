.class public Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
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
    name = "CancelNotificationRunnable"
.end annotation


# instance fields
.field private final mCallingPid:I

.field private final mCallingUid:I

.field private final mCount:I

.field private final mId:I

.field private final mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field private final mMustHaveFlags:I

.field private final mMustNotHaveFlags:I

.field private final mPkg:Ljava/lang/String;

.field private final mRank:I

.field private final mReason:I

.field private final mSendDelete:Z

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private final mWhen:J

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 15
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "mustHaveFlags"    # I
    .param p8, "mustNotHaveFlags"    # I
    .param p9, "sendDelete"    # Z
    .param p10, "userId"    # I
    .param p11, "reason"    # I
    .param p12, "rank"    # I
    .param p13, "count"    # I
    .param p14, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6826
    move-object v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6827
    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 6828
    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    .line 6829
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 6830
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 6831
    move/from16 v6, p6

    iput v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 6832
    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    .line 6833
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 6834
    move/from16 v9, p9

    iput-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 6835
    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 6836
    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 6837
    move/from16 v12, p12

    iput v12, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    .line 6838
    move/from16 v13, p13

    iput v13, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    .line 6839
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mWhen:J

    .line 6841
    return-void
.end method

.method static synthetic lambda$run$0(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 6911
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_0

    .line 6912
    const/4 v0, 0x0

    return v0

    .line 6914
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 27

    .line 6845
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    .line 6846
    .local v11, "listenerName":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1

    .line 6847
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 6851
    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6854
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->access$9600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 6856
    .local v0, "enqueued":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    const/4 v3, 0x0

    .line 6857
    .local v3, "repost":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 6859
    const/4 v3, 0x1

    .line 6862
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 6863
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    iget-wide v6, v5, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    iget-wide v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mWhen:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 6865
    monitor-exit v2

    return-void

    .line 6867
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    goto :goto_1

    .line 6869
    :cond_3
    if-eqz v3, :cond_4

    .line 6870
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6871
    monitor-exit v2

    return-void

    .line 6875
    :cond_4
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 6876
    invoke-static/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->access$9100(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v4

    .line 6877
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    const/4 v5, 0x0

    if-eqz v4, :cond_d

    .line 6882
    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 6883
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$8400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 6886
    :cond_5
    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_6

    .line 6887
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_6

    .line 6888
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 6889
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 6888
    invoke-interface {v5, v6, v7}, Lcom/android/server/notification/NotificationDelegate;->onBubbleNotificationSuppressionChanged(Ljava/lang/String;Z)V

    .line 6890
    monitor-exit v2

    return-void

    .line 6893
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    and-int/2addr v6, v8

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    if-eq v6, v8, :cond_7

    .line 6894
    monitor-exit v2

    return-void

    .line 6896
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_8

    .line 6897
    monitor-exit v2

    return-void

    .line 6899
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUpdateTimeMs()J

    move-result-wide v8

    iget-wide v12, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mWhen:J

    cmp-long v6, v8, v12

    if-lez v6, :cond_9

    .line 6901
    monitor-exit v2

    return-void

    .line 6906
    :cond_9
    const/4 v6, 0x0

    .line 6907
    .local v6, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    if-eq v8, v7, :cond_a

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    .line 6910
    :cond_a
    sget-object v8, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$1i8BOFS2Ap_BvazcwqssFxW6U1U;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$1i8BOFS2Ap_BvazcwqssFxW6U1U;

    move-object v6, v8

    .line 6921
    :cond_b
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-static {v8, v9, v10, v5}, Lcom/android/server/notification/NotificationManagerService;->access$9700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V

    .line 6926
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5, v4}, Lcom/android/server/notification/NotificationManagerService;->access$9300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v18

    .line 6927
    .local v18, "wasPosted":Z
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v14, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v15, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    move-object v13, v4

    move/from16 v16, v5

    move/from16 v17, v8

    move-object/from16 v19, v11

    invoke-static/range {v12 .. v19}, Lcom/android/server/notification/NotificationManagerService;->access$9800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 6929
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-boolean v10, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v12, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    move/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v11

    move/from16 v24, v10

    move-object/from16 v25, v6

    move/from16 v26, v12

    invoke-static/range {v19 .. v26}, Lcom/android/server/notification/NotificationManagerService;->access$9900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;I)V

    .line 6931
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6932
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 6933
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v5

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6935
    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v8

    .line 6933
    invoke-virtual {v5, v4, v7, v8}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 6937
    .end local v6    # "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .end local v18    # "wasPosted":Z
    :cond_c
    goto :goto_2

    .line 6939
    :cond_d
    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v7, 0x12

    if-eq v6, v7, :cond_e

    .line 6940
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 6941
    .local v6, "wasSnoozed":Z
    if-eqz v6, :cond_e

    .line 6942
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 6949
    .end local v6    # "wasSnoozed":Z
    :cond_e
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-static {v6, v7, v8, v5}, Lcom/android/server/notification/NotificationManagerService;->access$9700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V

    .line 6953
    .end local v0    # "enqueued":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3    # "repost":Z
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_2
    monitor-exit v2

    .line 6954
    return-void

    .line 6953
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
