.class public final synthetic Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iput p2, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    iget v1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$QwopTG5nMx1CO2s6KecqSuCqviA;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onError$0$TunerCallback(I)V

    return-void
.end method
