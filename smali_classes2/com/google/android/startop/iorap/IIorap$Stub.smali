.class public abstract Lcom/google/android/startop/iorap/IIorap$Stub;
.super Landroid/os/Binder;
.source "IIorap.java"

# interfaces
.implements Lcom/google/android/startop/iorap/IIorap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IIorap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.startop.iorap.IIorap"

.field static final TRANSACTION_onAppIntentEvent:I = 0x4

.field static final TRANSACTION_onAppLaunchEvent:I = 0x2

.field static final TRANSACTION_onPackageEvent:I = 0x3

.field static final TRANSACTION_onSystemServiceEvent:I = 0x5

.field static final TRANSACTION_onSystemServiceUserEvent:I = 0x6

.field static final TRANSACTION_setTaskListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "com.google.android.startop.iorap.IIorap"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/startop/iorap/IIorap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/IIorap;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 127
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    const-string v0, "com.google.android.startop.iorap.IIorap"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/startop/iorap/IIorap;

    if-eqz v1, :cond_1

    .line 132
    move-object v1, v0

    check-cast v1, Lcom/google/android/startop/iorap/IIorap;

    return-object v1

    .line 134
    :cond_1
    new-instance v1, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/google/android/startop/iorap/IIorap;
    .locals 1

    .line 522
    sget-object v0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/google/android/startop/iorap/IIorap;)Z
    .locals 1
    .param p0, "impl"    # Lcom/google/android/startop/iorap/IIorap;

    .line 515
    sget-object v0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 516
    sput-object p0, Lcom/google/android/startop/iorap/IIorap$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/IIorap;

    .line 517
    const/4 v0, 0x1

    return v0

    .line 519
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 138
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const-string v0, "com.google.android.startop.iorap.IIorap"

    .line 143
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_a

    packed-switch p1, :pswitch_data_0

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 240
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    sget-object v1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/startop/iorap/RequestId;

    .local v1, "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_0

    .line 246
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_0
    const/4 v1, 0x0

    .line 249
    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    sget-object v3, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/SystemServiceUserEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    goto :goto_1

    .line 253
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    :cond_1
    const/4 v3, 0x0

    .line 255
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V

    .line 256
    return v2

    .line 220
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    sget-object v1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/startop/iorap/RequestId;

    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_2

    .line 226
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_2
    const/4 v1, 0x0

    .line 229
    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    sget-object v3, Lcom/google/android/startop/iorap/SystemServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/SystemServiceEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/SystemServiceEvent;
    goto :goto_3

    .line 233
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceEvent;
    :cond_3
    const/4 v3, 0x0

    .line 235
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceEvent;
    :goto_3
    invoke-virtual {p0, v1, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V

    .line 236
    return v2

    .line 200
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/SystemServiceEvent;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    sget-object v1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/startop/iorap/RequestId;

    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_4

    .line 206
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_4
    const/4 v1, 0x0

    .line 209
    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 210
    sget-object v3, Lcom/google/android/startop/iorap/AppIntentEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/AppIntentEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/AppIntentEvent;
    goto :goto_5

    .line 213
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/AppIntentEvent;
    :cond_5
    const/4 v3, 0x0

    .line 215
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/AppIntentEvent;
    :goto_5
    invoke-virtual {p0, v1, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V

    .line 216
    return v2

    .line 180
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/AppIntentEvent;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 183
    sget-object v1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/startop/iorap/RequestId;

    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_6

    .line 186
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_6
    const/4 v1, 0x0

    .line 189
    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 190
    sget-object v3, Lcom/google/android/startop/iorap/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/PackageEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/PackageEvent;
    goto :goto_7

    .line 193
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/PackageEvent;
    :cond_7
    const/4 v3, 0x0

    .line 195
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/PackageEvent;
    :goto_7
    invoke-virtual {p0, v1, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V

    .line 196
    return v2

    .line 160
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/PackageEvent;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 163
    sget-object v1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/startop/iorap/RequestId;

    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    goto :goto_8

    .line 166
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :cond_8
    const/4 v1, 0x0

    .line 169
    .restart local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 170
    sget-object v3, Lcom/google/android/startop/iorap/AppLaunchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/startop/iorap/AppLaunchEvent;

    .local v3, "_arg1":Lcom/google/android/startop/iorap/AppLaunchEvent;
    goto :goto_9

    .line 173
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/AppLaunchEvent;
    :cond_9
    const/4 v3, 0x0

    .line 175
    .restart local v3    # "_arg1":Lcom/google/android/startop/iorap/AppLaunchEvent;
    :goto_9
    invoke-virtual {p0, v1, v3}, Lcom/google/android/startop/iorap/IIorap$Stub;->onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V

    .line 176
    return v2

    .line 152
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/RequestId;
    .end local v3    # "_arg1":Lcom/google/android/startop/iorap/AppLaunchEvent;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/ITaskListener;

    move-result-object v1

    .line 155
    .local v1, "_arg0":Lcom/google/android/startop/iorap/ITaskListener;
    invoke-virtual {p0, v1}, Lcom/google/android/startop/iorap/IIorap$Stub;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V

    .line 156
    return v2

    .line 147
    .end local v1    # "_arg0":Lcom/google/android/startop/iorap/ITaskListener;
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
