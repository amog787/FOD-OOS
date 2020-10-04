.class public Lcom/android/server/location/GeofenceState;
.super Ljava/lang/Object;
.source "GeofenceState.java"


# static fields
.field public static final FLAG_ENTER:I = 0x1

.field public static final FLAG_EXIT:I = 0x2

.field private static final STATE_INSIDE:I = 0x1

.field private static final STATE_OUTSIDE:I = 0x2

.field private static final STATE_UNKNOWN:I


# instance fields
.field public final mAllowedResolutionLevel:I

.field mDistanceToCenter:D

.field public final mExpireAt:J

.field public final mFence:Landroid/location/Geofence;

.field public final mIntent:Landroid/app/PendingIntent;

.field private final mLocation:Landroid/location/Location;

.field public final mPackageName:Ljava/lang/String;

.field mState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/location/Geofence;JIILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "expireAt"    # J
    .param p4, "allowedResolutionLevel"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "intent"    # Landroid/app/PendingIntent;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GeofenceState;->mState:I

    .line 49
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    .line 51
    iput-object p1, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    .line 52
    iput-wide p2, p0, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    .line 53
    iput p4, p0, Lcom/android/server/location/GeofenceState;->mAllowedResolutionLevel:I

    .line 54
    iput p5, p0, Lcom/android/server/location/GeofenceState;->mUid:I

    .line 55
    iput-object p6, p0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    .line 58
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    .line 59
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 60
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 61
    return-void
.end method


# virtual methods
.method public getDistanceToBoundary()D
    .locals 4

    .line 92
    iget-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-wide v2

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v0}, Landroid/location/Geofence;->getRadius()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public processLocation(Landroid/location/Location;)I
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .line 68
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    .line 70
    iget v0, p0, Lcom/android/server/location/GeofenceState;->mState:I

    .line 72
    .local v0, "prevState":I
    iget-wide v1, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    iget-object v3, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v3}, Landroid/location/Geofence;->getRadius()F

    move-result v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 73
    .local v1, "inside":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    iput v3, p0, Lcom/android/server/location/GeofenceState;->mState:I

    .line 75
    if-eq v0, v3, :cond_2

    .line 76
    return v3

    .line 79
    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/location/GeofenceState;->mState:I

    .line 80
    if-ne v0, v3, :cond_2

    .line 81
    return v4

    .line 84
    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 102
    iget v0, p0, Lcom/android/server/location/GeofenceState;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 110
    const-string v0, "?"

    .local v0, "state":Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v0    # "state":Ljava/lang/String;
    :cond_0
    const-string v0, "OUT"

    .line 108
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0    # "state":Ljava/lang/String;
    :cond_1
    const-string v0, "IN"

    .line 105
    .restart local v0    # "state":Ljava/lang/String;
    nop

    .line 112
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v5}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-wide v4, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    const-string v1, "%s d=%.0f %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
