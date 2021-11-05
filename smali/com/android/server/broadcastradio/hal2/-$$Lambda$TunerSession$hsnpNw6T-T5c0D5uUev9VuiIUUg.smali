.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;->f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final exec()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;->f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;->f$1:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$setParameters$3$TunerSession(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
