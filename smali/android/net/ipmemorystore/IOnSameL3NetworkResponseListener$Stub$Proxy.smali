.class Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnSameL3NetworkResponseListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedVersion:I

    .line 105
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 106
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "android.net.ipmemorystore.IOnSameL3NetworkResponseListener"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

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
    const-string v2, "android.net.ipmemorystore.IOnSameL3NetworkResponseListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 160
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onSameL3NetworkResponse(Landroid/net/ipmemorystore/StatusParcelable;Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    .locals 4
    .param p1, "status"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "response"    # Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.ipmemorystore.IOnSameL3NetworkResponseListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p1, v0, v2}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    :goto_0
    if-eqz p2, :cond_1

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p2, v0, v2}, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_1
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 136
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 137
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/StatusParcelable;Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    return-void

    .line 142
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
