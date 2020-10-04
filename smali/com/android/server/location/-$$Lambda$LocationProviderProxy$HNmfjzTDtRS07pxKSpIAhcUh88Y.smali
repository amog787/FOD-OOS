.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationProviderProxy$HNmfjzTDtRS07pxKSpIAhcUh88Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BlockingBinderRunner;


# instance fields
.field private final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$HNmfjzTDtRS07pxKSpIAhcUh88Y;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$HNmfjzTDtRS07pxKSpIAhcUh88Y;->f$0:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/android/server/location/LocationProviderProxy;->lambda$getStatus$1(Landroid/os/Bundle;Landroid/os/IBinder;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
