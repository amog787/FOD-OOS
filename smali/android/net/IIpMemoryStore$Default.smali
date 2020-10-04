.class public Landroid/net/IIpMemoryStore$Default;
.super Ljava/lang/Object;
.source "IIpMemoryStore.java"

# interfaces
.implements Landroid/net/IIpMemoryStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public factoryReset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V
    .locals 0
    .param p1, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .param p2, "listener"    # Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 40
    const/4 v0, -0x1

    return v0
.end method

.method public isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V
    .locals 0
    .param p1, "l2Key1"    # Ljava/lang/String;
    .param p2, "l2Key2"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V
    .locals 0
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V
    .locals 0
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V
    .locals 0
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/ipmemorystore/Blob;
    .param p5, "listener"    # Landroid/net/ipmemorystore/IOnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V
    .locals 0
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .param p3, "listener"    # Landroid/net/ipmemorystore/IOnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
