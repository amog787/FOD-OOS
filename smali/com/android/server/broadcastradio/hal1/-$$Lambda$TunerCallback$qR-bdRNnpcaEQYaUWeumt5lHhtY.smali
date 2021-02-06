.class public final synthetic Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field public final synthetic f$1:Landroid/hardware/radio/RadioManager$BandConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;->f$1:Landroid/hardware/radio/RadioManager$BandConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$qR-bdRNnpcaEQYaUWeumt5lHhtY;->f$1:Landroid/hardware/radio/RadioManager$BandConfig;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onConfigurationChanged$1$TunerCallback(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method
