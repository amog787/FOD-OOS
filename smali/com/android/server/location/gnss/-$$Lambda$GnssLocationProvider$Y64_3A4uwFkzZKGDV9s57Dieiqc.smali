.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Y64_3A4uwFkzZKGDV9s57Dieiqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Y64_3A4uwFkzZKGDV9s57Dieiqc;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Y64_3A4uwFkzZKGDV9s57Dieiqc;->f$1:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Y64_3A4uwFkzZKGDV9s57Dieiqc;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Y64_3A4uwFkzZKGDV9s57Dieiqc;->f$1:Landroid/location/GnssNavigationMessage;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$reportNavigationMessage$7$GnssLocationProvider(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method
