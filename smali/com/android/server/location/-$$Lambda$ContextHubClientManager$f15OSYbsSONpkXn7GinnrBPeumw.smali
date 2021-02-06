.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/NanoAppMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;->f$0:Landroid/hardware/location/NanoAppMessage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;->f$0:Landroid/hardware/location/NanoAppMessage;

    check-cast p1, Lcom/android/server/location/ContextHubClientBroker;

    invoke-static {v0, p1}, Lcom/android/server/location/ContextHubClientManager;->lambda$broadcastMessage$4(Landroid/hardware/location/NanoAppMessage;Lcom/android/server/location/ContextHubClientBroker;)V

    return-void
.end method
