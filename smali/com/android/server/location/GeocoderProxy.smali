.class public Lcom/android/server/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"


# instance fields
.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v8, Lcom/android/server/ServiceWatcher;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "com.android.location.service.GeocodeProvider"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x1110074

    const v7, 0x1040226

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/ServiceWatcher$BinderRunner;Ljava/lang/Runnable;II)V

    iput-object v8, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 60
    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/GeocoderProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/android/server/location/GeocoderProxy;

    invoke-direct {v0, p0}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "proxy":Lcom/android/server/location/GeocoderProxy;
    invoke-direct {v0}, Lcom/android/server/location/GeocoderProxy;->register()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    return-object v0

    .line 49
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getFromLocation$0(DDILandroid/location/GeocoderParams;Ljava/util/List;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 9
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "maxResults"    # I
    .param p5, "params"    # Landroid/location/GeocoderParams;
    .param p6, "addrs"    # Ljava/util/List;
    .param p7, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-static/range {p7 .. p7}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v8

    .line 70
    .local v8, "provider":Landroid/location/IGeocodeProvider;
    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 79
    invoke-static/range {p12 .. p12}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v13

    .line 80
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

    .line 63
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->register()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 11
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

    .line 68
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v10, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;

    move-object v2, v10

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;-><init>(DDILandroid/location/GeocoderParams;Ljava/util/List;)V

    const-string v2, "Service not Available"

    invoke-virtual {v1, v10, v2}, Lcom/android/server/ServiceWatcher;->runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
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

    .line 78
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
