.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;->f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final exec()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;->f$0:Lcom/android/server/broadcastradio/hal2/TunerSession;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$getParameters$4$TunerSession(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
