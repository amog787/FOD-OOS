.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationProviderProxy$2$QT3uzVX4fLIc1b7F_cP9P1hzluA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$2$QT3uzVX4fLIc1b7F_cP9P1hzluA;->f$0:Lcom/android/server/location/LocationProviderProxy;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$2$QT3uzVX4fLIc1b7F_cP9P1hzluA;->f$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v0, p1}, Lcom/android/server/location/LocationProviderProxy$2;->lambda$onBind$0(Lcom/android/server/location/LocationProviderProxy;Landroid/os/IBinder;)V

    return-void
.end method
