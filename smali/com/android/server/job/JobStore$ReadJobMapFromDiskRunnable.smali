.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 0
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"    # Z

    .line 650
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 652
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 653
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 959
    const/4 v0, 0x0

    const-string/jumbo v1, "jobid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 960
    .local v1, "jobId":I
    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 961
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "class"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .local v3, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 970
    const/4 v0, 0x0

    const-string/jumbo v1, "net-capabilities"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, "netCapabilities":Ljava/lang/String;
    const-string/jumbo v2, "net-unwanted-capabilities"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "netUnwantedCapabilities":Ljava/lang/String;
    const-string/jumbo v3, "net-transport-types"

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 974
    .local v3, "netTransportTypes":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 975
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    .line 976
    .local v5, "request":Landroid/net/NetworkRequest;
    if-eqz v2, :cond_0

    .line 977
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 978
    :cond_0
    iget-object v6, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getUnwantedCapabilities()[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v6

    :goto_0
    nop

    .line 981
    .local v6, "unwantedCapabilities":J
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 982
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 983
    invoke-static {v6, v7}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v10

    .line 981
    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkCapabilities;->setCapabilities([I[I)V

    .line 984
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 985
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 984
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 986
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 987
    .end local v5    # "request":Landroid/net/NetworkRequest;
    .end local v6    # "unwantedCapabilities":J
    goto :goto_1

    .line 989
    :cond_1
    const-string v5, "connectivity"

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 990
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 991
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 993
    :cond_2
    const-string/jumbo v6, "metered"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 994
    if-eqz v5, :cond_3

    .line 995
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 997
    :cond_3
    const-string/jumbo v6, "unmetered"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 998
    if-eqz v5, :cond_4

    .line 999
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1001
    :cond_4
    const-string/jumbo v6, "not-roaming"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1002
    if-eqz v5, :cond_5

    .line 1003
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1007
    .end local v5    # "val":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v5, "idle"

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1008
    .restart local v5    # "val":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 1009
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 1011
    :cond_6
    const-string v6, "charging"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1012
    if-eqz v5, :cond_7

    .line 1013
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1015
    :cond_7
    const-string v6, "battery-not-low"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1016
    if-eqz v5, :cond_8

    .line 1017
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1019
    :cond_8
    const-string/jumbo v6, "storage-not-low"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1020
    .end local v5    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1021
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1023
    :cond_9
    return-void
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1054
    const/4 v0, 0x0

    const-string v1, "delay"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1056
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 1057
    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    nop

    .line 1058
    .local v2, "earliestRunTimeRtc":J
    const-string v4, "deadline"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    .end local v1    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1060
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 1061
    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    nop

    .line 1062
    .local v4, "latestRunTimeRtc":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1030
    const/4 v0, 0x0

    const-string v1, "initial-backoff"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1032
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1033
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1035
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 1037
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;
    .locals 10
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "rtcIsGood"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    const-string v0, "Invalid version number, aborting jobs file read."

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 703
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 705
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 706
    .local v2, "eventType":I
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "JobStore"

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    .line 708
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    :cond_0
    const/4 v6, 0x0

    if-ne v2, v4, :cond_2

    .line 712
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    const-string v0, "No persisted jobs."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_1
    return-object v6

    .line 718
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "job-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 720
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v8, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v9, "version"

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 724
    .local v9, "version":I
    if-eqz v9, :cond_3

    .line 725
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    return-object v6

    .line 731
    .end local v9    # "version":I
    :cond_3
    nop

    .line 732
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 735
    .end local v2    # "eventType":I
    .local v0, "eventType":I
    :cond_4
    if-ne v0, v3, :cond_8

    .line 736
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 738
    .end local v7    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "job"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 739
    invoke-direct {p0, p2, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    .line 740
    .local v6, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v6, :cond_6

    .line 741
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read out "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_5
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 746
    :cond_6
    const-string v7, "Error reading job from file."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v6    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    :goto_1
    move-object v7, v2

    .end local v2    # "tagName":Ljava/lang/String;
    .restart local v7    # "tagName":Ljava/lang/String;
    :cond_8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 751
    if-ne v0, v4, :cond_4

    .line 752
    return-object v8

    .line 728
    .end local v0    # "eventType":I
    .local v2, "eventType":I
    :catch_0
    move-exception v3

    .line 729
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-object v6

    .line 754
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_9
    return-object v6
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 41
    .param p1, "rtcIsGood"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "JobStore"

    const/4 v4, 0x0

    .line 772
    .local v4, "internalFlags":I
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    move-object v6, v0

    .line 773
    .local v6, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 774
    const-string/jumbo v7, "uid"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 776
    .local v10, "uid":I
    const-string/jumbo v7, "priority"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 777
    .local v7, "val":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 778
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 780
    :cond_0
    const-string v8, "flags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 781
    if-eqz v7, :cond_1

    .line 782
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 784
    :cond_1
    const-string/jumbo v8, "internalFlags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 785
    if-eqz v7, :cond_2

    .line 786
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 788
    :cond_2
    const-string/jumbo v8, "sourceUserId"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 789
    if-nez v7, :cond_3

    const/4 v8, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_0
    move v15, v8

    .line 791
    .local v15, "sourceUserId":I
    const-string/jumbo v8, "lastSuccessfulRunTime"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 792
    if-nez v7, :cond_4

    const-wide/16 v19, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v19, v11

    .line 794
    .local v19, "lastSuccessfulRunTime":J
    :goto_1
    const-string/jumbo v11, "lastFailedRunTime"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 795
    if-nez v7, :cond_5

    const-wide/16 v21, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8

    move-wide/from16 v21, v11

    .line 799
    .end local v7    # "val":Ljava/lang/String;
    .local v21, "lastFailedRunTime":J
    :goto_2
    nop

    .line 801
    const-string/jumbo v7, "sourcePackageName"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v11, "sourceTag"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 807
    .local v25, "sourceTag":Ljava/lang/String;
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 808
    .local v11, "eventType":I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_18

    .line 810
    const/4 v13, 0x2

    if-ne v11, v13, :cond_17

    .line 811
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v8, "constraints"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move/from16 v34, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    goto/16 :goto_e

    .line 816
    :cond_6
    :try_start_1
    invoke-direct {v1, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    .line 820
    nop

    .line 821
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 825
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 826
    if-eq v11, v12, :cond_16

    .line 827
    if-eq v11, v13, :cond_7

    .line 828
    return-object v5

    .line 834
    :cond_7
    :try_start_2
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v14, v8

    .line 840
    .local v14, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    nop

    .line 842
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 843
    .local v8, "elapsedNow":J
    invoke-static {v14, v8, v9}, Lcom/android/server/job/JobStore;->access$600(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v12

    .line 845
    .local v12, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "periodic"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 847
    :try_start_3
    const-string/jumbo v0, "period"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v26, v16

    .line 849
    .local v26, "periodMillis":J
    const-string v13, "flex"

    invoke-interface {v2, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v13

    .line 850
    if-eqz v0, :cond_8

    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 875
    .end local v0    # "val":Ljava/lang/String;
    .end local v26    # "periodMillis":J
    :catch_0
    move-exception v0

    move-object/from16 v31, v14

    goto/16 :goto_7

    .line 850
    .restart local v0    # "val":Ljava/lang/String;
    .restart local v26    # "periodMillis":J
    :cond_8
    move-wide/from16 v16, v26

    :goto_5
    move-wide/from16 v29, v16

    .line 851
    .local v29, "flexMillis":J
    move-object/from16 v16, v0

    move-object/from16 v31, v14

    move-wide/from16 v13, v26

    move-wide/from16 v0, v29

    .end local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v26    # "periodMillis":J
    .end local v29    # "flexMillis":J
    .local v0, "flexMillis":J
    .local v13, "periodMillis":J
    .local v16, "val":Ljava/lang/String;
    .local v31, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :try_start_5
    invoke-virtual {v6, v13, v14, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 856
    iget-object v5, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    add-long v32, v8, v13

    add-long v32, v32, v0

    cmp-long v5, v29, v32

    if-lez v5, :cond_9

    .line 857
    add-long v29, v8, v0

    add-long v29, v29, v13

    .line 859
    .local v29, "clampedLateRuntimeElapsed":J
    sub-long v32, v29, v0

    .line 861
    .local v32, "clampedEarlyRuntimeElapsed":J
    const-string v5, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    move-wide/from16 v34, v0

    .end local v0    # "flexMillis":J
    .local v34, "flexMillis":J
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 864
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, v0, v17

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 865
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1

    aput-object v1, v0, v17

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 866
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2

    aput-object v1, v0, v17

    const/4 v1, 0x3

    div-long v36, v32, v38

    .line 867
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v1

    div-long v36, v29, v38

    .line 869
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4

    aput-object v1, v0, v17

    .line 862
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 861
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    nop

    .line 873
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v12, v0

    .end local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_6

    .line 856
    .end local v29    # "clampedLateRuntimeElapsed":J
    .end local v32    # "clampedEarlyRuntimeElapsed":J
    .end local v34    # "flexMillis":J
    .local v0, "flexMillis":J
    .restart local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_9
    move-wide/from16 v34, v0

    .line 878
    .end local v0    # "flexMillis":J
    .end local v13    # "periodMillis":J
    .end local v16    # "val":Ljava/lang/String;
    :goto_6
    move-object v1, v12

    goto :goto_9

    .line 875
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_2
    move-exception v0

    move-object/from16 v31, v14

    .line 876
    .end local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_7
    const-string v1, "Error reading periodic execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v1, 0x0

    return-object v1

    .line 879
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_a
    move-object/from16 v31, v14

    .end local v14    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "one-off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 881
    :try_start_6
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_b

    .line 882
    :try_start_7
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    .line 888
    :catch_3
    move-exception v0

    move-object/from16 v5, p0

    move-wide/from16 v29, v8

    move/from16 v34, v15

    goto/16 :goto_d

    .line 884
    :cond_b
    :goto_8
    :try_start_8
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v0, v0, v13

    if-eqz v0, :cond_c

    .line 885
    :try_start_9
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 886
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 885
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    .line 891
    :cond_c
    move-object v1, v12

    .line 899
    .end local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v1, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_9
    move-object/from16 v5, p0

    invoke-direct {v5, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 901
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 905
    :goto_a
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 906
    .end local v11    # "eventType":I
    .local v14, "eventType":I
    const/4 v0, 0x4

    if-eq v14, v0, :cond_12

    .line 907
    const/4 v13, 0x2

    if-ne v14, v13, :cond_10

    .line 908
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "extras"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move-wide/from16 v29, v8

    move/from16 v33, v14

    move/from16 v34, v15

    goto/16 :goto_c

    .line 915
    :cond_d
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v13

    .line 916
    .local v13, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v6, v13}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 917
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 921
    :try_start_a
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 926
    .local v0, "builtJob":Landroid/app/job/JobInfo;
    nop

    .line 929
    const-string v11, "android"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v13, :cond_e

    .line 931
    const-string v11, "SyncManagerJob"

    const/4 v12, 0x0

    invoke-virtual {v13, v11, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 932
    const-string/jumbo v11, "owningPackage"

    invoke-virtual {v13, v11, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 933
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 934
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_e
    const-class v3, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobSchedulerInternal;

    .line 941
    .local v3, "service":Lcom/android/server/job/JobSchedulerInternal;
    invoke-static {v7, v15, v8, v9}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v27

    .line 943
    .local v27, "appBucket":I
    new-instance v28, Lcom/android/server/job/controllers/JobStatus;

    .line 946
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/app/job/JobInfo$Builder;->toBuild(Ljava/lang/Boolean;)Landroid/app/job/JobInfo;

    move-result-object v11

    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    .line 951
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v12, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 953
    if-eqz p1, :cond_f

    const/16 v26, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v26, v31

    :goto_b
    move-wide/from16 v29, v8

    .end local v8    # "elapsedNow":J
    .local v29, "elapsedNow":J
    move-object/from16 v8, v28

    move-object v9, v11

    move-object v11, v7

    move v12, v15

    move-object/from16 v32, v13

    .end local v13    # "extras":Landroid/os/PersistableBundle;
    .local v32, "extras":Landroid/os/PersistableBundle;
    move/from16 v13, v27

    move/from16 v33, v14

    .end local v14    # "eventType":I
    .local v33, "eventType":I
    move-object/from16 v14, v25

    move/from16 v34, v15

    .end local v15    # "sourceUserId":I
    .local v34, "sourceUserId":I
    move-wide/from16 v15, v16

    move-wide/from16 v17, v23

    move-object/from16 v23, v26

    move/from16 v24, v4

    invoke-direct/range {v8 .. v24}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;I)V

    .line 954
    .local v8, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v8

    .line 922
    .end local v0    # "builtJob":Landroid/app/job/JobInfo;
    .end local v3    # "service":Lcom/android/server/job/JobSchedulerInternal;
    .end local v27    # "appBucket":I
    .end local v29    # "elapsedNow":J
    .end local v32    # "extras":Landroid/os/PersistableBundle;
    .end local v33    # "eventType":I
    .end local v34    # "sourceUserId":I
    .local v8, "elapsedNow":J
    .restart local v13    # "extras":Landroid/os/PersistableBundle;
    .restart local v14    # "eventType":I
    .restart local v15    # "sourceUserId":I
    :catch_4
    move-exception v0

    move-wide/from16 v29, v8

    move-object/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move-object v8, v0

    .end local v8    # "elapsedNow":J
    .end local v13    # "extras":Landroid/os/PersistableBundle;
    .end local v14    # "eventType":I
    .end local v15    # "sourceUserId":I
    .restart local v29    # "elapsedNow":J
    .restart local v32    # "extras":Landroid/os/PersistableBundle;
    .restart local v33    # "eventType":I
    .restart local v34    # "sourceUserId":I
    move-object v0, v8

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to build job from XML, ignoring: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 923
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v3, 0x0

    return-object v3

    .line 907
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v29    # "elapsedNow":J
    .end local v32    # "extras":Landroid/os/PersistableBundle;
    .end local v33    # "eventType":I
    .end local v34    # "sourceUserId":I
    .restart local v8    # "elapsedNow":J
    .restart local v14    # "eventType":I
    .restart local v15    # "sourceUserId":I
    :cond_10
    move-wide/from16 v29, v8

    move/from16 v33, v14

    move/from16 v34, v15

    .line 909
    .end local v8    # "elapsedNow":J
    .end local v14    # "eventType":I
    .end local v15    # "sourceUserId":I
    .restart local v29    # "elapsedNow":J
    .restart local v33    # "eventType":I
    .restart local v34    # "sourceUserId":I
    :goto_c
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 910
    const-string v0, "Error reading extras, skipping."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_11
    const/4 v3, 0x0

    return-object v3

    .line 906
    .end local v29    # "elapsedNow":J
    .end local v33    # "eventType":I
    .end local v34    # "sourceUserId":I
    .restart local v8    # "elapsedNow":J
    .restart local v14    # "eventType":I
    .restart local v15    # "sourceUserId":I
    :cond_12
    move-wide/from16 v29, v8

    move/from16 v33, v14

    move/from16 v34, v15

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v16, 0x1

    .end local v8    # "elapsedNow":J
    .end local v14    # "eventType":I
    .end local v15    # "sourceUserId":I
    .restart local v29    # "elapsedNow":J
    .restart local v33    # "eventType":I
    .restart local v34    # "sourceUserId":I
    move/from16 v11, v33

    goto/16 :goto_a

    .line 888
    .end local v1    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v29    # "elapsedNow":J
    .end local v33    # "eventType":I
    .end local v34    # "sourceUserId":I
    .restart local v8    # "elapsedNow":J
    .restart local v11    # "eventType":I
    .restart local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v15    # "sourceUserId":I
    :catch_5
    move-exception v0

    move-object/from16 v5, p0

    move-wide/from16 v29, v8

    move/from16 v34, v15

    .line 889
    .end local v8    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v29    # "elapsedNow":J
    .restart local v34    # "sourceUserId":I
    :goto_d
    const-string v1, "Error reading job execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v1, 0x0

    return-object v1

    .line 893
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v29    # "elapsedNow":J
    .end local v34    # "sourceUserId":I
    .restart local v8    # "elapsedNow":J
    .restart local v15    # "sourceUserId":I
    :cond_13
    move-object/from16 v5, p0

    move-wide/from16 v29, v8

    move/from16 v34, v15

    .end local v8    # "elapsedNow":J
    .end local v15    # "sourceUserId":I
    .restart local v29    # "elapsedNow":J
    .restart local v34    # "sourceUserId":I
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_14
    const/4 v1, 0x0

    return-object v1

    .line 835
    .end local v12    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v29    # "elapsedNow":J
    .end local v31    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v34    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :catch_6
    move-exception v0

    move-object v5, v1

    move/from16 v34, v15

    move-object v1, v0

    .end local v15    # "sourceUserId":I
    .restart local v34    # "sourceUserId":I
    move-object v0, v1

    .line 836
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 837
    const-string v1, "Error parsing execution time parameters, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_15
    const/4 v1, 0x0

    return-object v1

    .line 826
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v34    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :cond_16
    move/from16 v16, v0

    move v0, v12

    move v8, v13

    move/from16 v34, v15

    const-wide/16 v13, 0x0

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    .end local v15    # "sourceUserId":I
    .restart local v34    # "sourceUserId":I
    move v13, v8

    move/from16 v0, v16

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    goto/16 :goto_4

    .line 817
    .end local v34    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :catch_7
    move-exception v0

    move/from16 v34, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    move-object v8, v0

    .end local v15    # "sourceUserId":I
    .restart local v34    # "sourceUserId":I
    move-object v0, v8

    .line 818
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v8, "Error reading constraints, skipping."

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-object v1

    .line 810
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v34    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :cond_17
    move/from16 v34, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    .line 813
    .end local v15    # "sourceUserId":I
    .restart local v34    # "sourceUserId":I
    :goto_e
    return-object v1

    .line 808
    .end local v34    # "sourceUserId":I
    .restart local v15    # "sourceUserId":I
    :cond_18
    move/from16 v16, v0

    move-object v5, v1

    move/from16 v34, v15

    const-wide/16 v13, 0x0

    .end local v15    # "sourceUserId":I
    .restart local v34    # "sourceUserId":I
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 796
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "sourcePackageName":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v11    # "eventType":I
    .end local v19    # "lastSuccessfulRunTime":J
    .end local v21    # "lastFailedRunTime":J
    .end local v25    # "sourceTag":Ljava/lang/String;
    .end local v34    # "sourceUserId":I
    :catch_8
    move-exception v0

    move-object v5, v1

    .line 797
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v1, "Error parsing job\'s required fields, skipping"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "numJobs":I
    const/4 v1, 0x0

    .line 659
    .local v1, "numSystemJobs":I
    const/4 v2, 0x0

    .line 662
    .local v2, "numSyncJobs":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 663
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v4, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 664
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v5

    .line 665
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_1

    .line 666
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 667
    .local v6, "now":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 668
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 669
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 670
    iput-wide v6, v9, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 671
    iget-object v10, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 673
    add-int/lit8 v0, v0, 0x1

    .line 674
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_0

    .line 675
    add-int/lit8 v1, v1, 0x1

    .line 676
    invoke-static {v9}, Lcom/android/server/job/JobStore;->access$300(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 677
    add-int/lit8 v2, v2, 0x1

    .line 667
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 682
    .end local v6    # "now":J
    .end local v8    # "i":I
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 691
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 692
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v0, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 693
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v1, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 694
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v2, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_2

    .line 682
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "numJobs":I
    .end local v1    # "numSystemJobs":I
    .end local v2    # "numSyncJobs":I
    .end local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 691
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "numJobs":I
    .restart local v1    # "numSystemJobs":I
    .restart local v2    # "numSyncJobs":I
    .restart local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 688
    :catch_0
    move-exception v3

    .line 689
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "JobStore"

    const-string v5, "Error jobstore xml."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 691
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 692
    goto :goto_1

    .line 684
    :catch_1
    move-exception v3

    .line 685
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 686
    const-string v4, "JobStore"

    const-string v5, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 691
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 692
    goto :goto_1

    .line 697
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " jobs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobStore"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 691
    :goto_3
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iget v4, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v4, :cond_4

    .line 692
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v0, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 693
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v1, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 694
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v2, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 696
    :cond_4
    throw v3
.end method
