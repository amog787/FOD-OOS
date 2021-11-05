.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

.field public final synthetic f$1:[B

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    iput-object p2, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;->f$1:[B

    iput-wide p3, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;->f$2:J

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/android/startop/iorap/IIorap;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    iget-object v1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;->f$1:[B

    iget-wide v2, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE;->f$2:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->lambda$onActivityLaunchFinished$4$IorapForwardingService$AppLaunchObserver([BJLcom/google/android/startop/iorap/IIorap;)V

    return-void
.end method
