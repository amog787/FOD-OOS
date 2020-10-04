.class Lcom/android/server/location/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"


# static fields
.field private static final MULTIPLIER:I = 0x2


# instance fields
.field private mCurrentIntervalMillis:J

.field private final mInitIntervalMillis:J

.field private final mMaxIntervalMillis:J


# direct methods
.method constructor <init>(JJ)V
    .locals 4
    .param p1, "initIntervalMillis"    # J
    .param p3, "maxIntervalMillis"    # J

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/android/server/location/ExponentialBackOff;->mInitIntervalMillis:J

    .line 14
    iput-wide p3, p0, Lcom/android/server/location/ExponentialBackOff;->mMaxIntervalMillis:J

    .line 16
    iget-wide v0, p0, Lcom/android/server/location/ExponentialBackOff;->mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/ExponentialBackOff;->mCurrentIntervalMillis:J

    .line 17
    return-void
.end method


# virtual methods
.method nextBackoffMillis()J
    .locals 5

    .line 20
    iget-wide v0, p0, Lcom/android/server/location/ExponentialBackOff;->mCurrentIntervalMillis:J

    iget-wide v2, p0, Lcom/android/server/location/ExponentialBackOff;->mMaxIntervalMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 21
    return-wide v2

    .line 24
    :cond_0
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/ExponentialBackOff;->mCurrentIntervalMillis:J

    .line 25
    iget-wide v0, p0, Lcom/android/server/location/ExponentialBackOff;->mCurrentIntervalMillis:J

    return-wide v0
.end method

.method reset()V
    .locals 4

    .line 29
    iget-wide v0, p0, Lcom/android/server/location/ExponentialBackOff;->mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/ExponentialBackOff;->mCurrentIntervalMillis:J

    .line 30
    return-void
.end method
