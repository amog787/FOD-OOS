.class public Lcom/android/internal/net/IOemNetd$Default;
.super Ljava/lang/Object;
.source "IOemNetd.java"

# interfaces
.implements Lcom/android/internal/net/IOemNetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IOemNetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroySockets(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "socketType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public onePlusClearUidTos(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "tos"    # I
    .param p3, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public onePlusSetUidTos(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "tos"    # I
    .param p3, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public opExecuteIPtableCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dstPort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public setOPSlaDisable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public setOPSlaEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public setOPSlaIfaceDown(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "netowrkType"    # Ljava/lang/String;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public setOPSlaIfaceUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "netowrkType"    # Ljava/lang/String;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "ipAddr"    # Ljava/lang/String;
    .param p4, "ipMask"    # Ljava/lang/String;
    .param p5, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public setSoftapSuspend(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public setTcpTimestamps(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method
