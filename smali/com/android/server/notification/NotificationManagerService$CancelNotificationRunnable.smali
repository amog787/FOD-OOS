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
    .locals 16
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

    .line 6892
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6893
    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 6894
    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    .line 6895
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 6896
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 6897
    move/from16 v6, p6

    iput v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 6898
    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    .line 6899
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 6900
    move/from16 v9, p9

    iput-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 6901
    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 6902
    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 6903
    move/from16 v12, p12

    iput v12, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    .line 6904
    move/from16 v13, p13

    iput v13, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    .line 6905
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6906
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/InjectableSystemClock;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/notification/InjectableSystemClock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mWhen:J

    .line 6907
    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 6872
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->doNotificationCancelLocked()V

    return-void
.end method

.method private doNotificationCancelLocked()V
    .locals 20

    .line 6912
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 6913
    .local v9, "listenerName":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 6914
    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$9300(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 6915
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 6920
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v15, 0x1

    if-ne v3, v15, :cond_1

    .line 6921
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$8600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 6924
    :cond_1
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 6925
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_2

    .line 6926
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 6927
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 6926
    invoke-interface {v2, v3, v15}, Lcom/android/server/notification/NotificationDelegate;->onBubbleNotificationSuppressionChanged(Ljava/lang/String;Z)V

    .line 6928
    return-void

    .line 6931
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_3

    .line 6932
    return-void

    .line 6934
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 6935
    return-void

    .line 6940
    :cond_4
    const/4 v3, 0x0

    .line 6941
    .local v3, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    if-eq v4, v15, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v18, v3

    goto :goto_2

    .line 6944
    :cond_6
    :goto_1
    sget-object v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE;

    move-object/from16 v18, v3

    .line 6955
    .end local v3    # "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .local v18, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    :goto_2
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->access$9800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V

    .line 6960
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-wide v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mWhen:J

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->access$9900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;J)Z

    move-result v19

    .line 6961
    .local v19, "wasPosted":Z
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    move-object v3, v1

    move/from16 v8, v19

    invoke-static/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerService;->access$10000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 6963
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    move-object v11, v1

    move-object v14, v9

    move v4, v15

    move v15, v2

    move-object/from16 v16, v18

    move/from16 v17, v3

    invoke-static/range {v10 .. v17}, Lcom/android/server/notification/NotificationManagerService;->access$10100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;I)V

    .line 6965
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6966
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 6967
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6969
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    .line 6967
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 6971
    .end local v18    # "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .end local v19    # "wasPosted":Z
    :cond_7
    goto :goto_3

    .line 6973
    :cond_8
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_9

    .line 6974
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 6975
    .local v3, "wasSnoozed":Z
    if-eqz v3, :cond_9

    .line 6976
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 6983
    .end local v3    # "wasSnoozed":Z
    :cond_9
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->access$9800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V

    .line 6987
    :goto_3
    return-void
.end method

.method static synthetic lambda$doNotificationCancelLocked$0(I)Z
    .locals 1
    .param p0, "flags"    # I

    .line 6945
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_0

    .line 6946
    const/4 v0, 0x0

    return v0

    .line 6948
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 6991
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 6992
    .local v10, "listenerName":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1

    .line 6993
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    invoke-static/range {v1 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 6997
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7000
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$10200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 7002
    .local v1, "enqueued":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 7006
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 7008
    .local v2, "enqueuedToAttach":Lcom/android/server/notification/NotificationRecord;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    .line 7009
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 7010
    .local v3, "delayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;>;"
    if-nez v3, :cond_2

    .line 7011
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 7013
    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7014
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7015
    monitor-exit v0

    return-void

    .line 7018
    .end local v2    # "enqueuedToAttach":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "delayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;>;"
    :cond_3
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->doNotificationCancelLocked()V

    .line 7019
    .end local v1    # "enqueued":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    monitor-exit v0

    .line 7020
    return-void

    .line 7019
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
