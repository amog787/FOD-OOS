.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;

.field public final synthetic f$1:Landroid/location/ILocationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;->f$0:Lcom/android/server/location/LocationManagerService;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;->f$1:Landroid/location/ILocationListener;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;->f$0:Lcom/android/server/location/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;->f$1:Landroid/location/ILocationListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService;->lambda$getCurrentLocation$6$LocationManagerService(Landroid/location/ILocationListener;)V

    return-void
.end method
