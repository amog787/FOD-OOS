.class public Lcom/android/server/power/batterysaver/CpuFrequencies;
.super Ljava/lang/Object;
.source "CpuFrequencies.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CpuFrequencies"


# instance fields
.field private final mCoreAndFrequencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    .line 47
    return-void
.end method


# virtual methods
.method public addToSysFileMap(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 94
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 96
    .local v3, "core":I
    iget-object v4, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 98
    .local v4, "freq":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cpufreq/scaling_max_freq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "file":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    nop

    .end local v3    # "core":I
    .end local v4    # "freq":J
    .end local v6    # "file":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;
    .locals 13
    .param p1, "cpuNumberAndFrequencies"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 57
    .local v5, "pair":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 58
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 59
    goto :goto_1

    .line 61
    :cond_0
    const-string v6, ":"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "coreAndFreq":[Ljava/lang/String;
    array-length v8, v6

    if-ne v8, v7, :cond_1

    .line 66
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 67
    .local v7, "core":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 69
    .local v8, "freq":J
    iget-object v10, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v5    # "pair":Ljava/lang/String;
    .end local v6    # "coreAndFreq":[Ljava/lang/String;
    .end local v7    # "core":I
    .end local v8    # "freq":J
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .restart local v5    # "pair":Ljava/lang/String;
    .restart local v6    # "coreAndFreq":[Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/power/batterysaver/CpuFrequencies;
    .end local p1    # "cpuNumberAndFrequencies":Ljava/lang/String;
    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v5    # "pair":Ljava/lang/String;
    .end local v6    # "coreAndFreq":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/power/batterysaver/CpuFrequencies;
    .restart local p1    # "cpuNumberAndFrequencies":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v2, "CpuFrequencies"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid configuration: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    monitor-exit v0

    .line 75
    return-object p0

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public toSysFileMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 83
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;->addToSysFileMap(Ljava/util/Map;)V

    .line 84
    return-object v0
.end method
