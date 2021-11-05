.class Lcom/android/server/PackageWatchdog$MonitoredPackage;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitoredPackage"
.end annotation


# instance fields
.field private mDurationMs:J

.field private final mFailureHistory:Landroid/util/LongArrayQueue;

.field private mHasPassedHealthCheck:Z

.field private mHealthCheckDurationMs:J

.field private mHealthCheckState:I

.field private final mPackage:Landroid/content/pm/VersionedPackage;

.field final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method private constructor <init>(Lcom/android/server/PackageWatchdog;Landroid/content/pm/VersionedPackage;JJZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/PackageWatchdog;
    .param p2, "pkg"    # Landroid/content/pm/VersionedPackage;
    .param p3, "durationMs"    # J
    .param p5, "healthCheckDurationMs"    # J
    .param p7, "hasPassedHealthCheck"    # Z

    .line 1260
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    .line 1242
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1256
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1261
    iput-object p2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackage:Landroid/content/pm/VersionedPackage;

    .line 1262
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1263
    iput-wide p5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1264
    iput-boolean p7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1265
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    .line 1266
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Landroid/content/pm/VersionedPackage;JJZLcom/android/server/PackageWatchdog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/PackageWatchdog;
    .param p2, "x1"    # Landroid/content/pm/VersionedPackage;
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # Z
    .param p8, "x5"    # Lcom/android/server/PackageWatchdog$1;

    .line 1234
    invoke-direct/range {p0 .. p7}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Landroid/content/pm/VersionedPackage;JJZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1234
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/content/pm/VersionedPackage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1234
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackage:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1234
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/util/LongArrayQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1234
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1234
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/PackageWatchdog$MonitoredPackage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1234
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PackageWatchdog$MonitoredPackage;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .param p1, "x1"    # I

    .line 1234
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackage:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toPositive(J)J
    .locals 2
    .param p1, "value"    # J

    .line 1458
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method private toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 1442
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1452
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1450
    :cond_0
    const-string v0, "FAILED"

    return-object v0

    .line 1448
    :cond_1
    const-string v0, "PASSED"

    return-object v0

    .line 1446
    :cond_2
    const-string v0, "INACTIVE"

    return-object v0

    .line 1444
    :cond_3
    const-string v0, "ACTIVE"

    return-object v0
.end method

.method private updateHealthCheckStateLocked()I
    .locals 7

    .line 1423
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1424
    .local v0, "oldState":I
    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    if-eqz v1, :cond_0

    .line 1426
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_1

    .line 1427
    :cond_0
    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iget-wide v5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    cmp-long v3, v5, v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 1430
    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1431
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_1

    .line 1433
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_1

    .line 1429
    :cond_3
    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1435
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated health check state for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    invoke-direct {p0, v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1435
    const-string v2, "PackageWatchdog"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v1
.end method


# virtual methods
.method public getHealthCheckStateLocked()I
    .locals 1

    .line 1379
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0
.end method

.method public getShortestScheduleDurationMsLocked()J
    .locals 4

    .line 1390
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v0

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1392
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    .line 1390
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleElapsedTimeLocked(J)I
    .locals 2
    .param p1, "elapsedMs"    # J

    .line 1330
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot handle non-positive elapsed time for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0

    .line 1335
    :cond_0
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1336
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    if-nez v0, :cond_1

    .line 1340
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1342
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public isExpiredLocked()Z
    .locals 4

    .line 1401
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingHealthChecksLocked()Z
    .locals 2

    .line 1410
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onFailureLocked()Z
    .locals 6

    .line 1290
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->access$900(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1291
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 1292
    :goto_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v4}, Lcom/android/server/PackageWatchdog;->access$1000(Lcom/android/server/PackageWatchdog;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1294
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    .line 1296
    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->access$1100(Lcom/android/server/PackageWatchdog;)I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1297
    .local v2, "failed":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 1298
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->clear()V

    .line 1300
    :cond_2
    return v2
.end method

.method public setHealthCheckActiveLocked(J)I
    .locals 3
    .param p1, "initialHealthCheckDurationMs"    # J

    .line 1310
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set non-positive health check duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Using total duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1316
    :cond_0
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1318
    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1320
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public tryPassHealthCheckLocked()I
    .locals 2

    .line 1360
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1365
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public updateHealthCheckDuration(J)V
    .locals 0
    .param p1, "newDurationMs"    # J

    .line 1348
    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1349
    return-void
.end method

.method public writeLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1272
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1273
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1274
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1275
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1274
    const-string v3, "health-check-duration"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1276
    iget-boolean v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1277
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 1276
    const-string/jumbo v3, "passed-health-check"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1278
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1279
    return-void
.end method
