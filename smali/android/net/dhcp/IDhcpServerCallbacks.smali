.class public interface abstract Landroid/net/dhcp/IDhcpServerCallbacks;
.super Ljava/lang/Object;
.source "IDhcpServerCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpServerCallbacks$Stub;,
        Landroid/net/dhcp/IDhcpServerCallbacks$Default;
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

.method public abstract onDhcpServerCreated(ILandroid/net/dhcp/IDhcpServer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
