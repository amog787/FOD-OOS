.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsbHandlerHal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;
    }
.end annotation


# static fields
.field private static final ENUMERATION_TIME_OUT_MS:I = 0x7d0

.field protected static final GADGET_HAL_FQ_NAME:Ljava/lang/String; = "android.hardware.usb.gadget@1.0::IUsbGadget"

.field private static final SET_FUNCTIONS_LEEWAY_MS:I = 0x1f4

.field private static final SET_FUNCTIONS_TIMEOUT_MS:I = 0xbb8

.field private static final USB_GADGET_HAL_DEATH_COOKIE:I = 0x7d0


# instance fields
.field private mCurrentRequest:I

.field protected mCurrentUsbFunctionsRequested:Z

.field private mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

.field private final mGadgetProxyLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deviceManager"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p4, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p5, "permissionManager"    # Lcom/android/server/usb/UsbPermissionManager;

    .line 1788
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    .line 1744
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    .line 1754
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 1790
    :try_start_0
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    .line 1792
    .local v1, "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string v3, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string v4, ""

    .line 1793
    invoke-interface {v2, v3, v4, v1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v2

    .line 1794
    .local v2, "ret":Z
    if-nez v2, :cond_0

    .line 1795
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to register usb gadget service start notification"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    return-void

    .line 1799
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1801
    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v7, 0x7d0

    invoke-interface {v5, v6, v7, v8}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1803
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 1804
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 1805
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {v4, v5}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 1806
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1807
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1808
    .local v0, "state":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateState(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "state":Ljava/lang/String;
    .end local v1    # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .end local v2    # "ret":Z
    goto :goto_0

    .line 1806
    .restart local v1    # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .restart local v2    # "ret":Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "deviceManager":Lcom/android/server/usb/UsbDeviceManager;
    .end local p4    # "alsaManager":Lcom/android/server/usb/UsbAlsaManager;
    .end local p5    # "permissionManager":Lcom/android/server/usb/UsbPermissionManager;
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1813
    .end local v1    # "serviceNotification":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;
    .end local v2    # "ret":Z
    .restart local p0    # "this":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
    .restart local p1    # "looper":Landroid/os/Looper;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "deviceManager":Lcom/android/server/usb/UsbDeviceManager;
    .restart local p4    # "alsaManager":Lcom/android/server/usb/UsbAlsaManager;
    .restart local p5    # "permissionManager":Lcom/android/server/usb/UsbPermissionManager;
    :catch_0
    move-exception v0

    .line 1814
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error initializing UsbHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1811
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1812
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb Gadget hal not responding"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1809
    :catch_2
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb gadget hal not found"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1815
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    nop

    .line 1816
    :goto_1
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    .line 1736
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
    .param p1, "x1"    # Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1736
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    .line 1736
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    return v0
.end method

.method private setUsbConfig(JZ)V
    .locals 11
    .param p1, "config"    # J
    .param p3, "chargingFunctions"    # Z

    .line 1964
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 1969
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 1970
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    .line 1972
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1973
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v3, :cond_0

    .line 1974
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUsbConfig mGadgetProxy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1978
    :cond_0
    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1982
    :try_start_1
    const-class v3, Landroid/debug/AdbManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/debug/AdbManagerInternal;

    .line 1983
    invoke-virtual {v3, v4}, Landroid/debug/AdbManagerInternal;->startAdbdForTransport(B)V

    goto :goto_0

    .line 1988
    :cond_1
    const-class v3, Landroid/debug/AdbManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/debug/AdbManagerInternal;

    .line 1989
    invoke-virtual {v3, v4}, Landroid/debug/AdbManagerInternal;->stopAdbdForTransport(B)V

    .line 1991
    :goto_0
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    move-object v5, v3

    move-object v6, p0

    move-wide v8, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V

    move-object v8, v3

    .line 1993
    .local v8, "usbGadgetCallback":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    const-wide/16 v9, 0x9c4

    move-wide v6, p1

    invoke-interface/range {v5 .. v10}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 1995
    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v1, p3, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V

    .line 1997
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mConnected:Z

    if-eqz v1, :cond_2

    .line 1999
    const-wide/16 v3, 0x1388

    invoke-virtual {p0, v0, p3, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V

    .line 2002
    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeout message queued"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2005
    .end local v8    # "usbGadgetCallback":Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;
    goto :goto_1

    .line 2003
    :catch_0
    move-exception v0

    .line 2004
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Remoteexception while calling setCurrentUsbFunctions"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2006
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v2

    .line 2007
    return-void

    .line 2006
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1846
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1915
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    .line 1898
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1899
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v1, :cond_0

    .line 1900
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reset Usb Gadget mGadgetProxy is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 1905
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1907
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object v1

    .line 1908
    .local v1, "gadgetProxy":Landroid/hardware/usb/gadget/V1_1/IUsbGadget;
    invoke-interface {v1}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1911
    .end local v1    # "gadgetProxy":Landroid/hardware/usb/gadget/V1_1/IUsbGadget;
    goto :goto_0

    .line 1909
    :catch_0
    move-exception v1

    .line 1910
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reset Usb Gadget failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 1913
    goto/16 :goto_4

    .line 1912
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1881
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v0, v2

    .line 1882
    .local v0, "preexisting":Z
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1884
    :try_start_3
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 1885
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v5, 0x7d0

    invoke-interface {v2, v4, v5, v6}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1887
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 1888
    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1894
    :cond_2
    goto :goto_2

    .line 1895
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 1892
    :catch_1
    move-exception v1

    .line 1893
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Usb Gadget hal not responding"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1890
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 1891
    .local v1, "e":Ljava/util/NoSuchElementException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Usb gadget hal not found"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1894
    nop

    .line 1895
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    monitor-exit v3

    .line 1896
    goto/16 :goto_4

    .line 1895
    :goto_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 1875
    .end local v0    # "preexisting":Z
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_5

    .line 1877
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_4

    .line 1858
    :pswitch_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "prcessing MSG_GET_CURRENT_USB_FUNCTIONS"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsReceived:Z

    .line 1861
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-eqz v0, :cond_4

    .line 1862
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "updating mCurrentFunctions"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 1865
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentFunctions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "applied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    .line 1869
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->finishBoot()V

    .line 1870
    goto :goto_4

    .line 1851
    :pswitch_4
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Set functions timed out! no reply from usb hal"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_5

    .line 1854
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_4

    .line 1848
    :pswitch_5
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    .line 1849
    nop

    .line 1917
    :cond_5
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setEnabledFunctions(JZ)V
    .locals 3
    .param p1, "functions"    # J
    .param p3, "forceRestart"    # Z

    .line 2012
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabledFunctions functions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", forceRestart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_2

    .line 2018
    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting USB config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    .line 2020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    .line 2022
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 2024
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 2025
    .local v0, "chargingFunctions":Z
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->getAppliedFunctions(J)J

    move-result-wide p1

    .line 2028
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setUsbConfig(JZ)V

    .line 2030
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mBootCompleted:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2032
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateUsbStateBroadcastIfNeeded(J)V

    .line 2035
    .end local v0    # "chargingFunctions":Z
    :cond_2
    return-void
.end method
