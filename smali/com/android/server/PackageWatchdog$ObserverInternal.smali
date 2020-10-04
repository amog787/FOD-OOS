.class Lcom/android/server/PackageWatchdog$ObserverInternal;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverInternal"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation
.end field

.field public mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 827
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 828
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mName:Ljava/lang/String;

    .line 829
    invoke-virtual {p0, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 830
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$ObserverInternal;
    .param p1, "x1"    # J

    .line 818
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->prunePackagesLocked(J)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private prunePackagesLocked(J)Ljava/util/Set;
    .locals 7
    .param p1, "elapsedMs"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation

    .line 873
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 874
    .local v0, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 875
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 876
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 877
    .local v2, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v3

    .line 878
    .local v3, "oldState":I
    invoke-virtual {v2, p1, p2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->handleElapsedTimeLocked(J)I

    move-result v4

    .line 879
    .local v4, "newState":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    if-ne v4, v5, :cond_0

    .line 881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed health check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageWatchdog"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isExpiredLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 885
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 887
    .end local v2    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v3    # "oldState":I
    .end local v4    # "newState":I
    :cond_1
    goto :goto_0

    .line 888
    :cond_2
    return-object v0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;
    .locals 16
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "watchdog"    # Lcom/android/server/PackageWatchdog;

    .line 912
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 913
    .local v0, "observerName":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "observer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "name"

    const-string v4, "PackageWatchdog"

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 914
    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    const-string v2, "Unable to read observer name"

    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-object v5

    .line 915
    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 913
    :cond_1
    move-object v2, v0

    .line 920
    .end local v0    # "observerName":Ljava/lang/String;
    .local v2, "observerName":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 921
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 923
    .local v7, "innerDepth":I
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v1, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 924
    const-string/jumbo v0, "package"

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 926
    :try_start_1
    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 927
    .local v10, "packageName":Ljava/lang/String;
    const-string v0, "duration"

    .line 928
    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 929
    .local v11, "duration":J
    const-string v0, "health-check-duration"

    .line 930
    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 932
    .local v13, "healthCheckDuration":J
    const-string/jumbo v0, "passed-health-check"

    .line 933
    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 934
    .local v15, "hasPassedHealthCheck":Z
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 935
    new-instance v0, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v15}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 941
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "duration":J
    .end local v13    # "healthCheckDuration":J
    .end local v15    # "hasPassedHealthCheck":Z
    :cond_3
    goto :goto_1

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping package for observer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 940
    goto :goto_1

    .line 947
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    nop

    .line 948
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 949
    return-object v5

    .line 951
    :cond_5
    new-instance v0, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-direct {v0, v2, v6}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 944
    :catch_1
    move-exception v0

    .line 945
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read observer "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    return-object v5
.end method


# virtual methods
.method public onPackageFailureLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 898
    .local v0, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->onFailureLocked()Z

    move-result v1

    return v1

    .line 901
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updatePackagesLocked(Ljava/util/List;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 855
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v0, 0x0

    .local v0, "pIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 856
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 857
    .local v1, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .end local v1    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    .end local v0    # "pIndex":I
    :cond_0
    return-void
.end method

.method public writeLocked(Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 839
    const-string/jumbo v0, "observer"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mName:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    move v3, v1

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 842
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 843
    .local v4, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v4, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->writeLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 841
    .end local v4    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 845
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    const/4 v0, 0x1

    return v0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PackageWatchdog"

    const-string v3, "Cannot save observer"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    return v1
.end method
