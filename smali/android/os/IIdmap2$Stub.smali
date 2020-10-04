.class public abstract Landroid/os/IIdmap2$Stub;
.super Landroid/os/Binder;
.source "IIdmap2.java"

# interfaces
.implements Landroid/os/IIdmap2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIdmap2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIdmap2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IIdmap2"

.field static final TRANSACTION_createIdmap:I = 0x4

.field static final TRANSACTION_getIdmapPath:I = 0x1

.field static final TRANSACTION_removeIdmap:I = 0x2

.field static final TRANSACTION_verifyIdmap:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.os.IIdmap2"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIdmap2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "android.os.IIdmap2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IIdmap2;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/os/IIdmap2;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Landroid/os/IIdmap2$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIdmap2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IIdmap2;
    .locals 1

    .line 258
    sget-object v0, Landroid/os/IIdmap2$Stub$Proxy;->sDefaultImpl:Landroid/os/IIdmap2;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IIdmap2;)Z
    .locals 1
    .param p0, "impl"    # Landroid/os/IIdmap2;

    .line 251
    sget-object v0, Landroid/os/IIdmap2$Stub$Proxy;->sDefaultImpl:Landroid/os/IIdmap2;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 252
    sput-object p0, Landroid/os/IIdmap2$Stub$Proxy;->sDefaultImpl:Landroid/os/IIdmap2;

    .line 253
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 60
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.os.IIdmap2"

    .line 65
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-eq v7, v11, :cond_6

    const/4 v0, 0x2

    if-eq v7, v0, :cond_5

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq v7, v0, :cond_3

    const/4 v0, 0x4

    if-eq v7, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_0

    .line 132
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 69
    :cond_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v11

    .line 114
    :cond_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 120
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 122
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v4, v11

    goto :goto_0

    :cond_2
    move v4, v1

    .line 124
    .local v4, "_arg3":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 125
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/os/IIdmap2$Stub;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v11

    .line 98
    .end local v0    # "_result":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg4":I
    :cond_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v11

    .line 106
    .local v1, "_arg2":Z
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/os/IIdmap2$Stub;->verifyIdmap(Ljava/lang/String;IZI)Z

    move-result v4

    .line 108
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v11

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :cond_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IIdmap2$Stub;->removeIdmap(Ljava/lang/String;I)Z

    move-result v2

    .line 92
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v11

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :cond_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IIdmap2$Stub;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v11
.end method
