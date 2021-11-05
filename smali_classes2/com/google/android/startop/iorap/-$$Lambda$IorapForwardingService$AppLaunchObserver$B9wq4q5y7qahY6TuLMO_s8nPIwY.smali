.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

.field public final synthetic f$1:[B

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    iput-object p2, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;->f$1:[B

    iput p3, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/android/startop/iorap/IIorap;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    iget-object v1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;->f$1:[B

    iget v2, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->lambda$onActivityLaunched$2$IorapForwardingService$AppLaunchObserver([BILcom/google/android/startop/iorap/IIorap;)V

    return-void
.end method
