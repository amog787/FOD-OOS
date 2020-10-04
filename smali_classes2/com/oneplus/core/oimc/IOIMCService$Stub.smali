.class public abstract Lcom/oneplus/core/oimc/IOIMCService$Stub;
.super Landroid/os/Binder;
.source "IOIMCService.java"

# interfaces
.implements Lcom/oneplus/core/oimc/IOIMCService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/oimc/IOIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.core.oimc.IOIMCService"

.field static final TRANSACTION_addFuncRule:I = 0x1

.field static final TRANSACTION_addFuncRuleGlobal:I = 0x3

.field static final TRANSACTION_getRemoteFuncConfig:I = 0xa

.field static final TRANSACTION_getRemoteFuncStatus:I = 0x9

.field static final TRANSACTION_notifyModeChange:I = 0x6

.field static final TRANSACTION_registerRemoteAction:I = 0x7

.field static final TRANSACTION_removeFuncRule:I = 0x2

.field static final TRANSACTION_removeFuncRuleGlobal:I = 0x4

.field static final TRANSACTION_runRuleGlobal:I = 0x5

.field static final TRANSACTION_unRegisterRemoteAction:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "com.oneplus.core.oimc.IOIMCService"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/core/oimc/IOIMCService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "com.oneplus.core.oimc.IOIMCService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/core/oimc/IOIMCService;

    if-eqz v1, :cond_1

    .line 68
    move-object v1, v0

    check-cast v1, Lcom/oneplus/core/oimc/IOIMCService;

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/core/oimc/IOIMCService;
    .locals 1

    .line 483
    sget-object v0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/oimc/IOIMCService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oneplus/core/oimc/IOIMCService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/oneplus/core/oimc/IOIMCService;

    .line 476
    sget-object v0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/oimc/IOIMCService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 477
    sput-object p0, Lcom/oneplus/core/oimc/IOIMCService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/core/oimc/IOIMCService;

    .line 478
    const/4 v0, 0x1

    return v0

    .line 480
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 74
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

    .line 78
    const-string v0, "com.oneplus.core.oimc.IOIMCService"

    .line 79
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    packed-switch p1, :pswitch_data_0

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 205
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 211
    return v2

    .line 195
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v3

    .line 199
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return v2

    .line 186
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->unRegisterRemoteAction(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    return v2

    .line 175
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    move-result-object v3

    .line 180
    .local v3, "_arg1":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    return v2

    .line 162
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->notifyModeChange(Ljava/lang/String;II)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    return v2

    .line 148
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lcom/oneplus/core/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/core/oimc/OIMCRule;

    .local v1, "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    goto :goto_0

    .line 154
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :cond_0
    const/4 v1, 0x0

    .line 156
    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v2

    .line 134
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    sget-object v1, Lcom/oneplus/core/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/core/oimc/OIMCRule;

    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    goto :goto_1

    .line 140
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :cond_1
    const/4 v1, 0x0

    .line 142
    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v2

    .line 120
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    sget-object v1, Lcom/oneplus/core/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/core/oimc/OIMCRule;

    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    goto :goto_2

    .line 126
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :cond_2
    const/4 v1, 0x0

    .line 128
    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    return v2

    .line 104
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    sget-object v1, Lcom/oneplus/core/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/core/oimc/OIMCRule;

    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    goto :goto_3

    .line 110
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :cond_3
    const/4 v1, 0x0

    .line 113
    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    return v2

    .line 88
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    sget-object v1, Lcom/oneplus/core/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/core/oimc/OIMCRule;

    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    goto :goto_4

    .line 94
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :cond_4
    const/4 v1, 0x0

    .line 97
    .restart local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/core/oimc/IOIMCService$Stub;->addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v2

    .line 83
    .end local v1    # "_arg0":Lcom/oneplus/core/oimc/OIMCRule;
    .end local v3    # "_arg1":I
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v2

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
