.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iKwhPFaskH3rDDMX9COUVaItuzk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iKwhPFaskH3rDDMX9COUVaItuzk;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iKwhPFaskH3rDDMX9COUVaItuzk;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    invoke-virtual {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onCurrentProgramInfoChanged$2$RadioModule$1(Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
