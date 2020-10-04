.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/location/ProviderRequest;

.field private final synthetic f$1:Landroid/os/WorkSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;->f$0:Lcom/android/internal/location/ProviderRequest;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;->f$1:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;->f$0:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;->f$1:Landroid/os/WorkSource;

    invoke-static {v0, v1, p1}, Lcom/android/server/location/LocationProviderProxy;->lambda$setRequest$0(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;Landroid/os/IBinder;)V

    return-void
.end method
