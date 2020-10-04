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

    .line 109
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GeofenceProxy;Lcom/android/server/location/GeofenceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/GeofenceProxy;
    .param p2, "x1"    # Lcom/android/server/location/GeofenceProxy$1;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 113
    invoke-static {p2}, Landroid/hardware/location/IGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v0

    .line 116
    .local v0, "geofenceHardware":Landroid/hardware/location/IGeofenceHardware;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/location/IGeofenceHardware;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IFusedGeofenceHardware;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)Landroid/location/IFusedGeofenceHardware;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/location/IGeofenceHardware;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1, v0}, Lcom/android/server/location/GeofenceProxy;->access$402(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    .line 124
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$500(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v2}, Lcom/android/server/location/GeofenceProxy;->access$000(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher$BinderRunner;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GeofenceProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 132
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/GeofenceProxy;->access$402(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    .line 133
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$500(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$000(Lcom/android/server/location/GeofenceProxy;)Lcom/android/server/ServiceWatcher$BinderRunner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 134
    return-void
.end method
