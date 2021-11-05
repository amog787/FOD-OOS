.class Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnStatusListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnStatusListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnStatusListener;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedVersion:I

    .line 114
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->access$000()Ljava/lang/String;

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

    .line 169
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 175
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 176
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 177
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ipmemorystore/IOnStatusListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    monitor-exit p0

    return-object v3

    .line 180
    .end local p0    # "this":Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    throw v2

    .line 187
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 168
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

    .line 147
    iget v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 151
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 153
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 154
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ipmemorystore/IOnStatusListener;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    return v3

    .line 158
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw v2

    .line 165
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;)V
    .locals 4
    .param p1, "status"    # Landroid/net/ipmemorystore/StatusParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_0
    iget-object v1, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 136
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/ipmemorystore/IOnStatusListener;->onComplete(Landroid/net/ipmemorystore/StatusParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    return-void

    .line 142
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw v1
.end method
