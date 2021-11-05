.class public interface abstract Landroid/os/IVoldMountCallback;
.super Ljava/lang/Object;
.source "IVoldMountCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldMountCallback$Stub;,
        Landroid/os/IVoldMountCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
