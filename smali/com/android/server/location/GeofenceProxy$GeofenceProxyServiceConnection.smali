.class Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeofenceProxyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GeofenceProxy;Lcom/android/server/location/GeofenceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/GeofenceProxy;
    .param p2, "x1"    # Lcom/android/server/location/GeofenceProxy$1;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    return-void
.end method

.method static synthetic lambda$onServiceConnected$0(Lcom/android/server/location/GeofenceProxy;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/location/GeofenceProxy;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {p0, p1}, Lcom/android/server/location/GeofenceProxy;->access$400(Lcom/android/server/location/GeofenceProxy;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$onServiceDisconnected$1(Lcom/android/server/location/GeofenceProxy;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/location/GeofenceProxy;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-static {p0, p1}, Lcom/android/server/location/GeofenceProxy;->access$400(Lcom/android/server/location/GeofenceProxy;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 91
    invoke-static {p2}, Landroid/hardware/location/IGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v0

    .line 94
    .local v0, "geofenceHardware":Landroid/hardware/location/IGeofenceHardware;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/location/IGeofenceHardware;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 95
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1, v0}, Lcom/android/server/location/GeofenceProxy;->access$202(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    .line 96
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    new-instance v3, Lcom/android/server/location/-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$zlbg9IPCIuzTl4MNd_aO2VH84CU;

    invoke-direct {v3, v2}, Lcom/android/server/location/-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$zlbg9IPCIuzTl4MNd_aO2VH84CU;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    invoke-virtual {v1, v3}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceProxy"

    const-string/jumbo v3, "unable to initialize geofence hardware"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/GeofenceProxy;->access$202(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    .line 105
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    new-instance v2, Lcom/android/server/location/-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$yPO-K2AUteHenF5MXfJoSnZURWI;

    invoke-direct {v2, v1}, Lcom/android/server/location/-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$yPO-K2AUteHenF5MXfJoSnZURWI;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    invoke-virtual {v0, v2}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 106
    return-void
.end method
