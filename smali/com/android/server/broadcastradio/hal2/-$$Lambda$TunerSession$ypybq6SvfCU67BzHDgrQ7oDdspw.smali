.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/MutableInt;

.field public final synthetic f$1:Landroid/util/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;->f$0:Landroid/util/MutableInt;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;->f$1:Landroid/util/MutableBoolean;

    return-void
.end method


# virtual methods
.method public final onValues(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;->f$0:Landroid/util/MutableInt;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;->f$1:Landroid/util/MutableBoolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$isConfigFlagSet$2(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V

    return-void
.end method
