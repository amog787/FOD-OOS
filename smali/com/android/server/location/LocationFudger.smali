.class public Lcom/android/server/location/LocationFudger;
.super Ljava/lang/Object;
.source "LocationFudger.java"


# static fields
.field private static final APPROXIMATE_METERS_PER_DEGREE_AT_EQUATOR:I = 0x1b198

.field private static final CHANGE_PER_INTERVAL:D = 0.03

.field private static final MAX_LATITUDE:D = 89.999990990991

.field private static final MIN_ACCURACY_M:F = 200.0f

.field private static final NEW_WEIGHT:D = 0.03

.field static final OFFSET_UPDATE_INTERVAL_MS:J = 0x36ee80L

.field private static final OLD_WEIGHT:D


# instance fields
.field private final mAccuracyM:F

.field private mCachedCoarseLocation:Landroid/location/Location;

.field private mCachedFineLocation:Landroid/location/Location;

.field private final mClock:Ljava/time/Clock;

.field private mLatitudeOffsetM:D

.field private mLongitudeOffsetM:D

.field private mNextUpdateRealtimeMs:J

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/LocationFudger;->OLD_WEIGHT:D

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "accuracyM"    # F

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/LocationFudger;-><init>(FLjava/time/Clock;Ljava/util/Random;)V

    .line 82
    return-void
.end method

.method constructor <init>(FLjava/time/Clock;Ljava/util/Random;)V
    .locals 1
    .param p1, "accuracyM"    # F
    .param p2, "clock"    # Ljava/time/Clock;
    .param p3, "random"    # Ljava/util/Random;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/server/location/LocationFudger;->mClock:Ljava/time/Clock;

    .line 87
    iput-object p3, p0, Lcom/android/server/location/LocationFudger;->mRandom:Ljava/util/Random;

    .line 88
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/location/LocationFudger;->mAccuracyM:F

    .line 90
    invoke-virtual {p0}, Lcom/android/server/location/LocationFudger;->resetOffsets()V

    .line 91
    return-void
.end method

.method private static metersToDegreesLatitude(D)D
    .locals 2
    .param p0, "distance"    # D

    .line 209
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method private static metersToDegreesLongitude(DD)D
    .locals 4
    .param p0, "distance"    # D
    .param p2, "lat"    # D

    .line 214
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private nextRandomOffset()D
    .locals 6

    .line 184
    iget-object v0, p0, Lcom/android/server/location/LocationFudger;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/location/LocationFudger;->mAccuracyM:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized updateOffsets()V
    .locals 8

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 174
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    sget-wide v2, Lcom/android/server/location/LocationFudger;->OLD_WEIGHT:D

    iget-wide v4, p0, Lcom/android/server/location/LocationFudger;->mLatitudeOffsetM:D

    mul-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextRandomOffset()D

    move-result-wide v4

    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mLatitudeOffsetM:D

    .line 179
    sget-wide v2, Lcom/android/server/location/LocationFudger;->OLD_WEIGHT:D

    iget-wide v4, p0, Lcom/android/server/location/LocationFudger;->mLongitudeOffsetM:D

    mul-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextRandomOffset()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mLongitudeOffsetM:D

    .line 180
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 172
    .end local v0    # "now":J
    .end local p0    # "this":Lcom/android/server/location/LocationFudger;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static wrapLatitude(D)D
    .locals 2
    .param p0, "lat"    # D

    .line 188
    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 189
    const-wide p0, 0x40567fffda36a676L    # 89.999990990991

    .line 191
    :cond_0
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 192
    const-wide p0, -0x3fa9800025c9598aL    # -89.999990990991

    .line 194
    :cond_1
    return-wide p0
.end method

.method private static wrapLongitude(D)D
    .locals 4
    .param p0, "lon"    # D

    .line 198
    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    .line 199
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_0

    .line 200
    sub-double/2addr p0, v0

    .line 202
    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    .line 203
    add-double/2addr p0, v0

    .line 205
    :cond_1
    return-wide p0
.end method


# virtual methods
.method public createCoarse(Landroid/location/Location;)Landroid/location/Location;
    .locals 11
    .param p1, "fine"    # Landroid/location/Location;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    if-ne p1, v0, :cond_0

    .line 115
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    monitor-exit p0

    return-object v0

    .line 117
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->updateOffsets()V

    .line 122
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 125
    .local v0, "coarse":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    .line 126
    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    .line 127
    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    move-result-wide v1

    .line 131
    .local v1, "latitude":D
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    move-result-wide v3

    .line 134
    .local v3, "longitude":D
    iget-wide v5, p0, Lcom/android/server/location/LocationFudger;->mLongitudeOffsetM:D

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/location/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 135
    iget-wide v5, p0, Lcom/android/server/location/LocationFudger;->mLatitudeOffsetM:D

    invoke-static {v5, v6}, Lcom/android/server/location/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 143
    iget v5, p0, Lcom/android/server/location/LocationFudger;->mAccuracyM:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Lcom/android/server/location/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v5

    .line 144
    .local v5, "latGranularity":D
    div-double v7, v1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    move-result-wide v1

    .line 145
    iget v7, p0, Lcom/android/server/location/LocationFudger;->mAccuracyM:F

    float-to-double v7, v7

    invoke-static {v7, v8, v1, v2}, Lcom/android/server/location/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v7

    .line 146
    .local v7, "lonGranularity":D
    div-double v9, v3, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    mul-double/2addr v9, v7

    invoke-static {v9, v10}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    move-result-wide v3

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 149
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 150
    iget v9, p0, Lcom/android/server/location/LocationFudger;->mAccuracyM:F

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v0, v9}, Landroid/location/Location;->setAccuracy(F)V

    .line 152
    monitor-enter p0

    .line 153
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    .line 154
    iput-object v0, p0, Lcom/android/server/location/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    .line 155
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    new-instance v9, Landroid/location/Location;

    iget-object v10, p0, Lcom/android/server/location/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    invoke-direct {v9, v10}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    return-object v9

    .line 155
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 117
    .end local v0    # "coarse":Landroid/location/Location;
    .end local v1    # "latitude":D
    .end local v3    # "longitude":D
    .end local v5    # "latGranularity":D
    .end local v7    # "lonGranularity":D
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public resetOffsets()V
    .locals 4

    .line 97
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationFudger;->mLatitudeOffsetM:D

    .line 98
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationFudger;->mLongitudeOffsetM:D

    .line 99
    iget-object v0, p0, Lcom/android/server/location/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/LocationFudger;->mNextUpdateRealtimeMs:J

    .line 100
    return-void
.end method
