.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$wgbD3UX3tm4cAHA8-DcwmeBBlXU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/startop/iorap/IorapForwardingService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$wgbD3UX3tm4cAHA8-DcwmeBBlXU;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$wgbD3UX3tm4cAHA8-DcwmeBBlXU;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-virtual {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->lambda$connectToRemoteAndConfigureLocked$0$IorapForwardingService()V

    return-void
.end method
