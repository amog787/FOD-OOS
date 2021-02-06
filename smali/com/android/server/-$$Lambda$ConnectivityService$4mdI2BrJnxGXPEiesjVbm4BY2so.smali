.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$4mdI2BrJnxGXPEiesjVbm4BY2so;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ConnectivityService;

.field public final synthetic f$1:Landroid/os/Messenger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$4mdI2BrJnxGXPEiesjVbm4BY2so;->f$0:Lcom/android/server/ConnectivityService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$4mdI2BrJnxGXPEiesjVbm4BY2so;->f$1:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$4mdI2BrJnxGXPEiesjVbm4BY2so;->f$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$4mdI2BrJnxGXPEiesjVbm4BY2so;->f$1:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->lambda$registerNetworkProvider$6$ConnectivityService(Landroid/os/Messenger;)V

    return-void
.end method
