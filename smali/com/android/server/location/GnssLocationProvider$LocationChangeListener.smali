.class abstract Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LocationChangeListener"
.end annotation


# instance fields
.field private mNumLocationUpdateRequest:I

.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    .line 2265
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/GnssLocationProvider$1;

    .line 2265
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-void
.end method

.method static synthetic access$1006(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 2265
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->mNumLocationUpdateRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->mNumLocationUpdateRequest:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 2265
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->mNumLocationUpdateRequest:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->mNumLocationUpdateRequest:I

    return v0
.end method


# virtual methods
.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 2278
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 2274
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2270
    return-void
.end method
