.class public abstract Landroid/os/IDumpstate$Stub;
.super Landroid/os/Binder;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstate$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstate"

.field static final TRANSACTION_cancelBugreport:I = 0x3

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_startBugreport:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.os.IDumpstate"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    const-string v0, "android.os.IDumpstate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDumpstate;

    if-eqz v1, :cond_1

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/os/IDumpstate;

    return-object v1

    .line 79
    :cond_1
    new-instance v1, Landroid/os/IDumpstate$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDumpstate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IDumpstate;
    .locals 1

    .line 262
    sget-object v0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IDumpstate;)Z
    .locals 1
    .param p0, "impl"    # Landroid/os/IDumpstate;

    .line 255
    sget-object v0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 256
    sput-object p0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

    .line 257
    const/4 v0, 0x1

    return v0

    .line 259
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 83
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.os.IDumpstate"

    .line 88
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const v5, 0x5f4e5446

    if-eq v0, v5, :cond_0

    .line 137
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 92
    :cond_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v4

    .line 130
    :cond_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/os/IDumpstate$Stub;->cancelBugreport()V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v4

    .line 111
    :cond_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 115
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    .line 119
    .local v14, "_arg2":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    .line 121
    .local v15, "_arg3":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 123
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v17

    .line 124
    .local v17, "_arg5":Landroid/os/IDumpstateListener;
    move-object/from16 v5, p0

    move v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move/from16 v10, v16

    move-object/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Landroid/os/IDumpstate$Stub;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v4

    .line 97
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/io/FileDescriptor;
    .end local v15    # "_arg3":Ljava/io/FileDescriptor;
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Landroid/os/IDumpstateListener;
    :cond_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v6

    .line 103
    .local v6, "_arg1":Landroid/os/IDumpstateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    .line 104
    .local v7, "_arg2":Z
    :goto_0
    move-object/from16 v8, p0

    invoke-virtual {v8, v5, v6, v7}, Landroid/os/IDumpstate$Stub;->setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;

    move-result-object v9

    .line 105
    .local v9, "_result":Landroid/os/IDumpstateToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/os/IDumpstateToken;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 107
    return v4
.end method
