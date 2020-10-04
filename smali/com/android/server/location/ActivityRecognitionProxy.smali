.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mIsSupported:Z

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityRecognitionHardwareIsSupported"    # Z
    .param p3, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNameResId"    # I

    .line 76
    move-object v9, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    move v10, p2

    iput-boolean v10, v9, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    .line 78
    move-object/from16 v11, p3

    iput-object v11, v9, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 80
    new-instance v12, Lcom/android/server/location/ActivityRecognitionProxy$1;

    .line 87
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v3, "ActivityRecognitionProxy"

    const-string v4, "com.android.location.service.ActivityRecognitionProvider"

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    iput-object v12, v9, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ActivityRecognitionProxy;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/location/ActivityRecognitionProxy;->initializeService(Landroid/os/IBinder;)V

    return-void
.end method

.method public static createAndBind(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityRecognitionHardwareIsSupported"    # Z
    .param p2, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNameResId"    # I

    .line 51
    new-instance v7, Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V

    .line 59
    .local v0, "activityRecognitionProxy":Lcom/android/server/location/ActivityRecognitionProxy;
    iget-object v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    return-object v0

    .line 62
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private initializeService(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 97
    const-string v0, "ActivityRecognitionProxy"

    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "descriptor":Ljava/lang/String;
    const-class v2, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    nop

    .line 102
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object v2

    .line 103
    .local v2, "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    iget-object v3, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {v2, v3}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V

    .line 106
    .end local v2    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :cond_0
    goto :goto_0

    :cond_1
    const-class v2, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    nop

    .line 109
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    move-result-object v2

    .line 110
    .local v2, "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    iget-boolean v3, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    iget-object v4, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {v2, v3, v4}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V

    .line 111
    .end local v2    # "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    goto :goto_0

    .line 112
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid descriptor found on connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "descriptor":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
