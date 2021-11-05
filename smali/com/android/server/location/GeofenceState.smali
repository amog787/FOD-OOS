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
.field mDistanceToCenter:D

.field public final mExpireAt:J

.field public final mFence:Landroid/location/Geofence;

.field public final mIdentity:Lcom/android/server/location/CallerIdentity;

.field public final mIntent:Landroid/app/PendingIntent;

.field private final mLocation:Landroid/location/Location;

.field mState:I


# direct methods
.method public constructor <init>(Landroid/location/Geofence;JLcom/android/server/location/CallerIdentity;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "expireAt"    # J
    .param p4, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GeofenceState;->mState:I

    .line 47
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    .line 49
    iput-object p1, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    .line 50
    iput-wide p2, p0, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    .line 51
    iput-object p4, p0, Lcom/android/server/location/GeofenceState;->mIdentity:Lcom/android/server/location/CallerIdentity;

    .line 52
    iput-object p5, p0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    .line 54
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    .line 55
    invoke-virtual {p1}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 56
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 57
    return-void
.end method


# virtual methods
.method public getDistanceToBoundary()D
    .locals 4

    .line 88
    iget-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    return-wide v2

    .line 91
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

    .line 64
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    .line 66
    iget v2, p0, Lcom/android/server/location/GeofenceState;->mState:I

    .line 68
    .local v2, "prevState":I
    iget-object v3, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v3}, Landroid/location/Geofence;->getRadius()F

    move-result v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v0, v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-gtz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 69
    .local v0, "inside":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 70
    iput v3, p0, Lcom/android/server/location/GeofenceState;->mState:I

    .line 71
    if-eq v2, v3, :cond_2

    .line 72
    return v3

    .line 75
    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/location/GeofenceState;->mState:I

    .line 76
    if-ne v2, v3, :cond_2

    .line 77
    return v4

    .line 80
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 98
    iget v0, p0, Lcom/android/server/location/GeofenceState;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 106
    const-string v0, "?"

    .local v0, "state":Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v0    # "state":Ljava/lang/String;
    :cond_0
    const-string v0, "OUT"

    .line 104
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 100
    .end local v0    # "state":Ljava/lang/String;
    :cond_1
    const-string v0, "IN"

    .line 101
    .restart local v0    # "state":Ljava/lang/String;
    nop

    .line 108
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
