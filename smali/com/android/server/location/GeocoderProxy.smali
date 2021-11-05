.class public Lcom/android/server/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"

.field private static final TAG:Ljava/lang/String; = "GeocodeProvider"

.field private static mRequestCount:I


# instance fields
.field private getSuccessful:Ljava/lang/String;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private systemCurrentRequestTime:J

.field private systemLastGeocoderTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/server/location/GeocoderProxy;->mRequestCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GeocoderProxy;->systemCurrentRequestTime:J

    .line 47
    iput-wide v0, p0, Lcom/android/server/location/GeocoderProxy;->systemLastGeocoderTime:J

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->getSuccessful:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/android/server/ServiceWatcher;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "com.android.location.service.GeocodeProvider"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x1110074

    const v8, 0x1040226

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/ServiceWatcher$BinderRunner;Ljava/lang/Runnable;II)V

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 71
    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/GeocoderProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/server/location/GeocoderProxy;

    invoke-direct {v0, p0}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "proxy":Lcom/android/server/location/GeocoderProxy;
    invoke-direct {v0}, Lcom/android/server/location/GeocoderProxy;->register()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    return-object v0

    .line 60
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

    .line 116
    invoke-static/range {p12 .. p12}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v13

    .line 117
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

.method private register()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->register()Z

    move-result v0

    return v0
.end method


# virtual methods
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

    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/location/GeocoderProxy;->systemCurrentRequestTime:J

    .line 90
    iget-wide v4, v9, Lcom/android/server/location/GeocoderProxy;->systemLastGeocoderTime:J

    sub-long v6, v0, v4

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    sget v0, Lcom/android/server/location/GeocoderProxy;->mRequestCount:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    .line 91
    :cond_1
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

    const-string v1, "GeocodeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_2
    sget v0, Lcom/android/server/location/GeocoderProxy;->mRequestCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/location/GeocoderProxy;->mRequestCount:I

    .line 96
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

    .line 115
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

    .line 97
    move-object v0, p0

    invoke-static/range {p8 .. p8}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v9

    .line 98
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

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addrs.isEmpty() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeocodeProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/location/GeocoderProxy;->systemLastGeocoderTime:J

    .line 103
    iget-object v1, v0, Lcom/android/server/location/GeocoderProxy;->getSuccessful:Ljava/lang/String;

    return-object v1

    .line 105
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
