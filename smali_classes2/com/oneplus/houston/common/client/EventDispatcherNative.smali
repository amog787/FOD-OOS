.class public abstract Lcom/oneplus/houston/common/client/EventDispatcherNative;
.super Landroid/os/Binder;
.source "EventDispatcherNative.java"

# interfaces
.implements Lcom/oneplus/houston/common/client/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/common/client/EventDispatcherNative$EventDispatcherProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.oneplus.common.client.IEvent"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/houston/common/client/IEvent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "com.oneplus.common.client.IEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/common/client/IEvent;

    .line 38
    .local v0, "in":Lcom/oneplus/houston/common/client/IEvent;
    if-eqz v0, :cond_1

    .line 39
    return-object v0

    .line 41
    :cond_1
    new-instance v1, Lcom/oneplus/houston/common/client/EventDispatcherNative$EventDispatcherProxy;

    invoke-direct {v1, p0}, Lcom/oneplus/houston/common/client/EventDispatcherNative$EventDispatcherProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "event"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 121
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 122
    .local v0, "c":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 123
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->unregisterEventObserver(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    return v1

    .line 115
    .end local v0    # "c":Landroid/os/IBinder;
    .end local v2    # "i":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 116
    .local v0, "client":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->registerEventObserver(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v1

    .line 111
    .end local v0    # "client":Landroid/os/IBinder;
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->removeClient(Landroid/os/IBinder;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v1

    .line 107
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->addClient(Landroid/os/IBinder;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    return v1

    .line 82
    :pswitch_4
    sget-object v0, Lcom/oneplus/houston/common/client/parcel/InitArg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/common/client/parcel/InitArg;

    .line 83
    .local v0, "d":Lcom/oneplus/houston/common/client/parcel/InitArg;
    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->onInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v1

    .line 127
    .end local v0    # "d":Lcom/oneplus/houston/common/client/parcel/InitArg;
    :pswitch_5
    invoke-virtual {p0}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->myPid()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return v1

    .line 89
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 90
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "args":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    goto :goto_1

    .line 97
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    goto :goto_0

    .line 97
    :catch_1
    move-exception v3

    .line 98
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    throw v1

    .line 102
    :cond_0
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v1

    .line 75
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "args":[Ljava/lang/String;
    :pswitch_7
    sget-object v0, Lcom/oneplus/houston/common/client/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/common/client/Event;

    .line 76
    .local v0, "d":Lcom/oneplus/houston/common/client/Event;
    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->onEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v1

    .line 67
    .end local v0    # "d":Lcom/oneplus/houston/common/client/Event;
    :pswitch_8
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 68
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->onReceive(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v1

    .line 58
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .local v0, "b":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "arg":I
    invoke-virtual {p0, v2}, Lcom/oneplus/houston/common/client/EventDispatcherNative;->onReceive(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v1

    .line 53
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "arg":I
    :cond_1
    const-string v0, "com.oneplus.common.client.IEvent"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
