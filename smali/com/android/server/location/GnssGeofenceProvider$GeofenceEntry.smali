.class Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
.super Ljava/lang/Object;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssGeofenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeofenceEntry"
.end annotation


# instance fields
.field public geofenceId:I

.field public lastTransition:I

.field public latitude:D

.field public longitude:D

.field public monitorTransitions:I

.field public notificationResponsiveness:I

.field public paused:Z

.field public radius:D

.field public unknownTimer:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssGeofenceProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/GnssGeofenceProvider$1;

    .line 19
    invoke-direct {p0}, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;-><init>()V

    return-void
.end method
