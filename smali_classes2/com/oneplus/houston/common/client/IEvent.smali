.class public interface abstract Lcom/oneplus/houston/common/client/IEvent;
.super Ljava/lang/Object;
.source "IEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final ADD_CLIENT_TRANSACTION:I = 0xc

.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.common.client.IEvent"

.field public static final MY_PID:I = 0x5

.field public static final ON_DUMP_TRANSACTION:I = 0x4

.field public static final ON_EVENT_TRANSACTION:I = 0x3

.field public static final ON_INIT_TRANSACTION:I = 0x6

.field public static final ON_RECEIVE_INTENT_TRANSACTION:I = 0x2

.field public static final ON_RECEIVE_TRANSACTION:I = 0x1

.field public static final REGISTER_EVENT_OBSERVER_TRANSACTION:I = 0xe

.field public static final REMOVE_CLIENT_TRANSACTION:I = 0xd

.field public static final UNREGISTER_EVENT_OBSERVER_TRANSACTION:I = 0xf


# virtual methods
.method public abstract addClient(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract myPid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEvent(Lcom/oneplus/houston/common/client/Event;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceive(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerEventObserver(Landroid/os/IBinder;Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeClient(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterEventObserver(Landroid/os/IBinder;Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
