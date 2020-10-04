.class public final synthetic Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iput-boolean p2, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$ndOBpfBmClsz77tzZfe3mvcA1lI;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanAvailabilityChange$6$TunerCallback(Z)V

    return-void
.end method
