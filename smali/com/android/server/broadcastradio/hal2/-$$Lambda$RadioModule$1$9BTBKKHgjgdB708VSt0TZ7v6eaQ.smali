.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$9BTBKKHgjgdB708VSt0TZ7v6eaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$9BTBKKHgjgdB708VSt0TZ7v6eaQ;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$9BTBKKHgjgdB708VSt0TZ7v6eaQ;->f$0:Z

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onAntennaStateChange$5(ZLandroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
