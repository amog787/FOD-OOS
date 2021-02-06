.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationProviderProxy$3wGALcuMWaMkkBRL1d0LQ_QqoCk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$3wGALcuMWaMkkBRL1d0LQ_QqoCk;->f$0:Lcom/android/server/location/LocationProviderProxy;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$3wGALcuMWaMkkBRL1d0LQ_QqoCk;->f$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v0, p1}, Lcom/android/server/location/LocationProviderProxy;->lambda$3wGALcuMWaMkkBRL1d0LQ_QqoCk(Lcom/android/server/location/LocationProviderProxy;Landroid/os/IBinder;)V

    return-void
.end method
