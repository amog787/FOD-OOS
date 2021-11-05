.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public criticalPriority:Z

.field public filtered:Z

.field public normalPriority:Z

.field public pkgFilter:Ljava/lang/String;

.field public proto:Z

.field public redact:Z

.field public rvStats:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 10797
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 10798
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    .line 10799
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 10800
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 10804
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    .line 10805
    .local v0, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    const/4 v1, 0x0

    .local v1, "ai":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 10806
    aget-object v2, p0, v1

    .line 10807
    .local v2, "a":Ljava/lang/String;
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 10808
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    goto/16 :goto_6

    .line 10809
    :cond_0
    const-string v3, "--noredact"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_10

    const-string v3, "--reveal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 10811
    :cond_1
    const-string/jumbo v3, "p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "pkg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    .line 10821
    :cond_2
    const-string v3, "--zen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "zen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    .line 10824
    :cond_3
    const-string v3, "--stats"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_5

    .line 10825
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    .line 10826
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_4

    .line 10827
    add-int/lit8 v1, v1, 0x1

    .line 10828
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_6

    .line 10830
    :cond_4
    iput-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_6

    .line 10832
    :cond_5
    const-string v3, "--remote-view-stats"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10833
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->rvStats:Z

    .line 10834
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_6

    .line 10835
    add-int/lit8 v1, v1, 0x1

    .line 10836
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_6

    .line 10838
    :cond_6
    iput-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_6

    .line 10840
    :cond_7
    const-string v3, "--dump-priority"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 10844
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_11

    .line 10845
    add-int/lit8 v1, v1, 0x1

    .line 10846
    aget-object v3, p0, v1

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x76664f19    # -3.699977E-33f

    if-eq v7, v8, :cond_a

    const v8, -0x5cfe9861

    if-eq v7, v8, :cond_9

    :cond_8
    goto :goto_1

    :cond_9
    const-string v7, "CRITICAL"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_a
    const-string v5, "NORMAL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v5, v4

    goto :goto_2

    :goto_1
    move v5, v6

    :goto_2
    if-eqz v5, :cond_c

    if-eq v5, v4, :cond_b

    goto :goto_6

    .line 10851
    :cond_b
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    goto :goto_6

    .line 10848
    :cond_c
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 10849
    goto :goto_6

    .line 10822
    :cond_d
    :goto_3
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 10823
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    goto :goto_6

    .line 10812
    :cond_e
    :goto_4
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_11

    .line 10813
    add-int/lit8 v1, v1, 0x1

    .line 10814
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    .line 10815
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 10816
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    goto :goto_6

    .line 10818
    :cond_f
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    goto :goto_6

    .line 10810
    :cond_10
    :goto_5
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 10805
    .end local v2    # "a":Ljava/lang/String;
    :cond_11
    :goto_6
    add-int/2addr v1, v4

    goto/16 :goto_0

    .line 10857
    .end local v1    # "ai":I
    :cond_12
    return-object v0
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 10867
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 10868
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 10861
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 10862
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10863
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 10862
    :goto_0
    return v1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 10872
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 10873
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 10878
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stats"

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "zen"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
