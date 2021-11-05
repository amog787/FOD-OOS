.class public interface abstract Landroid/net/dhcp/IDhcpEventCallbacks;
.super Ljava/lang/Object;
.source "IDhcpEventCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpEventCallbacks$Stub;,
        Landroid/net/dhcp/IDhcpEventCallbacks$Default;
    }
.end annotation


# static fields
.field public static final HASH:Ljava/lang/String; = "02cd6fd07d5c04eca0c35a350f7b0be576242883"

.field public static final VERSION:I = 0x7


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLeasesChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/dhcp/DhcpLeaseParcelable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNewPrefixRequest(Landroid/net/IpPrefix;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
