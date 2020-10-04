.class public interface abstract Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
.super Ljava/lang/Object;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.tetheroffload.control@1.0::IOffloadControl"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
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
    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 23
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-eqz v3, :cond_1

    .line 24
    move-object v0, v2

    check-cast v0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    return-object v0

    .line 27
    :cond_1
    new-instance v3, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;

    invoke-direct {v3, p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 30
    .local v3, "proxy":Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    :try_start_0
    invoke-interface {v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->interfaceChain()Ljava/util/ArrayList;

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

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getService(Ljava/lang/String;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getService(Ljava/lang/String;Z)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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

.method public abstract getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
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

.method public abstract initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
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

.method public abstract removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
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

.method public abstract setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
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
