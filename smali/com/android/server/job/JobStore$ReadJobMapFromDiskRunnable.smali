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

    .line 639
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 641
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 642
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

    .line 950
    const/4 v0, 0x0

    const-string/jumbo v1, "jobid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 951
    .local v1, "jobId":I
    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "class"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .local v3, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 961
    const/4 v0, 0x0

    const-string/jumbo v1, "net-capabilities"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, "netCapabilities":Ljava/lang/String;
    const-string/jumbo v2, "net-unwanted-capabilities"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 964
    .local v2, "netUnwantedCapabilities":Ljava/lang/String;
    const-string/jumbo v3, "net-transport-types"

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, "netTransportTypes":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 966
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    .line 967
    .local v5, "request":Landroid/net/NetworkRequest;
    if-eqz v2, :cond_0

    .line 968
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 969
    :cond_0
    iget-object v6, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getUnwantedCapabilities()[I

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v6

    :goto_0
    nop

    .line 972
    .local v6, "unwantedCapabilities":J
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 973
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 974
    invoke-static {v6, v7}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v10

    .line 972
    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkCapabilities;->setCapabilities([I[I)V

    .line 975
    iget-object v8, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 976
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v9

    .line 975
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->setTransportTypes([I)V

    .line 977
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 978
    .end local v5    # "request":Landroid/net/NetworkRequest;
    .end local v6    # "unwantedCapabilities":J
    goto :goto_1

    .line 980
    :cond_1
    const-string v5, "connectivity"

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 981
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 982
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 984
    :cond_2
    const-string/jumbo v6, "metered"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 985
    if-eqz v5, :cond_3

    .line 986
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 988
    :cond_3
    const-string/jumbo v6, "unmetered"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 989
    if-eqz v5, :cond_4

    .line 990
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 992
    :cond_4
    const-string/jumbo v6, "not-roaming"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 993
    if-eqz v5, :cond_5

    .line 994
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 998
    .end local v5    # "val":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v5, "idle"

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 999
    .restart local v5    # "val":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 1000
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 1002
    :cond_6
    const-string v6, "charging"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1003
    if-eqz v5, :cond_7

    .line 1004
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1006
    :cond_7
    const-string v6, "battery-not-low"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1007
    if-eqz v5, :cond_8

    .line 1008
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1010
    :cond_8
    const-string/jumbo v6, "storage-not-low"

    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .end local v5    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1012
    invoke-virtual {p1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1014
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

    .line 1045
    const/4 v0, 0x0

    const-string v1, "delay"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1047
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 1048
    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    nop

    .line 1049
    .local v2, "earliestRunTimeRtc":J
    const-string v4, "deadline"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .end local v1    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1051
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 1052
    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    nop

    .line 1053
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

    .line 1021
    const/4 v0, 0x0

    const-string v1, "initial-backoff"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1023
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1024
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1025
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1026
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 1028
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

    .line 692
    const-string v0, "Invalid version number, aborting jobs file read."

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 693
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 695
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 696
    .local v2, "eventType":I
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "JobStore"

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    .line 698
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 699
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

    .line 701
    :cond_0
    const/4 v6, 0x0

    if-ne v2, v4, :cond_2

    .line 702
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    const-string v0, "No persisted jobs."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    return-object v6

    .line 708
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 709
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "job-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 710
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v8, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v9, "version"

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 714
    .local v9, "version":I
    if-eqz v9, :cond_3

    .line 715
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    return-object v6

    .line 721
    .end local v9    # "version":I
    :cond_3
    nop

    .line 722
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 725
    .end local v2    # "eventType":I
    .local v0, "eventType":I
    :cond_4
    if-ne v0, v3, :cond_8

    .line 726
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 728
    .end local v7    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "job"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 729
    invoke-direct {p0, p2, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    .line 730
    .local v6, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v6, :cond_6

    .line 731
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read out "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_5
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 736
    :cond_6
    const-string v7, "Error reading job from file."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v6    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    :goto_1
    move-object v7, v2

    .end local v2    # "tagName":Ljava/lang/String;
    .restart local v7    # "tagName":Ljava/lang/String;
    :cond_8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 741
    if-ne v0, v4, :cond_4

    .line 742
    return-object v8

    .line 718
    .end local v0    # "eventType":I
    .local v2, "eventType":I
    :catch_0
    move-exception v3

    .line 719
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-object v6

    .line 744
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_9
    return-object v6
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 40
    .param p1, "rtcIsGood"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "JobStore"

    const/4 v4, 0x0

    .line 762
    .local v4, "internalFlags":I
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    move-object v6, v0

    .line 763
    .local v6, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 764
    const-string/jumbo v7, "uid"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 766
    .local v10, "uid":I
    const-string/jumbo v7, "priority"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 767
    .local v7, "val":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 768
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 770
    :cond_0
    const-string v8, "flags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 771
    if-eqz v7, :cond_1

    .line 772
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 774
    :cond_1
    const-string v8, "internalFlags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 775
    if-eqz v7, :cond_2

    .line 776
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9

    move v4, v8

    .line 778
    :cond_2
    :try_start_1
    const-string/jumbo v8, "sourceUserId"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 779
    if-nez v7, :cond_3

    const/4 v8, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_0
    move v13, v8

    .line 781
    .local v13, "sourceUserId":I
    const-string/jumbo v8, "lastSuccessfulRunTime"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 782
    if-nez v7, :cond_4

    const-wide/16 v21, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v21, v11

    .line 784
    .local v21, "lastSuccessfulRunTime":J
    :goto_1
    const-string/jumbo v11, "lastFailedRunTime"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 785
    if-nez v7, :cond_5

    const-wide/16 v23, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8

    move-wide/from16 v23, v11

    .line 789
    .end local v7    # "val":Ljava/lang/String;
    .local v23, "lastFailedRunTime":J
    :goto_2
    nop

    .line 791
    const-string/jumbo v7, "sourcePackageName"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v11, "sourceTag"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 797
    .local v27, "sourceTag":Ljava/lang/String;
    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 798
    .local v11, "eventType":I
    const/4 v12, 0x4

    if-eq v11, v12, :cond_1a

    .line 800
    const/4 v14, 0x2

    if-ne v11, v14, :cond_19

    .line 801
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v8, "constraints"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move/from16 v28, v4

    move-object v1, v5

    move v5, v13

    goto/16 :goto_10

    .line 806
    :cond_6
    :try_start_2
    invoke-direct {v1, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    .line 810
    nop

    .line 811
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 815
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 816
    if-eq v11, v12, :cond_18

    .line 817
    if-eq v11, v14, :cond_7

    .line 818
    return-object v5

    .line 824
    :cond_7
    :try_start_3
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v9, v8

    .line 830
    .local v9, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    nop

    .line 832
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    move/from16 v18, v13

    .end local v13    # "sourceUserId":I
    .local v18, "sourceUserId":I
    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 833
    .local v12, "elapsedNow":J
    invoke-static {v9, v12, v13}, Lcom/android/server/job/JobStore;->access$600(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v8

    .line 835
    .local v8, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "periodic"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 837
    :try_start_4
    const-string/jumbo v14, "period"

    invoke-interface {v2, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 838
    .local v14, "val":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    move-wide/from16 v28, v25

    .line 839
    .local v28, "periodMillis":J
    const-string v0, "flex"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 840
    .end local v14    # "val":Ljava/lang/String;
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_8

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v30
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 865
    .end local v0    # "val":Ljava/lang/String;
    .end local v28    # "periodMillis":J
    :catch_0
    move-exception v0

    move/from16 v28, v4

    goto/16 :goto_7

    .line 840
    .restart local v0    # "val":Ljava/lang/String;
    .restart local v28    # "periodMillis":J
    :cond_8
    move-wide/from16 v30, v28

    :goto_5
    move-wide/from16 v32, v30

    .line 841
    .local v32, "flexMillis":J
    move-object v14, v0

    move-wide/from16 v0, v28

    move/from16 v28, v4

    move-wide/from16 v4, v32

    .end local v32    # "flexMillis":J
    .local v0, "periodMillis":J
    .local v4, "flexMillis":J
    .restart local v14    # "val":Ljava/lang/String;
    .local v28, "internalFlags":I
    :try_start_6
    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 846
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    add-long v32, v12, v0

    add-long v32, v32, v4

    cmp-long v15, v30, v32

    if-lez v15, :cond_9

    .line 847
    add-long v32, v12, v4

    add-long v32, v32, v0

    .line 849
    .local v32, "clampedLateRuntimeElapsed":J
    sub-long v30, v32, v4

    .line 851
    .local v30, "clampedEarlyRuntimeElapsed":J
    const-string v15, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    move-wide/from16 v34, v0

    .end local v0    # "periodMillis":J
    .local v34, "periodMillis":J
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 854
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v29, 0x0

    aput-object v1, v0, v29

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 855
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v25, 0x1

    aput-object v1, v0, v25

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 856
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v20, 0x2

    aput-object v1, v0, v20

    const/4 v1, 0x3

    div-long v36, v30, v38

    .line 857
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v0, v1

    div-long v36, v32, v38

    .line 859
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x4

    aput-object v1, v0, v19

    move-object v1, v15

    move/from16 v15, v29

    .line 852
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    nop

    .line 863
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v8, v0

    .end local v8    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v0, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_6

    .line 846
    .end local v30    # "clampedEarlyRuntimeElapsed":J
    .end local v32    # "clampedLateRuntimeElapsed":J
    .end local v34    # "periodMillis":J
    .local v0, "periodMillis":J
    .restart local v8    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_9
    move-wide/from16 v34, v0

    const/4 v15, 0x0

    .line 868
    .end local v0    # "periodMillis":J
    .end local v4    # "flexMillis":J
    .end local v14    # "val":Ljava/lang/String;
    :goto_6
    move-object v1, v8

    const-wide/16 v4, 0x0

    goto :goto_9

    .line 865
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v28    # "internalFlags":I
    .local v4, "internalFlags":I
    :catch_2
    move-exception v0

    move/from16 v28, v4

    .line 866
    .end local v4    # "internalFlags":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v28    # "internalFlags":I
    :goto_7
    const-string v1, "Error reading periodic execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v1, 0x0

    return-object v1

    .line 869
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v28    # "internalFlags":I
    .restart local v4    # "internalFlags":I
    :cond_a
    move/from16 v28, v4

    const/4 v15, 0x0

    .end local v4    # "internalFlags":I
    .restart local v28    # "internalFlags":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "one-off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 871
    :try_start_7
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_b

    .line 872
    :try_start_8
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v12

    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    .line 878
    :catch_3
    move-exception v0

    move-object v2, v9

    move-wide/from16 v33, v12

    move/from16 v5, v18

    goto/16 :goto_f

    .line 874
    :cond_b
    :goto_8
    :try_start_9
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v0, v0, v16

    if-eqz v0, :cond_c

    .line 875
    :try_start_a
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 876
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v12

    .line 875
    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3

    .line 881
    :cond_c
    move-object v1, v8

    .line 889
    .end local v8    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v1, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_9
    move-object/from16 v8, p0

    invoke-direct {v8, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 891
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 895
    :goto_a
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 896
    const/4 v0, 0x4

    if-eq v11, v0, :cond_14

    .line 897
    const/4 v14, 0x2

    if-ne v11, v14, :cond_12

    .line 898
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, "extras"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v2, v9

    move/from16 v32, v11

    move-wide/from16 v33, v12

    move/from16 v5, v18

    goto/16 :goto_e

    .line 905
    :cond_d
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v14

    .line 906
    .local v14, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v6, v14}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 907
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 911
    :try_start_b
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 916
    .local v0, "builtJob":Landroid/app/job/JobInfo;
    nop

    .line 919
    const-string v4, "android"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v14, :cond_e

    .line 921
    const-string v4, "SyncManagerJob"

    invoke-virtual {v14, v4, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 922
    const-string/jumbo v4, "owningPackage"

    invoke-virtual {v14, v4, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 923
    .end local v7    # "sourcePackageName":Ljava/lang/String;
    .local v4, "sourcePackageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 930
    .end local v4    # "sourcePackageName":Ljava/lang/String;
    .restart local v7    # "sourcePackageName":Ljava/lang/String;
    :cond_e
    move-object v4, v7

    .end local v7    # "sourcePackageName":Ljava/lang/String;
    .restart local v4    # "sourcePackageName":Ljava/lang/String;
    :cond_f
    :goto_b
    const-class v3, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobSchedulerInternal;

    .line 931
    .local v3, "service":Lcom/android/server/job/JobSchedulerInternal;
    move/from16 v5, v18

    .end local v18    # "sourceUserId":I
    .local v5, "sourceUserId":I
    invoke-static {v4, v5, v12, v13}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v7

    .line 933
    .local v7, "appBucket":I
    if-eqz v3, :cond_10

    invoke-interface {v3}, Lcom/android/server/job/JobSchedulerInternal;->currentHeartbeat()J

    move-result-wide v15

    goto :goto_c

    :cond_10
    const-wide/16 v15, 0x0

    :goto_c
    move-object/from16 v29, v14

    .end local v14    # "extras":Landroid/os/PersistableBundle;
    .local v29, "extras":Landroid/os/PersistableBundle;
    move-wide v14, v15

    .line 934
    .local v14, "currentHeartbeat":J
    new-instance v30, Lcom/android/server/job/controllers/JobStatus;

    .line 937
    move-object/from16 v31, v0

    const/16 v18, 0x1

    .end local v0    # "builtJob":Landroid/app/job/JobInfo;
    .local v31, "builtJob":Landroid/app/job/JobInfo;
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->toBuild(Ljava/lang/Boolean;)Landroid/app/job/JobInfo;

    move-result-object v0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 942
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 944
    if-eqz p1, :cond_11

    const/16 v25, 0x0

    goto :goto_d

    :cond_11
    move-object/from16 v25, v9

    :goto_d
    move-object/from16 v8, v30

    move-object v2, v9

    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v2, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object v9, v0

    move/from16 v32, v11

    .end local v11    # "eventType":I
    .local v32, "eventType":I
    move-object v11, v4

    move-wide/from16 v33, v12

    .end local v12    # "elapsedNow":J
    .local v33, "elapsedNow":J
    move v12, v5

    move v13, v7

    move-object/from16 v16, v27

    move/from16 v26, v28

    invoke-direct/range {v8 .. v26}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIJLjava/lang/String;JJJJLandroid/util/Pair;I)V

    move-object/from16 v0, v30

    .line 945
    .local v0, "js":Lcom/android/server/job/controllers/JobStatus;
    return-object v0

    .line 912
    .end local v0    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v3    # "service":Lcom/android/server/job/JobSchedulerInternal;
    .end local v4    # "sourcePackageName":Ljava/lang/String;
    .end local v5    # "sourceUserId":I
    .end local v29    # "extras":Landroid/os/PersistableBundle;
    .end local v31    # "builtJob":Landroid/app/job/JobInfo;
    .end local v32    # "eventType":I
    .end local v33    # "elapsedNow":J
    .local v7, "sourcePackageName":Ljava/lang/String;
    .restart local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v12    # "elapsedNow":J
    .local v14, "extras":Landroid/os/PersistableBundle;
    .restart local v18    # "sourceUserId":I
    :catch_4
    move-exception v0

    move-object v2, v9

    move/from16 v32, v11

    move-wide/from16 v33, v12

    move-object/from16 v29, v14

    move/from16 v5, v18

    move-object v4, v0

    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v12    # "elapsedNow":J
    .end local v14    # "extras":Landroid/os/PersistableBundle;
    .end local v18    # "sourceUserId":I
    .restart local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v5    # "sourceUserId":I
    .restart local v29    # "extras":Landroid/os/PersistableBundle;
    .restart local v32    # "eventType":I
    .restart local v33    # "elapsedNow":J
    move-object v0, v4

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to build job from XML, ignoring: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 913
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v3, 0x0

    return-object v3

    .line 897
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "sourceUserId":I
    .end local v29    # "extras":Landroid/os/PersistableBundle;
    .end local v32    # "eventType":I
    .end local v33    # "elapsedNow":J
    .restart local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v12    # "elapsedNow":J
    .restart local v18    # "sourceUserId":I
    :cond_12
    move-object v2, v9

    move/from16 v32, v11

    move-wide/from16 v33, v12

    move/from16 v5, v18

    .line 899
    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v12    # "elapsedNow":J
    .end local v18    # "sourceUserId":I
    .restart local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v5    # "sourceUserId":I
    .restart local v32    # "eventType":I
    .restart local v33    # "elapsedNow":J
    :goto_e
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 900
    const-string v0, "Error reading extras, skipping."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_13
    const/4 v3, 0x0

    return-object v3

    .line 896
    .end local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "sourceUserId":I
    .end local v32    # "eventType":I
    .end local v33    # "elapsedNow":J
    .restart local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v12    # "elapsedNow":J
    .restart local v18    # "sourceUserId":I
    :cond_14
    move-object v2, v9

    move/from16 v32, v11

    move-wide/from16 v33, v12

    move/from16 v5, v18

    const/4 v14, 0x2

    const/16 v18, 0x1

    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "eventType":I
    .end local v12    # "elapsedNow":J
    .end local v18    # "sourceUserId":I
    .restart local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v5    # "sourceUserId":I
    .restart local v32    # "eventType":I
    .restart local v33    # "elapsedNow":J
    move-object/from16 v8, p0

    move/from16 v18, v5

    const-wide/16 v4, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_a

    .line 878
    .end local v1    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "sourceUserId":I
    .end local v32    # "eventType":I
    .end local v33    # "elapsedNow":J
    .restart local v8    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v11    # "eventType":I
    .restart local v12    # "elapsedNow":J
    .restart local v18    # "sourceUserId":I
    :catch_5
    move-exception v0

    move-object v2, v9

    move-wide/from16 v33, v12

    move/from16 v5, v18

    .line 879
    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12    # "elapsedNow":J
    .end local v18    # "sourceUserId":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v5    # "sourceUserId":I
    .restart local v33    # "elapsedNow":J
    :goto_f
    const-string v1, "Error reading job execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v1, 0x0

    return-object v1

    .line 883
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "sourceUserId":I
    .end local v33    # "elapsedNow":J
    .restart local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v12    # "elapsedNow":J
    .restart local v18    # "sourceUserId":I
    :cond_15
    move-object v2, v9

    move-wide/from16 v33, v12

    move/from16 v5, v18

    .end local v9    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12    # "elapsedNow":J
    .end local v18    # "sourceUserId":I
    .restart local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v5    # "sourceUserId":I
    .restart local v33    # "elapsedNow":J
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 884
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

    .line 887
    :cond_16
    const/4 v1, 0x0

    return-object v1

    .line 825
    .end local v2    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "sourceUserId":I
    .end local v8    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v28    # "internalFlags":I
    .end local v33    # "elapsedNow":J
    .local v4, "internalFlags":I
    .restart local v13    # "sourceUserId":I
    :catch_6
    move-exception v0

    move/from16 v28, v4

    move v5, v13

    move-object v1, v0

    .end local v4    # "internalFlags":I
    .end local v13    # "sourceUserId":I
    .restart local v5    # "sourceUserId":I
    .restart local v28    # "internalFlags":I
    move-object v0, v1

    .line 826
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 827
    const-string v1, "Error parsing execution time parameters, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_17
    const/4 v1, 0x0

    return-object v1

    .line 816
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "sourceUserId":I
    .end local v28    # "internalFlags":I
    .restart local v4    # "internalFlags":I
    .restart local v13    # "sourceUserId":I
    :cond_18
    move/from16 v18, v0

    move/from16 v28, v4

    move-object v1, v5

    move v0, v12

    move v5, v13

    .end local v4    # "internalFlags":I
    .end local v13    # "sourceUserId":I
    .restart local v5    # "sourceUserId":I
    .restart local v28    # "internalFlags":I
    move-object/from16 v2, p2

    move/from16 v0, v18

    move-object v5, v1

    move-object/from16 v1, p0

    goto/16 :goto_4

    .line 807
    .end local v5    # "sourceUserId":I
    .end local v28    # "internalFlags":I
    .restart local v4    # "internalFlags":I
    .restart local v13    # "sourceUserId":I
    :catch_7
    move-exception v0

    move/from16 v28, v4

    move-object v1, v5

    move v5, v13

    move-object v2, v0

    .end local v4    # "internalFlags":I
    .end local v13    # "sourceUserId":I
    .restart local v5    # "sourceUserId":I
    .restart local v28    # "internalFlags":I
    move-object v0, v2

    .line 808
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v2, "Error reading constraints, skipping."

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-object v1

    .line 800
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "sourceUserId":I
    .end local v28    # "internalFlags":I
    .restart local v4    # "internalFlags":I
    .restart local v13    # "sourceUserId":I
    :cond_19
    move/from16 v28, v4

    move-object v1, v5

    move v5, v13

    .line 803
    .end local v4    # "internalFlags":I
    .end local v13    # "sourceUserId":I
    .restart local v5    # "sourceUserId":I
    .restart local v28    # "internalFlags":I
    :goto_10
    return-object v1

    .line 798
    .end local v5    # "sourceUserId":I
    .end local v28    # "internalFlags":I
    .restart local v4    # "internalFlags":I
    .restart local v13    # "sourceUserId":I
    :cond_1a
    move/from16 v18, v0

    move/from16 v28, v4

    move v5, v13

    .end local v4    # "internalFlags":I
    .end local v13    # "sourceUserId":I
    .restart local v5    # "sourceUserId":I
    .restart local v28    # "internalFlags":I
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 786
    .end local v5    # "sourceUserId":I
    .end local v6    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v7    # "sourcePackageName":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v11    # "eventType":I
    .end local v21    # "lastSuccessfulRunTime":J
    .end local v23    # "lastFailedRunTime":J
    .end local v27    # "sourceTag":Ljava/lang/String;
    .end local v28    # "internalFlags":I
    .restart local v4    # "internalFlags":I
    :catch_8
    move-exception v0

    move/from16 v28, v4

    .end local v4    # "internalFlags":I
    .restart local v28    # "internalFlags":I
    goto :goto_11

    .end local v28    # "internalFlags":I
    .restart local v4    # "internalFlags":I
    :catch_9
    move-exception v0

    .line 787
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_11
    const-string v1, "Error parsing job\'s required fields, skipping"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "numJobs":I
    const/4 v1, 0x0

    .line 648
    .local v1, "numSystemJobs":I
    const/4 v2, 0x0

    .line 651
    .local v2, "numSyncJobs":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 652
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v4, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 653
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v5

    .line 654
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_1

    .line 655
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 656
    .local v6, "now":J
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    .line 657
    .local v8, "am":Landroid/app/IActivityManager;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 658
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 659
    .local v10, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v10, v8}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 660
    iput-wide v6, v10, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 661
    iget-object v11, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v11, v10}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 663
    add-int/lit8 v0, v0, 0x1

    .line 664
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_0

    .line 665
    add-int/lit8 v1, v1, 0x1

    .line 666
    invoke-static {v10}, Lcom/android/server/job/JobStore;->access$300(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 667
    add-int/lit8 v2, v2, 0x1

    .line 657
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 672
    .end local v6    # "now":J
    .end local v8    # "am":Landroid/app/IActivityManager;
    .end local v9    # "i":I
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 681
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 682
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v0, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 683
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v1, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 684
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v2, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_2

    .line 672
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

    .line 681
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "numJobs":I
    .restart local v1    # "numSystemJobs":I
    .restart local v2    # "numSyncJobs":I
    .restart local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 678
    :catch_0
    move-exception v3

    .line 679
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "JobStore"

    const-string v5, "Error jobstore xml."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 681
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 682
    goto :goto_1

    .line 674
    :catch_1
    move-exception v3

    .line 675
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {}, Lcom/android/server/job/JobStore;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    const-string v4, "JobStore"

    const-string v5, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 681
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    .line 682
    goto :goto_1

    .line 687
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

    .line 688
    return-void

    .line 681
    :goto_3
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iget v4, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v4, :cond_4

    .line 682
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v0, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 683
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v1, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 684
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v2, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    :cond_4
    throw v3
.end method
