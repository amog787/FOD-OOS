.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$CFacmt7807NhDDkp6CgbkeGnMvQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/NanoAppMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$CFacmt7807NhDDkp6CgbkeGnMvQ;->f$0:Landroid/hardware/location/NanoAppMessage;

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$CFacmt7807NhDDkp6CgbkeGnMvQ;->f$0:Landroid/hardware/location/NanoAppMessage;

    invoke-static {v0, p1}, Lcom/android/server/location/ContextHubClientBroker;->lambda$sendMessageToClient$0(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method
