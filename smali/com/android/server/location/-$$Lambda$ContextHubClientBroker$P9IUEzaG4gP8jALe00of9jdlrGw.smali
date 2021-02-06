.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/ContextHubClientBroker;

.field public final synthetic f$1:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/ContextHubClientBroker;Landroid/hardware/location/NanoAppMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;->f$0:Lcom/android/server/location/ContextHubClientBroker;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;->f$1:Landroid/hardware/location/NanoAppMessage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;->f$0:Lcom/android/server/location/ContextHubClientBroker;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;->f$1:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v0, v1}, Lcom/android/server/location/ContextHubClientBroker;->lambda$sendMessageToClient$1$ContextHubClientBroker(Landroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
