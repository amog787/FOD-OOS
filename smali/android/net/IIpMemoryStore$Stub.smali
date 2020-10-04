.class public abstract Landroid/net/IIpMemoryStore$Stub;
.super Landroid/os/Binder;
.source "IIpMemoryStore.java"

# interfaces
.implements Landroid/net/IIpMemoryStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpMemoryStore$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IIpMemoryStore"

.field static final TRANSACTION_factoryReset:I = 0x7

.field static final TRANSACTION_findL2Key:I = 0x3

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_isSameNetwork:I = 0x4

.field static final TRANSACTION_retrieveBlob:I = 0x6

.field static final TRANSACTION_retrieveNetworkAttributes:I = 0x5

.field static final TRANSACTION_storeBlob:I = 0x2

.field static final TRANSACTION_storeNetworkAttributes:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.net.IIpMemoryStore"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpMemoryStore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStore;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "android.net.IIpMemoryStore"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IIpMemoryStore;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/net/IIpMemoryStore;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Landroid/net/IIpMemoryStore$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpMemoryStore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/IIpMemoryStore;
    .locals 1

    .line 386
    sget-object v0, Landroid/net/IIpMemoryStore$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStore;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IIpMemoryStore;)Z
    .locals 1
    .param p0, "impl"    # Landroid/net/IIpMemoryStore;

    .line 379
    sget-object v0, Landroid/net/IIpMemoryStore$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStore;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 380
    sput-object p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStore;

    .line 381
    const/4 v0, 0x1

    return v0

    .line 383
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.net.IIpMemoryStore"

    .line 78
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0xffffff

    const/4 v11, 0x1

    if-eq v7, v0, :cond_4

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_3

    packed-switch v7, :pswitch_data_0

    .line 189
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 176
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/net/IIpMemoryStore$Stub;->factoryReset()V

    .line 178
    return v11

    .line 162
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v3

    .line 171
    .local v3, "_arg3":Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/IIpMemoryStore$Stub;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V

    .line 172
    return v11

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object v1

    .line 157
    .local v1, "_arg1":Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    invoke-virtual {v6, v0, v1}, Landroid/net/IIpMemoryStore$Stub;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    .line 158
    return v11

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v2

    .line 147
    .local v2, "_arg2":Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpMemoryStore$Stub;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V

    .line 148
    return v11

    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .local v0, "_arg0":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    goto :goto_0

    .line 131
    .end local v0    # "_arg0":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :cond_0
    const/4 v0, 0x0

    .line 134
    .restart local v0    # "_arg0":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object v1

    .line 135
    .local v1, "_arg1":Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    invoke-virtual {v6, v0, v1}, Landroid/net/IIpMemoryStore$Stub;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V

    .line 136
    return v11

    .line 104
    .end local v0    # "_arg0":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .end local v1    # "_arg1":Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 112
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Landroid/net/ipmemorystore/Blob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ipmemorystore/Blob;

    move-object v15, v0

    .local v0, "_arg3":Landroid/net/ipmemorystore/Blob;
    goto :goto_1

    .line 116
    .end local v0    # "_arg3":Landroid/net/ipmemorystore/Blob;
    :cond_1
    const/4 v0, 0x0

    move-object v15, v0

    .line 119
    .local v15, "_arg3":Landroid/net/ipmemorystore/Blob;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v16

    .line 120
    .local v16, "_arg4":Landroid/net/ipmemorystore/IOnStatusListener;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/IIpMemoryStore$Stub;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V

    .line 121
    return v11

    .line 87
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/net/ipmemorystore/Blob;
    .end local v16    # "_arg4":Landroid/net/ipmemorystore/IOnStatusListener;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    sget-object v1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .local v1, "_arg1":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    goto :goto_2

    .line 95
    .end local v1    # "_arg1":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :cond_2
    const/4 v1, 0x0

    .line 98
    .restart local v1    # "_arg1":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v2

    .line 99
    .local v2, "_arg2":Landroid/net/ipmemorystore/IOnStatusListener;
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpMemoryStore$Stub;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V

    .line 100
    return v11

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .end local v2    # "_arg2":Landroid/net/ipmemorystore/IOnStatusListener;
    :cond_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v11

    .line 182
    :cond_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/net/IIpMemoryStore$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
