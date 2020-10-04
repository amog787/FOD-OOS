.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$LyKBrtj8y1r69Iz5HNDKUaybxJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$LyKBrtj8y1r69Iz5HNDKUaybxJA;->f$0:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$LyKBrtj8y1r69Iz5HNDKUaybxJA;->f$0:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onProgramListUpdated$2(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
