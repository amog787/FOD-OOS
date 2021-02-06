.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/location/LocationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    iput-object p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;->f$2:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    iget-object v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA;->f$2:Landroid/location/LocationManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleRequestLocation$2(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    return-void
.end method
