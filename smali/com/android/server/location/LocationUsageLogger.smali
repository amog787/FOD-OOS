.class public Lcom/android/server/location/LocationUsageLogger;
.super Ljava/lang/Object;
.source "LocationUsageLogger.java"


# static fields
.field private static final API_USAGE_LOG_HOURLY_CAP:I = 0x3c

.field private static final ONE_HOUR_IN_MILLIS:I = 0x36ee80

.field private static final ONE_MINUTE_IN_MILLIS:I = 0xea60

.field private static final ONE_SEC_IN_MILLIS:I = 0x3e8


# instance fields
.field private mApiUsageLogHourlyCount:I

.field private mLastApiUsageLogHour:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    return-void
.end method

.method private static bucketizeDistance(F)I
    .locals 2
    .param p0, "smallestDisplacement"    # F

    .line 155
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    .line 156
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    .line 158
    const/4 v0, 0x2

    return v0

    .line 160
    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method private static bucketizeExpireIn(J)I
    .locals 2
    .param p0, "expireIn"    # J

    .line 183
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x6

    return v0

    .line 187
    :cond_0
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 188
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_1
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 190
    const/4 v0, 0x2

    return v0

    .line 191
    :cond_2
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    .line 192
    const/4 v0, 0x3

    return v0

    .line 193
    :cond_3
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    .line 194
    const/4 v0, 0x4

    return v0

    .line 196
    :cond_4
    const/4 v0, 0x5

    return v0
.end method

.method private static bucketizeInterval(J)I
    .locals 2
    .param p0, "interval"    # J

    .line 139
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 142
    const/4 v0, 0x2

    return v0

    .line 143
    :cond_1
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 144
    const/4 v0, 0x3

    return v0

    .line 145
    :cond_2
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    .line 146
    const/4 v0, 0x4

    return v0

    .line 147
    :cond_3
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    .line 148
    const/4 v0, 0x5

    return v0

    .line 150
    :cond_4
    const/4 v0, 0x6

    return v0
.end method

.method private static bucketizeProvider(Ljava/lang/String;)I
    .locals 1
    .param p0, "provider"    # Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x2

    return v0

    .line 129
    :cond_1
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    return v0

    .line 131
    :cond_2
    const-string v0, "fused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    const/4 v0, 0x4

    return v0

    .line 134
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static bucketizeRadius(F)I
    .locals 1
    .param p0, "radius"    # F

    .line 165
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 166
    const/4 v0, 0x7

    return v0

    .line 167
    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 168
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 170
    const/4 v0, 0x2

    return v0

    .line 171
    :cond_2
    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    .line 172
    const/4 v0, 0x3

    return v0

    .line 173
    :cond_3
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_4

    .line 174
    const/4 v0, 0x4

    return v0

    .line 175
    :cond_4
    const v0, 0x461c4000    # 10000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_5

    .line 176
    const/4 v0, 0x5

    return v0

    .line 178
    :cond_5
    const/4 v0, 0x6

    return v0
.end method

.method private static categorizeActivityImportance(I)I
    .locals 1
    .param p0, "importance"    # I

    .line 201
    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    .line 202
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    const/16 v0, 0x7d

    if-ne p0, v0, :cond_1

    .line 206
    const/4 v0, 0x2

    return v0

    .line 208
    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method private static getCallbackType(IZZ)I
    .locals 1
    .param p0, "apiType"    # I
    .param p1, "hasListener"    # Z
    .param p2, "hasIntent"    # Z

    .line 214
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 215
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_0
    if-eqz p2, :cond_1

    .line 221
    const/4 v0, 0x3

    return v0

    .line 222
    :cond_1
    if-eqz p1, :cond_2

    .line 223
    const/4 v0, 0x2

    return v0

    .line 225
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized hitApiUsageLogCap()Z
    .locals 6

    monitor-enter p0

    .line 230
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 231
    .local v0, "currentHour":J
    iget-wide v2, p0, Lcom/android/server/location/LocationUsageLogger;->mLastApiUsageLogHour:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 232
    iput-wide v0, p0, Lcom/android/server/location/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 233
    iput v3, p0, Lcom/android/server/location/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return v3

    .line 236
    .end local p0    # "this":Lcom/android/server/location/LocationUsageLogger;
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/android/server/location/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/16 v5, 0x3c

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/location/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    if-lt v2, v5, :cond_1

    move v3, v4

    :cond_1
    monitor-exit p0

    return v3

    .line 229
    .end local v0    # "currentHour":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public logLocationApiUsage(IILjava/lang/String;)V
    .locals 16
    .param p1, "usageType"    # I
    .param p2, "apiInUse"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 100
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    const/16 v1, 0xd2

    const/4 v4, 0x0

    .line 107
    invoke-static/range {p3 .. p3}, Lcom/android/server/location/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 113
    const/4 v0, 0x1

    move/from16 v15, p2

    :try_start_1
    invoke-static {v15, v0, v0}, Lcom/android/server/location/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 104
    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v15, p2

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    .locals 18
    .param p1, "usageType"    # I
    .param p2, "apiInUse"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "locationRequest"    # Landroid/location/LocationRequest;
    .param p5, "hasListener"    # Z
    .param p6, "hasIntent"    # Z
    .param p7, "geofence"    # Landroid/location/Geofence;
    .param p8, "activityImportance"    # I

    .line 57
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 62
    .local v2, "isLocationRequestNull":Z
    :goto_0
    if-nez p7, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    .line 64
    .local v3, "isGeofenceNull":Z
    :goto_1
    const/16 v4, 0xd2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    move v8, v1

    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/location/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5

    move v8, v5

    .line 69
    :goto_2
    if-eqz v2, :cond_4

    .line 70
    move v9, v1

    goto :goto_3

    .line 71
    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getQuality()I

    move-result v5

    move v9, v5

    .line 72
    :goto_3
    if-eqz v2, :cond_5

    .line 73
    move v10, v1

    goto :goto_4

    .line 74
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/LocationUsageLogger;->bucketizeInterval(J)I

    move-result v5

    move v10, v5

    .line 75
    :goto_4
    if-eqz v2, :cond_6

    .line 76
    move v11, v1

    goto :goto_5

    .line 77
    :cond_6
    nop

    .line 78
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v5

    .line 77
    invoke-static {v5}, Lcom/android/server/location/LocationUsageLogger;->bucketizeDistance(F)I

    move-result v5

    move v11, v5

    .line 79
    :goto_5
    if-eqz v2, :cond_7

    const-wide/16 v5, 0x0

    :goto_6
    move-wide v12, v5

    goto :goto_7

    :cond_7
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    int-to-long v5, v5

    goto :goto_6

    .line 81
    :goto_7
    if-nez v2, :cond_9

    move/from16 v15, p1

    if-ne v15, v0, :cond_8

    goto :goto_8

    .line 83
    :cond_8
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getExpireIn()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/LocationUsageLogger;->bucketizeExpireIn(J)I

    move-result v0

    move v14, v0

    goto :goto_9

    .line 81
    :cond_9
    move/from16 v15, p1

    .line 82
    :goto_8
    move v14, v1

    .line 84
    :goto_9
    move/from16 v7, p2

    move/from16 v6, p5

    move/from16 v5, p6

    invoke-static {v7, v6, v5}, Lcom/android/server/location/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v0

    .line 85
    if-eqz v3, :cond_a

    .line 86
    move/from16 v16, v1

    goto :goto_a

    .line 87
    :cond_a
    invoke-virtual/range {p7 .. p7}, Landroid/location/Geofence;->getRadius()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/location/LocationUsageLogger;->bucketizeRadius(F)I

    move-result v1

    move/from16 v16, v1

    .line 88
    :goto_a
    invoke-static/range {p8 .. p8}, Lcom/android/server/location/LocationUsageLogger;->categorizeActivityImportance(I)I

    move-result v17

    .line 64
    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move v15, v0

    invoke-static/range {v4 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "isLocationRequestNull":Z
    .end local v3    # "isGeofenceNull":Z
    goto :goto_b

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b
    return-void
.end method
