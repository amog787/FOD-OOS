.class Lcom/android/server/AppStateTracker$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MSG_ALL_UNWHITELISTED:I = 0x4

.field private static final MSG_ALL_WHITELIST_CHANGED:I = 0x5

.field private static final MSG_EXEMPT_CHANGED:I = 0xa

.field private static final MSG_FORCE_ALL_CHANGED:I = 0x7

.field private static final MSG_FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED:I = 0x9

.field private static final MSG_ON_UID_ACTIVE:I = 0xc

.field private static final MSG_ON_UID_GONE:I = 0xd

.field private static final MSG_ON_UID_IDLE:I = 0xe

.field private static final MSG_ON_UID_STATE_CHANGED:I = 0xb

.field private static final MSG_RUN_ANY_CHANGED:I = 0x3

.field private static final MSG_TEMP_WHITELIST_CHANGED:I = 0x6

.field private static final MSG_UID_ACTIVE_STATE_CHANGED:I = 0x0

.field private static final MSG_UID_FG_STATE_CHANGED:I = 0x1

.field private static final MSG_USER_REMOVED:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 742
    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    .line 743
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 744
    return-void
.end method

.method private removeUid(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "remove"    # Z

    .line 949
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    .line 956
    :cond_1
    monitor-exit v0

    .line 957
    return-void

    .line 956
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public doUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 789
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 790
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 810
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    .line 817
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 818
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mStarted:Z

    if-nez v2, :cond_0

    .line 819
    monitor-exit v0

    return-void

    .line 821
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 822
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    .line 824
    .local v0, "sender":Lcom/android/server/AppStateTracker;
    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 825
    .local v2, "start":J
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 915
    :pswitch_0
    return-void

    .line 912
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {p0, v1, v5}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidIdle(IZ)V

    .line 913
    return-void

    .line 909
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidGone(IZ)V

    .line 910
    return-void

    .line 906
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidActive(I)V

    .line 907
    return-void

    .line 903
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v4}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidStateChanged(II)V

    .line 904
    return-void

    .line 869
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_2
    if-ge v6, v4, :cond_3

    aget-object v5, v1, v6

    .line 870
    .local v5, "l":Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v5, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1600(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 869
    .end local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 872
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 873
    return-void

    .line 885
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 886
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v7, v7, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v7, v7, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    .line 887
    .local v5, "unblockAlarms":Z
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v4

    array-length v7, v4

    :goto_4
    if-ge v6, v7, :cond_6

    aget-object v8, v4, v6

    .line 889
    .local v8, "l":Lcom/android/server/AppStateTracker$Listener;
    invoke-virtual {v8}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    .line 890
    if-eqz v5, :cond_5

    .line 891
    invoke-virtual {v8}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    .line 888
    .end local v8    # "l":Lcom/android/server/AppStateTracker$Listener;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 894
    :cond_6
    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 896
    return-void

    .line 887
    .end local v5    # "unblockAlarms":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 899
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Lcom/android/server/AppStateTracker;->handleUserRemoved(I)V

    .line 900
    return-void

    .line 876
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_5
    if-ge v6, v4, :cond_7

    aget-object v5, v1, v6

    .line 877
    .local v5, "l":Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v5, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1700(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 876
    .end local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 879
    :cond_7
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 880
    return-void

    .line 862
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_6
    if-ge v6, v4, :cond_8

    aget-object v5, v1, v6

    .line 863
    .restart local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v5, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1500(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 862
    .end local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 865
    :cond_8
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 866
    return-void

    .line 855
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_7
    if-ge v6, v4, :cond_9

    aget-object v5, v1, v6

    .line 856
    .restart local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v5, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1400(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 855
    .end local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 858
    :cond_9
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 859
    return-void

    .line 848
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_8
    if-ge v6, v4, :cond_a

    aget-object v5, v1, v6

    .line 849
    .restart local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v5, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1300(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 848
    .end local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 851
    :cond_a
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 852
    return-void

    .line 841
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_9
    if-ge v6, v4, :cond_b

    aget-object v5, v1, v6

    .line 842
    .restart local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v0, v7, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1200(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;ILjava/lang/String;)V

    .line 841
    .end local v5    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 844
    :cond_b
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 845
    return-void

    .line 834
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    move v5, v6

    :goto_a
    if-ge v5, v4, :cond_c

    aget-object v7, v1, v5

    .line 835
    .local v7, "l":Lcom/android/server/AppStateTracker$Listener;
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1100(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V

    .line 834
    .end local v7    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 837
    :cond_c
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 838
    return-void

    .line 827
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_b
    if-ge v6, v4, :cond_d

    aget-object v7, v1, v6

    .line 828
    .restart local v7    # "l":Lcom/android/server/AppStateTracker$Listener;
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1000(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V

    .line 827
    .end local v7    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 830
    :cond_d
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 831
    return-void

    .line 821
    .end local v0    # "sender":Lcom/android/server/AppStateTracker;
    .end local v2    # "start":J
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 812
    :cond_e
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->handleUserRemoved(I)V

    .line 813
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 932
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->access$1900(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 936
    :cond_0
    monitor-exit v0

    .line 937
    return-void

    .line 936
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleUidGone(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 940
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeUid(IZ)V

    .line 941
    return-void
.end method

.method public handleUidIdle(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 945
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeUid(IZ)V

    .line 946
    return-void
.end method

.method public handleUidStateChanged(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 918
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 919
    const/4 v1, 0x7

    if-le p2, v1, :cond_0

    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    goto :goto_0

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->access$1900(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    .line 928
    :cond_1
    :goto_0
    monitor-exit v0

    .line 929
    return-void

    .line 928
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyAllUnwhitelisted()V
    .locals 1

    .line 759
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    return-void
.end method

.method public notifyAllWhitelistChanged()V
    .locals 1

    .line 764
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 765
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 766
    return-void
.end method

.method public notifyExemptChanged()V
    .locals 1

    .line 784
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 786
    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .locals 1

    .line 774
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 775
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 776
    return-void
.end method

.method public notifyForcedAppStandbyFeatureFlagChanged()V
    .locals 1

    .line 779
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 780
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 781
    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 755
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 756
    return-void
.end method

.method public notifyTempWhitelistChanged()V
    .locals 1

    .line 769
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 771
    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 748
    return-void
.end method

.method public notifyUidForegroundStateChanged(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 751
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 752
    return-void
.end method

.method public onUidActive(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 797
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 798
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 801
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 802
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 805
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 806
    return-void
.end method

.method public onUidStateChanged(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 793
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 794
    return-void
.end method
