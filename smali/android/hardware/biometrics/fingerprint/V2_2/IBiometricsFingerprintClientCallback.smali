.class public interface abstract Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
.super Ljava/lang/Object;
.source "IBiometricsFingerprintClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;,
        Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 17
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 18
    return-object v0

    .line 21
    :cond_0
    nop

    .line 22
    const-string v1, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 24
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    if-eqz v3, :cond_1

    .line 25
    move-object v0, v2

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    return-object v0

    .line 28
    :cond_1
    new-instance v3, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Proxy;

    invoke-direct {v3, p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 31
    .local v3, "proxy":Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
    :try_start_0
    invoke-interface {v3}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;->interfaceChain()Ljava/util/ArrayList;

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

    .line 32
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 33
    return-object v3

    .line 35
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 37
    :cond_3
    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    .line 39
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 46
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;->getService(Ljava/lang/String;)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const-string v0, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const-string v0, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;->getService(Ljava/lang/String;Z)Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

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

.method public abstract onAcquired_2_2(JII)V
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

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
