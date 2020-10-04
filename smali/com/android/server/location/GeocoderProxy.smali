.class public Lcom/android/server/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"

.field private static final TAG:Ljava/lang/String; = "GeocoderProxy"


# instance fields
.field private getSuccessful:Ljava/lang/String;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private systemCurrentRequestTime:J

.field private systemLastGeocoderTime:J


# direct methods
.method private constructor <init>(Landroid/content/Context;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlaySwitchResId"    # I
    .param p3, "defaultServicePackageNameResId"    # I
    .param p4, "initialPackageNamesResId"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GeocoderProxy;->systemCurrentRequestTime:J

    .line 45
    iput-wide v0, p0, Lcom/android/server/location/GeocoderProxy;->systemLastGeocoderTime:J

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->getSuccessful:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/server/ServiceWatcher;

    .line 66
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v3, "GeocoderProxy"

    const-string v4, "com.android.location.service.GeocodeProvider"

    move-object v1, v0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 67
    return-void
.end method

.method private bind()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;III)Lcom/android/server/location/GeocoderProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlaySwitchResId"    # I
    .param p2, "defaultServicePackageNameResId"    # I
    .param p3, "initialPackageNamesResId"    # I

    .line 52
    new-instance v0, Lcom/android/server/location/GeocoderProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;III)V

    .line 54
    .local v0, "proxy":Lcom/android/server/location/GeocoderProxy;
    invoke-direct {v0}, Lcom/android/server/location/GeocoderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    return-object v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getFromLocationName$1(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 14
    .param p0, "locationName"    # Ljava/lang/String;
    .param p1, "lowerLeftLatitude"    # D
    .param p3, "lowerLeftLongitude"    # D
    .param p5, "upperRightLatitude"    # D
    .param p7, "upperRightLongitude"    # D
    .param p9, "maxResults"    # I
    .param p10, "params"    # Landroid/location/GeocoderParams;
    .param p11, "addrs"    # Ljava/util/List;
    .param p12, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static/range {p12 .. p12}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v13

    .line 118
    .local v13, "provider":Landroid/location/IGeocodeProvider;
    move-object v0, v13

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-interface/range {v0 .. v12}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConnectedPackageName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 88
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v9, p0

    iget-wide v0, v9, Lcom/android/server/location/GeocoderProxy;->systemLastGeocoderTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/location/GeocoderProxy;->systemCurrentRequestTime:J

    .line 91
    iget-wide v0, v9, Lcom/android/server/location/GeocoderProxy;->systemCurrentRequestTime:J

    iget-wide v4, v9, Lcom/android/server/location/GeocoderProxy;->systemLastGeocoderTime:J

    sub-long v6, v0, v4

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " systemCurrentRequestTime - systemLastGeocoderTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/android/server/location/GeocoderProxy;->systemCurrentRequestTime:J

    iget-wide v3, v9, Lcom/android/server/location/GeocoderProxy;->systemLastGeocoderTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeocoderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    iget-object v10, v9, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v11, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;-><init>(Lcom/android/server/location/GeocoderProxy;DDILandroid/location/GeocoderParams;Ljava/util/List;)V

    const-string v0, "Service not Available"

    invoke-virtual {v10, v11, v0}, Lcom/android/server/ServiceWatcher;->runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 16
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 116
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v15, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;

    move-object v2, v15

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;-><init>(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)V

    const-string v2, "Service not Available"

    invoke-virtual {v1, v15, v2}, Lcom/android/server/ServiceWatcher;->runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public synthetic lambda$getFromLocation$0$GeocoderProxy(DDILandroid/location/GeocoderParams;Ljava/util/List;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 10
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .param p7, "addrs"    # Ljava/util/List;
    .param p8, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    move-object v0, p0

    invoke-static/range {p8 .. p8}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v9

    .line 99
    .local v9, "provider":Landroid/location/IGeocodeProvider;
    move-object v1, v9

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/location/GeocoderProxy;->getSuccessful:Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addrs.isEmpty() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeocoderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/location/GeocoderProxy;->systemLastGeocoderTime:J

    .line 104
    iget-object v1, v0, Lcom/android/server/location/GeocoderProxy;->getSuccessful:Ljava/lang/String;

    return-object v1

    .line 106
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
