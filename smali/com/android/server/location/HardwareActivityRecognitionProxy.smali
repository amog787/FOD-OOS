.class public Lcom/android/server/location/HardwareActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "HardwareActivityRecognitionProxy.java"


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.ActivityRecognitionProvider"

.field private static final TAG:Ljava/lang/String; = "ARProxy"


# instance fields
.field private final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mIsSupported:Z

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mIsSupported:Z

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-static {p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 69
    :goto_0
    new-instance v0, Lcom/android/server/ServiceWatcher;

    .line 70
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/android/server/location/-$$Lambda$HardwareActivityRecognitionProxy$Z7jbekKm-LTVAz47zPN0h1VYfjo;

    invoke-direct {v5, p0}, Lcom/android/server/location/-$$Lambda$HardwareActivityRecognitionProxy$Z7jbekKm-LTVAz47zPN0h1VYfjo;-><init>(Lcom/android/server/location/HardwareActivityRecognitionProxy;)V

    const/4 v6, 0x0

    const v7, 0x111006d

    const v8, 0x10401cd

    const-string v4, "com.android.location.service.ActivityRecognitionProvider"

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/ServiceWatcher$BinderRunner;Ljava/lang/Runnable;II)V

    iput-object v0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 76
    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/HardwareActivityRecognitionProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/server/location/HardwareActivityRecognitionProxy;

    invoke-direct {v0, p0}, Lcom/android/server/location/HardwareActivityRecognitionProxy;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "arProxy":Lcom/android/server/location/HardwareActivityRecognitionProxy;
    invoke-direct {v0}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->register()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    return-object v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic lambda$Z7jbekKm-LTVAz47zPN0h1VYfjo(Lcom/android/server/location/HardwareActivityRecognitionProxy;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->onBind(Landroid/os/IBinder;)V

    return-void
.end method

.method private onBind(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "descriptor":Ljava/lang/String;
    const-class v1, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    nop

    .line 87
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object v1

    .line 88
    .local v1, "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    iget-object v2, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v1, v2}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V

    .line 91
    .end local v1    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :cond_0
    goto :goto_0

    :cond_1
    const-class v1, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    nop

    .line 93
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    move-result-object v1

    .line 94
    .local v1, "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    iget-boolean v2, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mIsSupported:Z

    iget-object v3, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {v1, v2, v3}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V

    .line 95
    .end local v1    # "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    goto :goto_0

    .line 96
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ARProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void
.end method

.method private register()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->register()Z

    move-result v0

    return v0
.end method
