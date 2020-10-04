.class public interface abstract Landroid/net/dhcp/IDhcpServer;
.super Ljava/lang/Object;
.source "IDhcpServer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpServer$Stub;,
        Landroid/net/dhcp/IDhcpServer$Default;
    }
.end annotation


# static fields
.field public static final STATUS_INVALID_ARGUMENT:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final STATUS_UNKNOWN_ERROR:I = 0x3

.field public static final VERSION:I = 0x3


# virtual methods
.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract start(Landroid/net/INetworkStackStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop(Landroid/net/INetworkStackStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
