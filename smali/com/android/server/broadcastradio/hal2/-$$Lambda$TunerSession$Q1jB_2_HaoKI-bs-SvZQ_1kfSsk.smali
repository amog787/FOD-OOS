.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$Q1jB_2_HaoKI-bs-SvZQ_1kfSsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/RadioManager$BandConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$Q1jB_2_HaoKI-bs-SvZQ_1kfSsk;->f$0:Landroid/hardware/radio/RadioManager$BandConfig;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$Q1jB_2_HaoKI-bs-SvZQ_1kfSsk;->f$0:Landroid/hardware/radio/RadioManager$BandConfig;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$setConfiguration$0(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
