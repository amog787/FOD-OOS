.class public interface abstract Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
.super Ljava/lang/Object;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;,
        Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;,
        Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;,
        Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;,
        Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;,
        Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.broadcastradio@2.0::IBroadcastRadio"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 18
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 19
    return-object v0

    .line 22
    :cond_0
    nop

    .line 23
    const-string v1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 25
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    if-eqz v3, :cond_1

    .line 26
    move-object v0, v2

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    return-object v0

    .line 29
    :cond_1
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    invoke-direct {v3, p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 32
    .local v3, "proxy":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    :try_start_0
    invoke-interface {v3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 33
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 34
    return-object v3

    .line 36
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 38
    :cond_3
    goto :goto_1

    .line 37
    :catch_0
    move-exception v1

    .line 40
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 47
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImage(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;",
            "Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
