.class Landroid/net/INetworkStackConnector$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkStackConnector.java"

# interfaces
.implements Landroid/net/INetworkStackConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStackConnector$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetworkStackConnector;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I

    .line 162
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 159
    iput-object p1, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 160
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 5
    .param p1, "cb"    # Landroid/net/IIpMemoryStoreCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/IIpMemoryStoreCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 242
    iget-object v2, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 243
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 244
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    return-void

    .line 249
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    nop

    .line 251
    return-void

    .line 249
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 276
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 278
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 282
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 283
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 284
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetworkStackConnector;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    monitor-exit p0

    return-object v3

    .line 287
    .end local p0    # "this":Landroid/net/INetworkStackConnector$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    goto :goto_0

    .line 290
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw v2

    .line 294
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 275
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    iget v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 260
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 261
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 262
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetworkStackConnector;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    return v3

    .line 265
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    goto :goto_0

    .line 268
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    throw v2

    .line 272
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 4
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/net/dhcp/DhcpServingParamsParcel;
    .param p3, "cb"    # Landroid/net/dhcp/IDhcpServerCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {p2, v0, v1}, Landroid/net/dhcp/DhcpServingParamsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/net/dhcp/IDhcpServerCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 185
    iget-object v3, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 186
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 187
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    return-void

    .line 192
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    nop

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw v1
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/net/ip/IIpClientCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/net/ip/IIpClientCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 226
    iget-object v2, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 227
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 228
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    return-void

    .line 233
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    nop

    .line 235
    return-void

    .line 233
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw v1
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/net/INetworkMonitorCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {p1, v0, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/net/INetworkMonitorCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 209
    iget-object v3, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 210
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 211
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    return-void

    .line 216
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    nop

    .line 218
    return-void

    .line 216
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    throw v1
.end method
