.class public abstract Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;
.super Landroid/os/Binder;
.source "IGameVibrateService.java"

# interfaces
.implements Lcom/oneplus/core/gamevibrate/IGameVibrateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/gamevibrate/IGameVibrateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.core.gamevibrate.IGameVibrateService"

.field static final TRANSACTION_getGameStartFlag:I = 0x3

.field static final TRANSACTION_getSupportedGame:I = 0x5

.field static final TRANSACTION_getZoneInfo:I = 0x8

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_isOnlineConfigEnable:I = 0x4

.field static final TRANSACTION_onPointerEvent:I = 0xa

.field static final TRANSACTION_release:I = 0x2

.field static final TRANSACTION_saveZoneInfo:I = 0x6

.field static final TRANSACTION_setScreenSize:I = 0x9

.field static final TRANSACTION_setZoneInfo:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "com.oneplus.core.gamevibrate.IGameVibrateService"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "com.oneplus.core.gamevibrate.IGameVibrateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    return-object v1

    .line 72
    :cond_1
    new-instance v1, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    .locals 1

    .line 423
    sget-object v0, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oneplus/core/gamevibrate/IGameVibrateService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    .line 413
    sget-object v0, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    if-nez v0, :cond_1

    .line 416
    if-eqz p0, :cond_0

    .line 417
    sput-object p0, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    .line 418
    const/4 v0, 0x1

    return v0

    .line 420
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 414
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 76
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const-string v0, "com.oneplus.core.gamevibrate.IGameVibrateService"

    .line 81
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .local v1, "_arg0":Landroid/view/MotionEvent;
    goto :goto_0

    .line 171
    .end local v1    # "_arg0":Landroid/view/MotionEvent;
    :cond_0
    const/4 v1, 0x0

    .line 173
    .restart local v1    # "_arg0":Landroid/view/MotionEvent;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    return v2

    .line 158
    .end local v1    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->setScreenSize()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v2

    .line 150
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->getZoneInfo()[I

    move-result-object v1

    .line 152
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    return v2

    .line 141
    .end local v1    # "_result":[I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 144
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->setZoneInfo([I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v2

    .line 130
    .end local v1    # "_arg0":[I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 134
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    .line 135
    .local v3, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->saveZoneInfo(ZZ)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v2

    .line 122
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->getSupportedGame()[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 126
    return v2

    .line 114
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->isOnlineConfigEnable()Z

    move-result v1

    .line 116
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v2

    .line 106
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->getGameStartFlag()Z

    move-result v1

    .line 108
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v2

    .line 99
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->release()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v2

    .line 90
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->init(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v2

    .line 85
    .end local v1    # "_arg0":Ljava/lang/String;
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
