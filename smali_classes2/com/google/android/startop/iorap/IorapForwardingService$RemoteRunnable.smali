.class interface abstract Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;
.super Ljava/lang/Object;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IorapForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RemoteRunnable"
.end annotation


# virtual methods
.method public abstract run(Lcom/google/android/startop/iorap/IIorap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
