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
.field public final name:Ljava/lang/String;

.field public final packages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation
.end field

.field public registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;


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

    .line 1041
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    .line 1042
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 1043
    invoke-virtual {p0, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 1044
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$ObserverInternal;
    .param p1, "x1"    # J

    .line 1033
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->prunePackagesLocked(J)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private prunePackagesLocked(J)Ljava/util/Set;
    .locals 7
    .param p1, "elapsedMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation

    .line 1092
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1093
    .local v0, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1094
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1095
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1096
    .local v2, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v3

    .line 1097
    .local v3, "oldState":I
    invoke-virtual {v2, p1, p2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->handleElapsedTimeLocked(J)I

    move-result v4

    .line 1098
    .local v4, "newState":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    if-ne v4, v5, :cond_0

    .line 1100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed health check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageWatchdog"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isExpiredLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1104
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1106
    .end local v2    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v3    # "oldState":I
    .end local v4    # "newState":I
    :cond_1
    goto :goto_0

    .line 1107
    :cond_2
    return-object v0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;
    .locals 14
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "watchdog"    # Lcom/android/server/PackageWatchdog;

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "observerName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "observer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "name"

    const-string v3, "PackageWatchdog"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 1138
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    const-string v1, "Unable to read observer name"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-object v4

    .line 1144
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 1147
    .local v5, "innerDepth":I
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1148
    const-string/jumbo v6, "package"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    .line 1150
    :try_start_1
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1151
    .local v8, "packageName":Ljava/lang/String;
    const-string v6, "duration"

    .line 1152
    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1151
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1153
    .local v9, "duration":J
    const-string v6, "health-check-duration"

    .line 1154
    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1153
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1156
    .local v11, "healthCheckDuration":J
    const-string/jumbo v6, "passed-health-check"

    .line 1157
    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1156
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 1158
    .local v13, "hasPassedHealthCheck":Z
    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JJZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v6

    .line 1160
    .local v6, "pkg":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v6, :cond_2

    .line 1161
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1166
    .end local v6    # "pkg":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "duration":J
    .end local v11    # "healthCheckDuration":J
    .end local v13    # "hasPassedHealthCheck":Z
    :cond_2
    goto :goto_0

    .line 1163
    :catch_0
    move-exception v6

    .line 1164
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping package for observer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1165
    goto :goto_0

    .line 1172
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    nop

    .line 1173
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1174
    return-object v4

    .line 1176
    :cond_4
    new-instance v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-direct {v2, v0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 1169
    :catch_1
    move-exception v2

    .line 1170
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read observer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    return-object v4
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1181
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1182
    .local v0, "isPersistent":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1184
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1185
    .local v3, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Failures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$400(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/util/LongArrayQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LongArrayQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Monitoring duration remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Explicit health check duration: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$500(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Health check state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$600(Lcom/android/server/PackageWatchdog$MonitoredPackage;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$700(Lcom/android/server/PackageWatchdog$MonitoredPackage;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1192
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    goto/16 :goto_1

    .line 1193
    :cond_1
    return-void
.end method

.method public onPackageFailureLocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 1117
    invoke-interface {v0, p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->mayObservePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/android/server/PackageWatchdog;->access$300()Lcom/android/server/PackageWatchdog;

    move-result-object v2

    sget-wide v3, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1122
    .local v0, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v0, :cond_1

    .line 1123
    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->onFailureLocked()Z

    move-result v1

    return v1

    .line 1125
    :cond_1
    return v1
.end method

.method public updatePackagesLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 1069
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v0, 0x0

    .local v0, "pIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1070
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1071
    .local v1, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1072
    .local v2, "existingPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v2, :cond_0

    .line 1073
    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckDuration(J)V

    goto :goto_1

    .line 1075
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .end local v1    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v2    # "existingPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1078
    .end local v0    # "pIndex":I
    :cond_1
    return-void
.end method

.method public writeLocked(Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 1053
    const-string/jumbo v0, "observer"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1054
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1055
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1056
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1057
    .local v3, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v3, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->writeLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1055
    .end local v3    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1059
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    const/4 v0, 0x1

    return v0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PackageWatchdog"

    const-string v2, "Cannot save observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    const/4 v1, 0x0

    return v1
.end method
