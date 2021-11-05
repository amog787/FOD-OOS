.class public interface abstract Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
.super Ljava/lang/Object;
.source "IOneplusParam.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;,
        Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Proxy;,
        Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;,
        Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamIntCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.oneplus.hardware.param@1.0::IOneplusParam"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 16
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 17
    return-object v0

    .line 20
    :cond_0
    nop

    .line 21
    const-string v1, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 23
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    if-eqz v3, :cond_1

    .line 24
    move-object v0, v2

    check-cast v0, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    return-object v0

    .line 27
    :cond_1
    new-instance v3, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Proxy;

    invoke-direct {v3, p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 30
    .local v3, "proxy":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    :try_start_0
    invoke-interface {v3}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->interfaceChain()Ljava/util/ArrayList;

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

    .line 31
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 32
    return-object v3

    .line 34
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 36
    :cond_3
    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    .line 38
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const-string v0, "default"

    invoke-static {v0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService(Ljava/lang/String;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService(Ljava/lang/String;Z)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

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

.method public abstract getParamBuf(ILvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getParamInt(ILvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamIntCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getParamIntSYNC(I)I
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

.method public abstract ping()V
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

.method public abstract setParamBuf(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setParamInt(II)Z
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
