.class final Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;
.super Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 1

    .line 2354
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p2, "x1"    # Lcom/android/server/location/gnss/GnssLocationProvider$1;

    .line 2354
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .line 2358
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2361
    invoke-static {p1}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->getHandledNetworkLocation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .line 2362
    .local v0, "new_location":Landroid/location/Location;
    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    .line 2363
    const-string/jumbo v2, "inject nl bl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4600(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V

    .line 2365
    return-void

    .line 2367
    :cond_0
    const-string/jumbo v2, "inject nl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4700(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V

    .line 2372
    .end local v0    # "new_location":Landroid/location/Location;
    :cond_1
    return-void
.end method
