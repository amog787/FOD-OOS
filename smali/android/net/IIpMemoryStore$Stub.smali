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
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_delete:I = 0x8

.field static final TRANSACTION_deleteCluster:I = 0x9

.field static final TRANSACTION_factoryReset:I = 0x7

.field static final TRANSACTION_findL2Key:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_isSameNetwork:I = 0x4

.field static final TRANSACTION_retrieveBlob:I = 0x6

.field static final TRANSACTION_retrieveNetworkAttributes:I = 0x5

.field static final TRANSACTION_storeBlob:I = 0x2

.field static final TRANSACTION_storeNetworkAttributes:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-string v0, "android$net$IIpMemoryStore"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    sget-object v0, Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpMemoryStore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStore;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    sget-object v0, Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IIpMemoryStore;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/net/IIpMemoryStore;

    return-object v1

    .line 81
    :cond_1
    new-instance v1, Landroid/net/IIpMemoryStore$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpMemoryStore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/IIpMemoryStore;
    .locals 1

    .line 502
    sget-object v0, Landroid/net/IIpMemoryStore$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStore;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IIpMemoryStore;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/IIpMemoryStore;

    .line 492
    sget-object v0, Landroid/net/IIpMemoryStore$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStore;

    if-nez v0, :cond_1

    .line 495
    if-eqz p0, :cond_0

    .line 496
    sput-object p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStore;

    .line 497
    const/4 v0, 0x1

    return v0

    .line 499
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 493
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 85
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

    .line 89
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 90
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_5

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    .line 232
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 218
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/net/IIpMemoryStore$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    return v11

    .line 225
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/net/IIpMemoryStore$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v11

    .line 206
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v11

    .line 212
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v2

    .line 213
    .local v2, "_arg2":Landroid/net/ipmemorystore/IOnStatusAndCountListener;
    invoke-virtual {v6, v1, v0, v2}, Landroid/net/IIpMemoryStore$Stub;->deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    .line 214
    return v11

    .line 194
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/ipmemorystore/IOnStatusAndCountListener;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v11

    .line 200
    .restart local v0    # "_arg1":Z
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v2

    .line 201
    .restart local v2    # "_arg2":Landroid/net/ipmemorystore/IOnStatusAndCountListener;
    invoke-virtual {v6, v1, v0, v2}, Landroid/net/IIpMemoryStore$Stub;->delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    .line 202
    return v11

    .line 188
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/ipmemorystore/IOnStatusAndCountListener;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/net/IIpMemoryStore$Stub;->factoryReset()V

    .line 190
    return v11

    .line 174
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v3

    .line 183
    .local v3, "_arg3":Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/IIpMemoryStore$Stub;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V

    .line 184
    return v11

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object v1

    .line 169
    .local v1, "_arg1":Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    invoke-virtual {v6, v0, v1}, Landroid/net/IIpMemoryStore$Stub;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    .line 170
    return v11

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v2

    .line 159
    .local v2, "_arg2":Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpMemoryStore$Stub;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V

    .line 160
    return v11

    .line 137
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .local v0, "_arg0":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    goto :goto_0

    .line 143
    .end local v0    # "_arg0":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :cond_2
    const/4 v0, 0x0

    .line 146
    .restart local v0    # "_arg0":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object v1

    .line 147
    .local v1, "_arg1":Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    invoke-virtual {v6, v0, v1}, Landroid/net/IIpMemoryStore$Stub;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V

    .line 148
    return v11

    .line 116
    .end local v0    # "_arg0":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .end local v1    # "_arg1":Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 122
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    sget-object v0, Landroid/net/ipmemorystore/Blob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ipmemorystore/Blob;

    move-object v15, v0

    .local v0, "_arg3":Landroid/net/ipmemorystore/Blob;
    goto :goto_1

    .line 128
    .end local v0    # "_arg3":Landroid/net/ipmemorystore/Blob;
    :cond_3
    const/4 v0, 0x0

    move-object v15, v0

    .line 131
    .local v15, "_arg3":Landroid/net/ipmemorystore/Blob;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v16

    .line 132
    .local v16, "_arg4":Landroid/net/ipmemorystore/IOnStatusListener;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/IIpMemoryStore$Stub;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V

    .line 133
    return v11

    .line 99
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/net/ipmemorystore/Blob;
    .end local v16    # "_arg4":Landroid/net/ipmemorystore/IOnStatusListener;
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    sget-object v1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .local v1, "_arg1":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    goto :goto_2

    .line 107
    .end local v1    # "_arg1":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :cond_4
    const/4 v1, 0x0

    .line 110
    .restart local v1    # "_arg1":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v2

    .line 111
    .local v2, "_arg2":Landroid/net/ipmemorystore/IOnStatusListener;
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpMemoryStore$Stub;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V

    .line 112
    return v11

    .line 94
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .end local v2    # "_arg2":Landroid/net/ipmemorystore/IOnStatusListener;
    :cond_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
