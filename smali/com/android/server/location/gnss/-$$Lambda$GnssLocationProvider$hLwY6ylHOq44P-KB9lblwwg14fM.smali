.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$hLwY6ylHOq44P-KB9lblwwg14fM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$hLwY6ylHOq44P-KB9lblwwg14fM;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$hLwY6ylHOq44P-KB9lblwwg14fM;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$reportGnssServiceDied$10$GnssLocationProvider()V

    return-void
.end method
