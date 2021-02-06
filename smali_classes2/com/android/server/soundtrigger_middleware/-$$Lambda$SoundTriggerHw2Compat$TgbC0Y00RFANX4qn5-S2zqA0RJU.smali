.class public final synthetic Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$TgbC0Y00RFANX4qn5-S2zqA0RJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$TgbC0Y00RFANX4qn5-S2zqA0RJU;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$TgbC0Y00RFANX4qn5-S2zqA0RJU;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$TgbC0Y00RFANX4qn5-S2zqA0RJU;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$TgbC0Y00RFANX4qn5-S2zqA0RJU;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$getProperties_2_0$5(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V

    return-void
.end method
