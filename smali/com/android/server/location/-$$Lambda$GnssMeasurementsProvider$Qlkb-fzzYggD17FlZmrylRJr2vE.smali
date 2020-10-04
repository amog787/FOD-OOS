.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$Qlkb-fzzYggD17FlZmrylRJr2vE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssMeasurementsProvider;

.field private final synthetic f$1:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$Qlkb-fzzYggD17FlZmrylRJr2vE;->f$0:Lcom/android/server/location/GnssMeasurementsProvider;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$Qlkb-fzzYggD17FlZmrylRJr2vE;->f$1:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$Qlkb-fzzYggD17FlZmrylRJr2vE;->f$0:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$Qlkb-fzzYggD17FlZmrylRJr2vE;->f$1:Landroid/location/GnssMeasurementsEvent;

    check-cast p1, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/location/GnssMeasurementsProvider;->lambda$onMeasurementsAvailable$0$GnssMeasurementsProvider(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
