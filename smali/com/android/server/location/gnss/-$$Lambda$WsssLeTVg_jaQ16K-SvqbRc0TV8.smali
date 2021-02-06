.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;->f$0:Lcom/android/server/location/gnss/GnssManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8;->f$0:Lcom/android/server/location/gnss/GnssManagerService;

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
