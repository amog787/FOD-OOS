.class Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDhcpServerCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServerCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/dhcp/IDhcpServerCallbacks;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 95
    iput-object p1, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 96
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "android.net.dhcp.IDhcpServerCallbacks"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget v0, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.net.dhcp.IDhcpServerCallbacks"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 138
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onDhcpServerCreated(ILandroid/net/dhcp/IDhcpServer;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "server"    # Landroid/net/dhcp/IDhcpServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.dhcp.IDhcpServerCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/net/dhcp/IDhcpServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 113
    iget-object v2, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 114
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServerCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 115
    invoke-static {}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServerCallbacks;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/dhcp/IDhcpServerCallbacks;->onDhcpServerCreated(ILandroid/net/dhcp/IDhcpServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    return-void

    .line 120
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
