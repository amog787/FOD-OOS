.class public Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleNotificationStats"
.end annotation


# instance fields
.field public airtimeCount:J

.field public airtimeExpandedMs:J

.field public airtimeMs:J

.field public currentAirtimeExpandedStartElapsedMs:J

.field public currentAirtimeStartElapsedMs:J

.field private isExpanded:Z

.field public isNoisy:Z

.field private isVisible:Z

.field public naturalImportance:I

.field public posttimeElapsedMs:J

.field public posttimeToDismissMs:J

.field public posttimeToFirstAirtimeMs:J

.field public posttimeToFirstClickMs:J

.field public posttimeToFirstVisibleExpansionMs:J

.field public requestedImportance:I

.field public userExpansionCount:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 826
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    .line 828
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 830
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 832
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    .line 834
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 836
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 841
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 843
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 848
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 853
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 855
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 857
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    return-void
.end method

.method private updateVisiblyExpandedStats()V
    .locals 7

    .line 957
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 958
    .local v0, "elapsedNowMs":J
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    if-eqz v2, :cond_1

    .line 960
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_0

    .line 961
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 963
    :cond_0
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_2

    .line 964
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    goto :goto_0

    .line 968
    :cond_1
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_2

    .line 969
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    sub-long v4, v0, v5

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 970
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 973
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    .line 978
    return-void
.end method

.method public getCurrentAirtimeExpandedMs()J
    .locals 6

    .line 882
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 884
    .local v0, "result":J
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 887
    :cond_0
    return-wide v0
.end method

.method public getCurrentAirtimeMs()J
    .locals 6

    .line 873
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 875
    .local v0, "result":J
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 878
    :cond_0
    return-wide v0
.end method

.method public getCurrentPosttimeMs()J
    .locals 4

    .line 866
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 867
    return-wide v2

    .line 869
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public hasBeenVisiblyExpanded()Z
    .locals 4

    .line 953
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCancel()V
    .locals 0

    .line 910
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    .line 911
    return-void
.end method

.method public onClick()V
    .locals 4

    .line 894
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 897
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .line 903
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    .line 906
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    .line 907
    return-void
.end method

.method public onExpansionChanged(ZZ)V
    .locals 4
    .param p1, "userAction"    # Z
    .param p2, "expanded"    # Z

    .line 942
    iput-boolean p2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    .line 943
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 944
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    .line 946
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    .line 947
    return-void
.end method

.method public onRemoved()V
    .locals 0

    .line 914
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    .line 915
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .line 918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 919
    .local v0, "elapsedNowMs":J
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 920
    .local v2, "wasVisible":Z
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 921
    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    .line 922
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    .line 923
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 924
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 926
    :cond_0
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_2

    .line 927
    iget-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long v3, v0, v3

    iput-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    goto :goto_0

    .line 930
    :cond_1
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    cmp-long v3, v5, v3

    if-ltz v3, :cond_2

    .line 931
    iget-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 932
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 936
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    if-eq v2, v3, :cond_3

    .line 937
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    .line 939
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .local v0, "output":Ljava/lang/StringBuilder;
    const-string v1, "SingleNotificationStats{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string/jumbo v1, "posttimeElapsedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    const-string/jumbo v2, "posttimeToFirstClickMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const-string/jumbo v2, "posttimeToDismissMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v2, "airtimeCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v2, "airtimeMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v2, "currentAirtimeStartElapsedMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    const-string v2, "airtimeExpandedMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    const-string/jumbo v2, "posttimeToFirstVisibleExpansionMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 994
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string v2, "currentAirtimeExpandedStartElapsedMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 996
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string/jumbo v2, "requestedImportance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string/jumbo v2, "naturalImportance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string/jumbo v1, "isNoisy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1000
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V
    .locals 2
    .param p1, "old"    # Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 1006
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 1007
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 1008
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 1009
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 1010
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 1011
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 1012
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 1013
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 1014
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 1015
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    .line 1016
    return-void
.end method
