.class Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnBlobRetrievedListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnBlobRetrievedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnBlobRetrievedListener;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedVersion:I

    .line 125
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 123
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 132
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->access$000()Ljava/lang/String;

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

    .line 189
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 195
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 196
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 197
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    monitor-exit p0

    return-object v3

    .line 200
    .end local p0    # "this":Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    goto :goto_0

    .line 203
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    throw v2

    .line 207
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 188
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

    .line 167
    iget v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 171
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 173
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 174
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    return v3

    .line 178
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v2

    .line 185
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
    .locals 4
    .param p1, "status"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "l2Key"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/ipmemorystore/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {p1, v0, v2}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    if-eqz p4, :cond_1

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {p4, v0, v2}, Landroid/net/ipmemorystore/Blob;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    :goto_1
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 156
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 157
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;->onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-void

    .line 162
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw v1
.end method
