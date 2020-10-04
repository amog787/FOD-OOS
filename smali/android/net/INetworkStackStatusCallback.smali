.class public interface abstract Landroid/net/INetworkStackStatusCallback;
.super Ljava/lang/Object;
.source "INetworkStackStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStackStatusCallback$Stub;,
        Landroid/net/INetworkStackStatusCallback$Default;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x3


# virtual methods
.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusAvailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
