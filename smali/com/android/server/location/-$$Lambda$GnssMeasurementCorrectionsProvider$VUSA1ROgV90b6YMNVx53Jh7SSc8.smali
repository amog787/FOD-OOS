.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssMeasurementCorrectionsProvider$VUSA1ROgV90b6YMNVx53Jh7SSc8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

.field private final synthetic f$1:Landroid/location/GnssMeasurementCorrections;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssMeasurementCorrectionsProvider;Landroid/location/GnssMeasurementCorrections;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementCorrectionsProvider$VUSA1ROgV90b6YMNVx53Jh7SSc8;->f$0:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementCorrectionsProvider$VUSA1ROgV90b6YMNVx53Jh7SSc8;->f$1:Landroid/location/GnssMeasurementCorrections;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementCorrectionsProvider$VUSA1ROgV90b6YMNVx53Jh7SSc8;->f$0:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementCorrectionsProvider$VUSA1ROgV90b6YMNVx53Jh7SSc8;->f$1:Landroid/location/GnssMeasurementCorrections;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->lambda$injectGnssMeasurementCorrections$0$GnssMeasurementCorrectionsProvider(Landroid/location/GnssMeasurementCorrections;)V

    return-void
.end method
