.class public Lcom/android/server/location/gnss/GnssManagerService;
.super Ljava/lang/Object;
.source "GnssManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GnssManagerService"


# instance fields
.field private final mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

.field private final mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

.field private final mContext:Landroid/content/Context;

.field private final mGnssAntennaInfoListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field private mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

.field private mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IBatchedLocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssBatchingInProgress:Z

.field private final mGnssBatchingLock:Ljava/lang/Object;

.field private final mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

.field private final mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

.field private final mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

.field private final mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Landroid/location/GnssRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field private final mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

.field private final mGnssNavigationMessageListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssNavigationMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field private final mGnssStatusListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

.field private final mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

.field private final mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field private final mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mSettingsHelper:Lcom/android/server/location/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOpsHelper"    # Lcom/android/server/location/AppOpsHelper;
    .param p3, "settingsHelper"    # Lcom/android/server/location/SettingsHelper;
    .param p4, "appForegroundHelper"    # Lcom/android/server/location/AppForegroundHelper;
    .param p5, "locationUsageLogger"    # Lcom/android/server/location/LocationUsageLogger;

    .line 128
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 129
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOpsHelper"    # Lcom/android/server/location/AppOpsHelper;
    .param p3, "settingsHelper"    # Lcom/android/server/location/SettingsHelper;
    .param p4, "appForegroundHelper"    # Lcom/android/server/location/AppForegroundHelper;
    .param p5, "locationUsageLogger"    # Lcom/android/server/location/LocationUsageLogger;
    .param p6, "gnssLocationProvider"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    .line 136
    invoke-static {}, Lcom/android/server/location/gnss/GnssManagerService;->isGnssSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 138
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    .line 140
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    .line 141
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    .line 142
    iput-object p5, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    .line 144
    if-nez p6, :cond_0

    .line 145
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;)V

    move-object p6, v0

    .line 148
    :cond_0
    iput-object p6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 149
    invoke-virtual {p6}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssStatusProvider()Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    .line 150
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 151
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssAntennaInfoProvider()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 152
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 153
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    .line 154
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    .line 156
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    .line 157
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssCapabilitiesProvider()Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    .line 158
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/gnss/GnssBatchingProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    .line 159
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 160
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 161
    return-void
.end method

.method private addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z
    .locals 20
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            "TRequest:",
            "Ljava/lang/Object;",
            ">(TTRequest;TT",
            "Listener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)Z"
        }
    .end annotation

    .line 384
    .local p1, "request":Ljava/lang/Object;, "TTRequest;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p5, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p6, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    .local p7, "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    iget-object v4, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v4, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-static {v4, v14, v15}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v4

    .line 387
    .local v4, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v5, v4}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 388
    return v6

    .line 391
    :cond_0
    new-instance v5, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    move-object/from16 v13, p7

    invoke-direct {v5, v1, v2, v4, v13}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V

    move-object v12, v5

    .line 393
    .local v12, "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    invoke-interface/range {p2 .. p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 394
    .local v11, "binder":Landroid/os/IBinder;
    invoke-virtual {v12, v11}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 395
    return v6

    .line 398
    :cond_1
    move-object/from16 v10, p6

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-eq v3, v5, :cond_3

    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    goto :goto_2

    .line 401
    :cond_3
    :goto_0
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v6, 0x0

    .line 403
    iget-object v7, v0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-ne v3, v7, :cond_4

    .line 404
    const/4 v7, 0x2

    goto :goto_1

    .line 405
    :cond_4
    const/4 v7, 0x3

    :goto_1
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v8, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v9, v4, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 411
    invoke-virtual {v8, v9}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v19

    .line 401
    move-object/from16 v8, p3

    const/4 v9, 0x0

    move/from16 v10, v16

    move-object/from16 v16, v11

    .end local v11    # "binder":Landroid/os/IBinder;
    .local v16, "binder":Landroid/os/IBinder;
    move/from16 v11, v17

    move-object/from16 v17, v12

    .end local v12    # "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    .local v17, "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    move-object/from16 v12, v18

    move/from16 v13, v19

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 413
    :goto_2
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v6, v4, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/location/AppForegroundHelper;->isAppForeground(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 414
    invoke-direct {v0, v4}, Lcom/android/server/location/gnss/GnssManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 415
    :cond_5
    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    .line 417
    :cond_6
    const/4 v5, 0x1

    return v5
.end method

.method public static isGnssSupported()Z
    .locals 1

    .line 71
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->isSupported()Z

    move-result v0

    return v0
.end method

.method private isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z
    .locals 3
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 627
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 628
    return v1

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    return v1

    .line 636
    :cond_1
    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 638
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    iget-object v1, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManagerInternal;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 638
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic lambda$de6v4jWKxQDC9J4FdGGrfKg2phA(Lcom/android/server/location/gnss/GnssManagerService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method private onAppForegroundChanged(IZ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 317
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    sget-object v4, Lcom/android/server/location/gnss/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 325
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 326
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    sget-object v5, Lcom/android/server/location/gnss/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 332
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 333
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 334
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    sget-object v4, Lcom/android/server/location/gnss/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 340
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 342
    :try_start_3
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    sget-object v5, Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/gnss/GnssManagerService;->updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 340
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 332
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 324
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method private removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Ljava/lang/Object;",
            "T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    .line 424
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p3, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    if-nez p2, :cond_0

    .line 425
    const-string v0, "GnssManagerService"

    const-string v1, "Can not remove GNSS data listener. GNSS data provider not available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 432
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 433
    .local v0, "binder":Landroid/os/IBinder;
    nop

    .line 434
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 435
    .local v1, "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    if-nez v1, :cond_1

    .line 436
    return-void

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-eq p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    if-ne p2, v2, :cond_4

    .line 440
    :cond_2
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v4, 0x1

    .line 442
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    if-ne p2, v2, :cond_3

    .line 443
    const/4 v2, 0x2

    move v5, v2

    goto :goto_0

    .line 444
    :cond_3
    const/4 v2, 0x3

    move v5, v2

    .line 445
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v2

    iget-object v6, v2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    .line 450
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v11

    .line 440
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 452
    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    .line 453
    invoke-virtual {p2, p1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 454
    return-void
.end method

.method private updateListenersOnForegroundChangedLocked(Ljava/util/Map;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V
    .locals 7
    .param p4, "uid"    # I
    .param p5, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRequest:",
            "Ljava/lang/Object;",
            "T",
            "Listener::Landroid/os/IInterface;",
            ">(",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<",
            "TTRequest;TT",
            "Listener;",
            ">;>;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TTRequest;TT",
            "Listener;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT",
            "Listener;",
            ">;IZ)V"
        }
    .end annotation

    .line 358
    .local p1, "gnssDataListeners":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    .local p2, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>;"
    .local p3, "mapBinderToListener":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TTListener;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 359
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 360
    .local v2, "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v3

    .line 361
    .local v3, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getRequest()Ljava/lang/Object;

    move-result-object v4

    .line 362
    .local v4, "request":Ljava/lang/Object;, "TTRequest;"
    iget v5, v3, Lcom/android/server/location/CallerIdentity;->uid:I

    if-eq v5, p4, :cond_0

    .line 363
    goto :goto_0

    .line 366
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {p3, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IInterface;

    .line 367
    .local v5, "listener":Landroid/os/IInterface;, "TTListener;"
    if-nez p5, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/location/gnss/GnssManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 370
    :cond_1
    invoke-virtual {p2, v5}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    goto :goto_2

    .line 368
    :cond_2
    :goto_1
    invoke-virtual {p2, v4, v5, v3}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    .line 372
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;>;"
    .end local v2    # "linkedListener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<TTRequest;TTListener;>;"
    .end local v3    # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .end local v4    # "request":Ljava/lang/Object;, "TTRequest;"
    .end local v5    # "listener":Landroid/os/IInterface;, "TTListener;"
    :goto_2
    goto :goto_0

    .line 373
    :cond_3
    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 536
    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$r0e-CQBWppHmS1rnJk0BvqOj_UE;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$r0e-CQBWppHmS1rnJk0BvqOj_UE;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 544
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callback"    # Landroid/location/IBatchedLocationCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 259
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 261
    new-instance v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    new-instance v4, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;

    invoke-direct {v4, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    invoke-direct {v3, v2, p1, v0, v4}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V

    iput-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 271
    nop

    .line 272
    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 271
    invoke-virtual {v3, v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 273
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "request"    # Landroid/location/GnssRequest;
    .param p2, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 488
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/GnssRequest;->isFullTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$FxAranobP2o6eVcPEOp8tzZYyLY;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$FxAranobP2o6eVcPEOp8tzZYyLY;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 501
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 566
    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$139-CBKLG1EL-wg1T1KP8tgmIKg;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$139-CBKLG1EL-wg1T1KP8tgmIKg;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 646
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 648
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    array-length v1, p3

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string v2, "--gnssmetrics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMetricsProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;

    if-eqz v1, :cond_0

    .line 650
    invoke-interface {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 652
    :cond_0
    return-void

    .line 655
    :cond_1
    const-string v1, "GnssMeasurement Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 657
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    .line 659
    .local v3, "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 660
    .end local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    goto :goto_0

    .line 661
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 662
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 664
    const-string v1, "GnssNavigationMessage Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 666
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 667
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    .line 668
    .restart local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 669
    .end local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    goto :goto_1

    .line 670
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 671
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 673
    const-string v1, "GnssStatus Listeners:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 675
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 676
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;

    .line 677
    .restart local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 678
    .end local v3    # "listener":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
    goto :goto_2

    .line 679
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 680
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 682
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 683
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_5

    .line 684
    const-string v1, "GNSS batching in progress"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 686
    :cond_5
    monitor-exit v2

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 679
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 670
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 661
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->flush()V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->getBatchSize()I

    move-result v1

    monitor-exit v0

    return v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGnssCapabilities()J
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;->getGnssCapabilities()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-object v0
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .locals 3
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 514
    return-void
.end method

.method public synthetic lambda$addGnssBatchingCallback$0$GnssManagerService(Landroid/location/IBatchedLocationCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IBatchedLocationCallback;

    .line 267
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    .line 268
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssBatchingCallback()V

    .line 269
    return-void
.end method

.method public onReportLocation(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 606
    .local v1, "gnssBatchingCallback":Landroid/location/IBatchedLocationCallback;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 607
    .local v2, "gnssBatchingDeathCallback":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<Ljava/lang/Void;Landroid/location/IBatchedLocationCallback;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    .line 613
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->getCallerIdentity()Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    .line 614
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const-string v4, "gps"

    invoke-virtual {v3, v4, v0}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 615
    const-string v3, "GnssManagerService"

    const-string/jumbo v4, "reportLocationBatch() called without user permission"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void

    .line 620
    :cond_1
    :try_start_1
    invoke-interface {v1, p1}, Landroid/location/IBatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 623
    goto :goto_0

    .line 621
    :catch_0
    move-exception v3

    .line 622
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "GnssManagerService"

    const-string/jumbo v5, "reportLocationBatch() failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 610
    .end local v0    # "userId":I
    :cond_2
    :goto_1
    return-void

    .line 607
    .end local v1    # "gnssBatchingCallback":Landroid/location/IBatchedLocationCallback;
    .end local v2    # "gnssBatchingDeathCallback":Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;, "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener<Ljava/lang/Void;Landroid/location/IBatchedLocationCallback;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized onSystemReady()V
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 166
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppOpsHelper;->onSystemReady()V

    .line 170
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->onSystemReady()V

    .line 171
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppForegroundHelper;->onSystemReady()V

    .line 173
    const-class v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 175
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppForegroundHelper;->addListener(Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 164
    .end local p0    # "this":Lcom/android/server/location/gnss/GnssManagerService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 462
    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;

    invoke-direct {v8, p0}, Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;-><init>(Lcom/android/server/location/gnss/GnssManagerService;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssDataListenerLocked(Ljava/lang/Object;Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;

    .line 553
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssBatchingCallback()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 298
    invoke-interface {v3}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 297
    invoke-virtual {v1, v3}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    .line 299
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 300
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;

    .line 301
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 520
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 523
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;

    .line 581
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 584
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendNiResponse(II)V
    .locals 3
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 233
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const/4 v1, 0x0

    return v1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    if-eqz v2, :cond_1

    .line 240
    const-string v2, "GnssManagerService"

    const-string/jumbo v3, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    .line 244
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    .line 245
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/gnss/GnssBatchingProvider;->start(JZ)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 246
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopGnssBatch()Z
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingInProgress:Z

    .line 312
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssBatchingProvider;->stop()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .line 477
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssDataListenerLocked(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 479
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
