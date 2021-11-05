.class public final Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;
.super Ljava/lang/Object;
.source "ContentCaptureMetricsLogger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static writeServiceEvent(ILandroid/content/ComponentName;)V
    .locals 2
    .param p0, "eventType"    # I
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 58
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static writeServiceEvent(ILandroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "eventType"    # I
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;

    .line 46
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {p0, v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static writeServiceEvent(ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventType"    # I
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventType"    # I
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .line 39
    const/16 v0, 0xcf

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 7
    .param p0, "sessionId"    # I
    .param p1, "event"    # I
    .param p2, "flags"    # I
    .param p3, "service"    # Landroid/content/ComponentName;
    .param p4, "app"    # Landroid/content/ComponentName;
    .param p5, "isChildSession"    # Z

    .line 91
    nop

    .line 92
    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {p4}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    .line 91
    const/16 v0, 0xd0

    move v1, p0

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public static writeSessionFlush(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .locals 15
    .param p0, "sessionId"    # I
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "app"    # Landroid/content/ComponentName;
    .param p3, "fm"    # Landroid/service/contentcapture/FlushMetrics;
    .param p4, "options"    # Landroid/content/ContentCaptureOptions;
    .param p5, "flushReason"    # I

    .line 100
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 101
    invoke-static/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    iget v7, v0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    iget v8, v0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    iget v9, v0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    iget v10, v0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    iget v11, v1, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    iget v12, v1, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    iget v13, v1, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    .line 100
    const/16 v2, 0xd1

    move v3, p0

    move/from16 v14, p5

    invoke-static/range {v2 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IIIIIIIII)V

    .line 106
    return-void
.end method

.method public static writeSetWhitelistEvent(Landroid/content/ComponentName;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p0, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {p0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    const-string v3, " "

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 68
    .local v4, "size":I
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 78
    .local v2, "size":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "size":I
    .end local v4    # "i":I
    :cond_1
    const/16 v2, 0xcf

    const/4 v3, 0x3

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v2, v3, v0, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
