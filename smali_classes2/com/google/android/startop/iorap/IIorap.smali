.class public interface abstract Lcom/google/android/startop/iorap/IIorap;
.super Ljava/lang/Object;
.source "IIorap.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/IIorap$Stub;,
        Lcom/google/android/startop/iorap/IIorap$Default;
    }
.end annotation


# virtual methods
.method public abstract onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
