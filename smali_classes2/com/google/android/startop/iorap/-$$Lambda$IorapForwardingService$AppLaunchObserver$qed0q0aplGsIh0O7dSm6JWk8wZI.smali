.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$qed0q0aplGsIh0O7dSm6JWk8wZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$qed0q0aplGsIh0O7dSm6JWk8wZI;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/android/startop/iorap/IIorap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$qed0q0aplGsIh0O7dSm6JWk8wZI;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    invoke-virtual {v0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->lambda$onIntentFailed$1$IorapForwardingService$AppLaunchObserver(Lcom/google/android/startop/iorap/IIorap;)V

    return-void
.end method
