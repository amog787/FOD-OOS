.class interface abstract Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;
.super Ljava/lang/Object;
.source "ContextHubClientBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ContextHubClientBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CallbackConsumer"
.end annotation


# virtual methods
.method public abstract accept(Landroid/hardware/location/IContextHubClientCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
