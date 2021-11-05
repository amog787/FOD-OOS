.class public Lcom/android/server/location/LocationBasedCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field private static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field private mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mQueryThread:Ljava/lang/Thread;

.field protected mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 69
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationBasedCountryDetector;
    .param p1, "x1"    # Landroid/location/Location;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    return-void
.end method

.method private declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/LocationBasedCountryDetector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 237
    .end local p0    # "this":Lcom/android/server/location/LocationBasedCountryDetector;
    .end local p1    # "location":Landroid/location/Location;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .locals 6

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    if-nez v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getEnabledProviders()Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    .local v1, "totalProviders":I
    if-lez v1, :cond_2

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 173
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "provider":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationBasedCountryDetector;->isAcceptableProvider(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    new-instance v4, Lcom/android/server/location/LocationBasedCountryDetector$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    .line 194
    .local v4, "listener":Landroid/location/LocationListener;
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/LocationBasedCountryDetector;->registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    .line 173
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "listener":Landroid/location/LocationListener;
    .end local p0    # "this":Lcom/android/server/location/LocationBasedCountryDetector;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    .line 200
    new-instance v3, Lcom/android/server/location/LocationBasedCountryDetector$2;

    invoke-direct {v3, p0}, Lcom/android/server/location/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getQueryLocationTimeout()J

    move-result-wide v4

    .line 200
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    .line 214
    :goto_1
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 166
    .end local v0    # "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "totalProviders":I
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "country":Ljava/lang/String;
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "geoCoder":Landroid/location/Geocoder;
    nop

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    .line 79
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 82
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 86
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "LocationBasedCountryDetector"

    const-string v4, "Exception occurs when getting country from location"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method protected getEnabledProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .locals 11

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    .local v0, "bid":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 127
    .local v3, "bestLocation":Landroid/location/Location;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 128
    .local v5, "provider":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 129
    .local v6, "lastKnownLocation":Landroid/location/Location;
    if-eqz v6, :cond_1

    .line 130
    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    .line 132
    invoke-virtual {v6}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 133
    :cond_0
    move-object v3, v6

    .line 136
    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "lastKnownLocation":Landroid/location/Location;
    :cond_1
    goto :goto_0

    .line 137
    :cond_2
    nop

    .line 139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    return-object v3

    .line 139
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "bestLocation":Landroid/location/Location;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw v2
.end method

.method protected getQueryLocationTimeout()J
    .locals 2

    .line 147
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected isAcceptableProvider(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 101
    .local v0, "bid":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    nop

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw v2
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationListener;

    .line 224
    .local v2, "listener":Landroid/location/LocationListener;
    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->unregisterListener(Landroid/location/LocationListener;)V

    .line 225
    .end local v2    # "listener":Landroid/location/LocationListener;
    goto :goto_0

    .line 226
    .end local p0    # "this":Lcom/android/server/location/LocationBasedCountryDetector;
    :cond_0
    iput-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 230
    iput-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_2
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected unregisterListener(Landroid/location/LocationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/LocationListener;

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    .local v0, "bid":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    nop

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw v2
.end method
