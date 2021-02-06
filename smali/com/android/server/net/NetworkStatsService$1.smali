.class Lcom/android/server/net/NetworkStatsService$1;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mAccessLevel:I

.field private final mCallingPackage:Ljava/lang/String;

.field private final mCallingUid:I

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$callingUid:I

.field final synthetic val$usedFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;ILjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    .line 671
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iput p2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingUid:I

    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/net/NetworkStatsService$1;->val$usedFlags:I

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    .line 672
    iget p2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingUid:I

    iput p2, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    .line 673
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    .line 674
    iget-object p3, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p3, p2}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v0

    return-object v1

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v0

    return-object v1

    .line 695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 775
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 776
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 706
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$usedFlags:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$1300(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .line 719
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$usedFlags:I

    iget v4, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v5, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .line 746
    move-object v0, p0

    if-nez p4, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    iget v12, v0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v13, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    return-object v1

    .line 750
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    iget v12, v0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v13, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    return-object v1
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .line 760
    move-object v0, p0

    if-nez p4, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    const/4 v3, 0x0

    iget v12, v0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v13, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    return-object v1

    .line 763
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v14, p2

    if-ne v14, v1, :cond_1

    .line 764
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    const/4 v3, 0x0

    iget v12, v0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v13, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    return-object v1

    .line 767
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot access tag information from a different uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRelevantUids()[I
    .locals 2

    .line 700
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iget v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .line 727
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iget v6, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    .line 728
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 729
    .local v0, "stats":Landroid/net/NetworkStats;
    if-eqz p6, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    .line 731
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v1

    .line 732
    .local v1, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v1    # "tagStats":Landroid/net/NetworkStats;
    :cond_0
    return-object v0

    .line 735
    .end local v0    # "stats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "NetworkStats"

    const-string v2, "NullPointerException in getSummaryForAllUid"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    throw v0
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 713
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$usedFlags:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$1;->mAccessLevel:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingUid:I

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$1300(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method
