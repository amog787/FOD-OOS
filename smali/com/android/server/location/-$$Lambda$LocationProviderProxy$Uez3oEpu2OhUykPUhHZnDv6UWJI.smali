.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationProviderProxy$Uez3oEpu2OhUykPUhHZnDv6UWJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/location/ProviderRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/location/ProviderRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$Uez3oEpu2OhUykPUhHZnDv6UWJI;->f$0:Lcom/android/internal/location/ProviderRequest;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$Uez3oEpu2OhUykPUhHZnDv6UWJI;->f$0:Lcom/android/internal/location/ProviderRequest;

    invoke-static {v0, p1}, Lcom/android/server/location/LocationProviderProxy;->lambda$onSetRequest$0(Lcom/android/internal/location/ProviderRequest;Landroid/os/IBinder;)V

    return-void
.end method
