.class public final synthetic Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$YlDkqdeYbHPdKcgZh23aJ5Yw8mg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$YlDkqdeYbHPdKcgZh23aJ5Yw8mg;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$TunerCallback$YlDkqdeYbHPdKcgZh23aJ5Yw8mg;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanComplete$7$TunerCallback()V

    return-void
.end method
