.class public abstract Landroid/net/INetworkMonitorCallbacks$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitorCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_hideProvisioningNotification:I = 0x5

.field static final TRANSACTION_notifyCaptivePortalDataChanged:I = 0x9

.field static final TRANSACTION_notifyDataStallSuspected:I = 0x8

.field static final TRANSACTION_notifyNetworkTested:I = 0x2

.field static final TRANSACTION_notifyNetworkTestedWithExtras:I = 0x7

.field static final TRANSACTION_notifyPrivateDnsConfigResolved:I = 0x3

.field static final TRANSACTION_notifyProbeStatusChanged:I = 0x6

.field static final TRANSACTION_onNetworkMonitorCreated:I = 0x1

.field static final TRANSACTION_showProvisioningNotification:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-string v0, "android$net$INetworkMonitorCallbacks"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetworkMonitorCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkMonitorCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkMonitorCallbacks;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkMonitorCallbacks;

    return-object v1

    .line 81
    :cond_1
    new-instance v1, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;
    .locals 1

    .line 471
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkMonitorCallbacks;)Z
    .locals 2
    .param p0, "impl"    # Landroid/net/INetworkMonitorCallbacks;

    .line 461
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    if-nez v0, :cond_1

    .line 464
    if-eqz p0, :cond_0

    .line 465
    sput-object p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    .line 466
    const/4 v0, 0x1

    return v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 462
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

    .line 89
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 195
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    return v2

    .line 202
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    return v2

    .line 182
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Landroid/net/CaptivePortalData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/CaptivePortalData;

    .local v1, "_arg0":Landroid/net/CaptivePortalData;
    goto :goto_0

    .line 188
    .end local v1    # "_arg0":Landroid/net/CaptivePortalData;
    :cond_0
    const/4 v1, 0x0

    .line 190
    .restart local v1    # "_arg0":Landroid/net/CaptivePortalData;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V

    .line 191
    return v2

    .line 169
    .end local v1    # "_arg0":Landroid/net/CaptivePortalData;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    sget-object v1, Landroid/net/DataStallReportParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DataStallReportParcelable;

    .local v1, "_arg0":Landroid/net/DataStallReportParcelable;
    goto :goto_1

    .line 175
    .end local v1    # "_arg0":Landroid/net/DataStallReportParcelable;
    :cond_1
    const/4 v1, 0x0

    .line 177
    .restart local v1    # "_arg0":Landroid/net/DataStallReportParcelable;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V

    .line 178
    return v2

    .line 156
    .end local v1    # "_arg0":Landroid/net/DataStallReportParcelable;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    sget-object v1, Landroid/net/NetworkTestResultParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTestResultParcelable;

    .local v1, "_arg0":Landroid/net/NetworkTestResultParcelable;
    goto :goto_2

    .line 162
    .end local v1    # "_arg0":Landroid/net/NetworkTestResultParcelable;
    :cond_2
    const/4 v1, 0x0

    .line 164
    .restart local v1    # "_arg0":Landroid/net/NetworkTestResultParcelable;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V

    .line 165
    return v2

    .line 146
    .end local v1    # "_arg0":Landroid/net/NetworkTestResultParcelable;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 151
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyProbeStatusChanged(II)V

    .line 152
    return v2

    .line 140
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->hideProvisioningNotification()V

    .line 142
    return v2

    .line 130
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return v2

    .line 117
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    sget-object v1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/PrivateDnsConfigParcel;

    .local v1, "_arg0":Landroid/net/PrivateDnsConfigParcel;
    goto :goto_3

    .line 123
    .end local v1    # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :cond_3
    const/4 v1, 0x0

    .line 125
    .restart local v1    # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V

    .line 126
    return v2

    .line 107
    .end local v1    # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyNetworkTested(ILjava/lang/String;)V

    .line 113
    return v2

    .line 99
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;

    move-result-object v1

    .line 102
    .local v1, "_arg0":Landroid/net/INetworkMonitor;
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitorCallbacks$Stub;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 103
    return v2

    .line 94
    .end local v1    # "_arg0":Landroid/net/INetworkMonitor;
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v2

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
