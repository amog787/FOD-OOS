.class public final synthetic Lcom/android/server/location/-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$zlbg9IPCIuzTl4MNd_aO2VH84CU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$zlbg9IPCIuzTl4MNd_aO2VH84CU;->f$0:Lcom/android/server/location/GeofenceProxy;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$zlbg9IPCIuzTl4MNd_aO2VH84CU;->f$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0, p1}, Lcom/android/server/location/GeofenceProxy$GeofenceProxyServiceConnection;->lambda$onServiceConnected$0(Lcom/android/server/location/GeofenceProxy;Landroid/os/IBinder;)V

    return-void
.end method
