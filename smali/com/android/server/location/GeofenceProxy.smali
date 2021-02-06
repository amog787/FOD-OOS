.class public final Lcom/android/server/location/GeofenceProxy;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeofenceProvider"

.field private static final TAG:Ljava/lang/String; = "GeofenceProxy"


# instance fields
.field private volatile mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

.field private final mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpsGeofence"    # Landroid/location/IGpsGeofenceHardware;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/location/IGpsGeofenceHardware;

    iput-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    .line 62
    new-instance v0, Lcom/android/server/ServiceWatcher;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/android/server/location/-$$Lambda$GeofenceProxy$hIfaTtsg4NqVfDRkaCxUg6rx90I;

    invoke-direct {v5, p0}, Lcom/android/server/location/-$$Lambda$GeofenceProxy$hIfaTtsg4NqVfDRkaCxUg6rx90I;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    const-string v4, "com.android.location.service.GeofenceProvider"

    const/4 v6, 0x0

    const v7, 0x1110075

    const v8, 0x1040227

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/ServiceWatcher$BinderRunner;Ljava/lang/Runnable;II)V

    iput-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IGpsGeofenceHardware;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;

    .line 40
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;
    .param p1, "x1"    # Landroid/hardware/location/IGeofenceHardware;

    .line 40
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;

    .line 40
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GeofenceProxy;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GeofenceProxy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/location/GeofenceProxy;->updateGeofenceHardware(Landroid/os/IBinder;)V

    return-void
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gpsGeofence"    # Landroid/location/IGpsGeofenceHardware;

    .line 47
    new-instance v0, Lcom/android/server/location/GeofenceProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GeofenceProxy;-><init>(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)V

    .line 48
    .local v0, "proxy":Lcom/android/server/location/GeofenceProxy;
    invoke-direct {v0, p0}, Lcom/android/server/location/GeofenceProxy;->register(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic lambda$hIfaTtsg4NqVfDRkaCxUg6rx90I(Lcom/android/server/location/GeofenceProxy;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/GeofenceProxy;->updateGeofenceHardware(Landroid/os/IBinder;)V

    return-void
.end method

.method private register(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->register()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;-><init>(Lcom/android/server/location/GeofenceProxy;Lcom/android/server/location/GeofenceProxy$1;)V

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 81
    return v3

    .line 84
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateGeofenceHardware(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Landroid/location/IGeofenceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeofenceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, v1}, Landroid/location/IGeofenceProvider;->setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V

    .line 72
    return-void
.end method
