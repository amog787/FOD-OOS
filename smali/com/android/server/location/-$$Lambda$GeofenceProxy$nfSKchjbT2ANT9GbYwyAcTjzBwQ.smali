.class public final synthetic Lcom/android/server/location/-$$Lambda$GeofenceProxy$nfSKchjbT2ANT9GbYwyAcTjzBwQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GeofenceProxy$nfSKchjbT2ANT9GbYwyAcTjzBwQ;->f$0:Lcom/android/server/location/GeofenceProxy;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GeofenceProxy$nfSKchjbT2ANT9GbYwyAcTjzBwQ;->f$0:Lcom/android/server/location/GeofenceProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GeofenceProxy;->lambda$new$0$GeofenceProxy(Landroid/os/IBinder;)V

    return-void
.end method
