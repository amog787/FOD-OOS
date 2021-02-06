.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$RawPortInfo;,
        Lcom/android/server/usb/UsbPortManager$PortInfo;,
        Lcom/android/server/usb/UsbPortManager$ServiceNotification;,
        Lcom/android/server/usb/UsbPortManager$DeathRecipient;,
        Lcom/android/server/usb/UsbPortManager$HALCallback;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final MSG_USB_CONTAMINANT_DETECTED:I = 0x3

.field private static final MSG_USB_CONTAMINANT_RECOVERED:I = 0x4

.field private static final PORT_INFO:Ljava/lang/String; = "port_info"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"

.field private static final USB_FILE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/connect_disable"

.field private static final USB_HAL_DEATH_COOKIE:I = 0x3e8

.field private static is_vbus_connected:Z

.field private static originPortInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConnected:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContaminantStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPortContaminatedNotificationId:I

.field private final mLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Landroid/hardware/usb/V1_0/IUsb;

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbPortManager;->originPortInfo:Ljava/util/ArrayList;

    .line 125
    nop

    .line 126
    const/4 v0, 0x1

    invoke-static {v0, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    sput v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 127
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    sput v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    .line 129
    nop

    .line 130
    invoke-static {v1, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 131
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/usb/UsbPortManager;->is_vbus_connected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    const-string v0, "Failed to register service start notification"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 143
    new-instance v2, Lcom/android/server/usb/UsbPortManager$HALCallback;

    invoke-direct {v2, v1, p0}, Lcom/android/server/usb/UsbPortManager$HALCallback;-><init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

    .line 162
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 171
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 176
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 180
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 1234
    new-instance v2, Lcom/android/server/usb/UsbPortManager$1;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    .line 191
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 193
    :try_start_0
    new-instance v2, Lcom/android/server/usb/UsbPortManager$ServiceNotification;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbPortManager$ServiceNotification;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    .line 195
    .local v2, "serviceNotification":Lcom/android/server/usb/UsbPortManager$ServiceNotification;
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v3

    const-string v4, "android.hardware.usb@1.0::IUsb"

    const-string v5, ""

    .line 196
    invoke-interface {v3, v4, v5, v2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v3

    .line 198
    .local v3, "ret":Z
    if-nez v3, :cond_0

    .line 199
    const/4 v4, 0x6

    invoke-static {v4, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "serviceNotification":Lcom/android/server/usb/UsbPortManager$ServiceNotification;
    .end local v3    # "ret":Z
    :cond_0
    nop

    .line 207
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbPortManager;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 208
    return-void

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbPortManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .line 112
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "x2"    # Ljava/lang/String;

    .line 112
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .line 112
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbPortManager;Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # I
    .param p7, "x7"    # Z
    .param p8, "x8"    # I
    .param p9, "x9"    # Z
    .param p10, "x10"    # Z
    .param p11, "x11"    # I
    .param p12, "x12"    # Z
    .param p13, "x13"    # I
    .param p14, "x14"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 112
    invoke-direct/range {p0 .. p14}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .line 112
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .line 112
    sget-object v0, Lcom/android/server/usb/UsbPortManager;->originPortInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 112
    sget-boolean v0, Lcom/android/server/usb/UsbPortManager;->is_vbus_connected:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 112
    sput-boolean p0, Lcom/android/server/usb/UsbPortManager;->is_vbus_connected:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .line 112
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbPortManager;Landroid/hardware/usb/V1_0/IUsb;)Landroid/hardware/usb/V1_0/IUsb;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Landroid/hardware/usb/V1_0/IUsb;

    .line 112
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/usb/UsbPortManager;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Landroid/app/NotificationManager;

    .line 112
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 22
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "supportedContaminantProtectionModes"    # I
    .param p4, "currentMode"    # I
    .param p5, "canChangeMode"    # Z
    .param p6, "currentPowerRole"    # I
    .param p7, "canChangePowerRole"    # Z
    .param p8, "currentDataRole"    # I
    .param p9, "canChangeDataRole"    # Z
    .param p10, "supportsEnableContaminantPresenceProtection"    # Z
    .param p11, "contaminantProtectionStatus"    # I
    .param p12, "supportsEnableContaminantPresenceDetection"    # Z
    .param p13, "contaminantDetectionStatus"    # I
    .param p14, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v1, p4

    move/from16 v15, p6

    move/from16 v14, p8

    move/from16 v13, p10

    move/from16 v12, p12

    move-object/from16 v11, p14

    and-int/lit8 v2, v9, 0x3

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eq v2, v3, :cond_1

    .line 996
    const/4 v2, 0x0

    .line 997
    .end local p5    # "canChangeMode":Z
    .local v2, "canChangeMode":Z
    if-eqz v1, :cond_0

    if-eq v1, v9, :cond_0

    .line 998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-static/range {p4 .. p4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 998
    invoke-static {v4, v11, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1001
    const/4 v1, 0x0

    move v10, v1

    move/from16 v20, v2

    .end local p4    # "currentMode":I
    .local v1, "currentMode":I
    goto :goto_0

    .line 1008
    .end local v1    # "currentMode":I
    .restart local p4    # "currentMode":I
    :cond_0
    move v10, v1

    move/from16 v20, v2

    goto :goto_0

    .line 995
    .end local v2    # "canChangeMode":Z
    .restart local p5    # "canChangeMode":Z
    :cond_1
    move/from16 v20, p5

    move v10, v1

    .line 1008
    .end local p4    # "currentMode":I
    .end local p5    # "canChangeMode":Z
    .local v10, "currentMode":I
    .local v20, "canChangeMode":Z
    :goto_0
    invoke-static {v15, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    .line 1010
    .local v1, "supportedRoleCombinations":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v10, :cond_5

    if-eqz v15, :cond_5

    if-eqz v14, :cond_5

    .line 1011
    if-eqz p7, :cond_2

    if-eqz p9, :cond_2

    .line 1014
    sget v5, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int/2addr v5, v6

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    or-int/2addr v5, v6

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v5, v6

    or-int/2addr v1, v5

    move/from16 v21, v1

    goto :goto_1

    .line 1017
    :cond_2
    if-eqz p7, :cond_3

    .line 1020
    invoke-static {v2, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v5

    or-int/2addr v1, v5

    .line 1022
    invoke-static {v3, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v5

    or-int/2addr v1, v5

    move/from16 v21, v1

    goto :goto_1

    .line 1024
    :cond_3
    if-eqz p9, :cond_4

    .line 1027
    invoke-static {v15, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v5

    or-int/2addr v1, v5

    .line 1029
    invoke-static {v15, v3}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v5

    or-int/2addr v1, v5

    move/from16 v21, v1

    goto :goto_1

    .line 1031
    :cond_4
    if-eqz v20, :cond_5

    .line 1035
    sget v5, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v5, v6

    or-int/2addr v1, v5

    move/from16 v21, v1

    goto :goto_1

    .line 1040
    :cond_5
    move/from16 v21, v1

    .end local v1    # "supportedRoleCombinations":I
    .local v21, "supportedRoleCombinations":I
    :goto_1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 1041
    .local v7, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v7, :cond_6

    .line 1042
    new-instance v16, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbManager;

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p10

    move-object v15, v7

    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .local v15, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move/from16 v7, p12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    move-object/from16 v7, v16

    .line 1046
    .end local v15    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move v1, v10

    .end local v10    # "currentMode":I
    .local v1, "currentMode":I
    move-object v10, v7

    move-object v5, v11

    move v11, v1

    move v6, v12

    move/from16 v12, v20

    move v2, v13

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, v21

    move/from16 v18, p11

    move/from16 v19, p13

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIII)Z

    .line 1051
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v7

    move v7, v2

    goto/16 :goto_3

    .line 1054
    .end local v1    # "currentMode":I
    .restart local v10    # "currentMode":I
    :cond_6
    move-object v15, v7

    move v1, v10

    move-object v5, v11

    move v6, v12

    move v7, v13

    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v10    # "currentMode":I
    .restart local v1    # "currentMode":I
    .restart local v15    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    iget-object v10, v15, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v10

    const-string v11, ", current="

    if-eq v9, v10, :cond_7

    .line 1055
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v15, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1058
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v12

    .line 1057
    invoke-static {v12}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1055
    invoke-static {v4, v5, v10}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1062
    :cond_7
    iget-object v10, v15, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1063
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v10

    if-eq v7, v10, :cond_8

    .line 1064
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring inconsistent supportsEnableContaminantPresenceProtectionUSB port driver (should be immutable): previous="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v15, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1068
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1064
    invoke-static {v4, v5, v10}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1072
    :cond_8
    iget-object v10, v15, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1073
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v10

    if-eq v6, v10, :cond_9

    .line 1074
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring inconsistent supportsEnableContaminantPresenceDetection USB port driver (should be immutable): previous="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v15, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1078
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1074
    invoke-static {v4, v5, v10}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1083
    :cond_9
    move-object v10, v15

    move v11, v1

    move/from16 v12, v20

    move/from16 v13, p6

    move/from16 v14, p7

    move-object v4, v15

    .end local v15    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .local v4, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, v21

    move/from16 v18, p11

    move/from16 v19, p13

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIII)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1088
    iput v2, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_2

    .line 1090
    :cond_a
    iput v3, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 1094
    :goto_2
    if-ne v1, v3, :cond_b

    if-nez p7, :cond_b

    if-nez p9, :cond_b

    .line 1095
    iput v3, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 1097
    :cond_b
    :goto_3
    return-void
.end method

.method private connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 903
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_0

    .line 905
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 909
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/hardware/usb/V1_0/IUsb;->getService()Landroid/hardware/usb/V1_0/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 910
    new-instance v2, Lcom/android/server/usb/UsbPortManager$DeathRecipient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/UsbPortManager$DeathRecipient;-><init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/V1_0/IUsb;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 911
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

    invoke-interface {v1, v2}, Landroid/hardware/usb/V1_0/IUsb;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 912
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v1}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 916
    :catch_0
    move-exception v1

    .line 917
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "connectToProxy: usb hal service not responding"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 913
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 914
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "connectToProxy: usb hal service not found. Did the service fail to start?"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 918
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    nop

    .line 919
    :goto_1
    monitor-exit v0

    .line 920
    return-void

    .line 919
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static convertContaminantDetectionStatusToProto(I)I
    .locals 2
    .param p0, "contaminantDetectionStatus"    # I

    .line 1125
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 1135
    const/4 v0, 0x0

    return v0

    .line 1133
    :cond_0
    const/4 v0, 0x4

    return v0

    .line 1131
    :cond_1
    return v0

    .line 1129
    :cond_2
    return v1

    .line 1127
    :cond_3
    return v0
.end method

.method private enableContaminantDetectionIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1154
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    return-void

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1159
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1160
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1165
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1167
    :cond_1
    return-void
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1107
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1108
    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetectionIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1113
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1114
    return-void
.end method

.method private handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 1101
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logToStatsd(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1102
    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->updateContaminantNotification()V

    .line 1103
    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1118
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1119
    return-void
.end method

.method private static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 1221
    const-string v0, "UsbPortManager"

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 1222
    if-eqz p1, :cond_0

    .line 1223
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    :cond_0
    return-void
.end method

.method private static logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1228
    const-string v0, "UsbPortManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    if-eqz p0, :cond_0

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1232
    :cond_0
    return-void
.end method

.method private logToStatsd(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1171
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/16 v1, 0x92

    const/4 v2, 0x0

    const/16 v3, 0x46

    if-nez v0, :cond_4

    .line 1172
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1178
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1175
    invoke-static {v3, v2, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1185
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1187
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1188
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 1189
    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->convertContaminantDetectionStatusToProto(I)I

    move-result v2

    .line 1187
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 1192
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    :cond_3
    return-void

    .line 1197
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1198
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1199
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eq v0, v4, :cond_7

    .line 1200
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    nop

    .line 1202
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1203
    const/4 v2, 0x1

    goto :goto_0

    .line 1204
    :cond_6
    nop

    :goto_0
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1205
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1201
    invoke-static {v3, v2, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 1208
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1209
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1210
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-eq v0, v2, :cond_9

    .line 1211
    :cond_8
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1212
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1211
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1214
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1216
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    .line 1215
    invoke-static {v2}, Lcom/android/server/usb/UsbPortManager;->convertContaminantDetectionStatusToProto(I)I

    move-result v2

    .line 1213
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 1218
    :cond_9
    return-void
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 1140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1144
    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-static {v1}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v1

    const-string v2, "port"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1145
    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string v2, "portStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1149
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1151
    return-void
.end method

.method private updateContaminantNotification()V
    .locals 18

    .line 224
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 225
    .local v1, "currentPortInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 226
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v3, 0x2

    .line 230
    .local v3, "contaminantStatus":I
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 231
    .local v5, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    iget-object v8, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v3

    .line 232
    if-eq v3, v6, :cond_1

    if-ne v3, v7, :cond_0

    goto :goto_1

    .line 237
    .end local v5    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_0
    goto :goto_0

    .line 234
    .restart local v5    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_1
    :goto_1
    move-object v1, v5

    .line 235
    nop

    .line 242
    .end local v5    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2
    const v4, 0x106001c

    const/16 v5, 0x35

    const/16 v8, 0x34

    const/4 v9, 0x0

    if-ne v3, v6, :cond_4

    iget v10, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-eq v10, v8, :cond_4

    .line 245
    if-ne v10, v5, :cond_3

    .line 247
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v9, v10, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 251
    :cond_3
    iput v8, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 252
    const v5, 0x10407fc

    .line 253
    .local v5, "titleRes":I
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 254
    .local v6, "title":Ljava/lang/CharSequence;
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 255
    .local v8, "channel":Ljava/lang/String;
    const v10, 0x10407fb

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 258
    .local v10, "message":Ljava/lang/CharSequence;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    const v12, 0x1040262

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 262
    iget-object v12, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-static {v12}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v12

    const-string v13, "port"

    invoke-virtual {v11, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v14, v11

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 267
    .local v12, "pi":Landroid/app/PendingIntent;
    new-instance v13, Landroid/app/Notification$Builder;

    iget-object v14, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 269
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v14, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 273
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 274
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 275
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 276
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v7, 0x108008a

    .line 277
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 279
    invoke-virtual {v7, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 278
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 280
    .local v4, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 281
    .local v7, "notification":Landroid/app/Notification;
    iget-object v13, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v14, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v9, v14, v7, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "titleRes":I
    .end local v6    # "title":Ljava/lang/CharSequence;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "channel":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/CharSequence;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "pi":Landroid/app/PendingIntent;
    goto :goto_2

    .line 285
    :cond_4
    if-eq v3, v6, :cond_5

    iget v6, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-ne v6, v8, :cond_5

    .line 288
    iget-object v8, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v6, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 290
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 294
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 295
    iput v5, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 297
    const v5, 0x10407fe

    .line 298
    .restart local v5    # "titleRes":I
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 299
    .restart local v6    # "title":Ljava/lang/CharSequence;
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 300
    .restart local v8    # "channel":Ljava/lang/String;
    const v10, 0x10407fd

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 303
    .restart local v10    # "message":Ljava/lang/CharSequence;
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x1080547

    .line 304
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 305
    invoke-virtual {v11, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {v12, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 309
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 310
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 311
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 313
    invoke-virtual {v7, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 312
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 314
    .restart local v4    # "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 315
    .restart local v7    # "notification":Landroid/app/Notification;
    iget-object v11, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v12, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v9, v12, v7, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 285
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "titleRes":I
    .end local v6    # "title":Ljava/lang/CharSequence;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "channel":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/CharSequence;
    :cond_5
    :goto_2
    nop

    .line 319
    :cond_6
    :goto_3
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .locals 20
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 927
    .local p2, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v13, 0x3

    if-lez v0, :cond_0

    .line 928
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iput v13, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move v0, v1

    goto :goto_0

    .line 932
    .end local v1    # "i":I
    :cond_0
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 933
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 934
    .local v12, "count":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_1
    if-ge v11, v12, :cond_1

    .line 935
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 936
    .local v10, "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    iget v3, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    iget v4, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    iget-boolean v5, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    iget v6, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    iget-boolean v7, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    iget v8, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    iget-boolean v9, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    iget-boolean v0, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    iget v13, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    move/from16 v17, v12

    .end local v12    # "count":I
    .local v17, "count":I
    iget-boolean v12, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    iget v14, v10, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v10

    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .local v19, "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    move/from16 v10, v18

    move/from16 v18, v11

    .end local v11    # "i":I
    .local v18, "i":I
    move v11, v13

    move v13, v14

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 934
    .end local v19    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    add-int/lit8 v11, v18, 0x1

    move/from16 v12, v17

    const/4 v13, 0x3

    .end local v18    # "i":I
    .restart local v11    # "i":I
    goto :goto_1

    .end local v17    # "count":I
    .restart local v12    # "count":I
    :cond_1
    move/from16 v18, v11

    move/from16 v17, v12

    .line 946
    .end local v11    # "i":I
    .end local v12    # "count":I
    goto :goto_3

    .line 947
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 948
    .local v14, "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    iget-object v1, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    iget v3, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    iget v4, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    iget-boolean v5, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    iget v6, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    iget-boolean v7, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    iget v8, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    iget-boolean v9, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    iget-boolean v10, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    iget v11, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    iget-boolean v12, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    iget v13, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    move-object/from16 v0, p0

    move-object/from16 v17, v14

    .end local v14    # "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .local v17, "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 957
    .end local v17    # "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_2

    .line 962
    :cond_3
    :goto_3
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .restart local v0    # "i":I
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    if-lez v0, :cond_7

    .line 963
    iget-object v0, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 964
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    iget v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    move-object/from16 v2, p1

    goto :goto_5

    .line 974
    :cond_4
    iget-object v2, v15, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 975
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 976
    move-object/from16 v2, p1

    invoke-direct {v15, v0, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_5

    .line 970
    :cond_5
    move-object/from16 v2, p1

    const/4 v4, 0x3

    invoke-direct {v15, v0, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 971
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 972
    goto :goto_5

    .line 966
    :cond_6
    move-object/from16 v2, p1

    const/4 v4, 0x3

    invoke-direct {v15, v0, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 967
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 968
    nop

    .line 979
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :goto_5
    move v0, v1

    goto :goto_4

    .line 962
    :cond_7
    move-object/from16 v2, p1

    .line 980
    .end local v1    # "i":I
    return-void
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 514
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    const-string v1, "Port with same name already exists.  Please remove it first."

    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 517
    monitor-exit v0

    return-void

    .line 520
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding simulated port: portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportedModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 525
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "canChangeMode"    # Z
    .param p4, "powerRole"    # I
    .param p5, "canChangePowerRole"    # Z
    .param p6, "dataRole"    # I
    .param p7, "canChangeDataRole"    # Z
    .param p8, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 531
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 533
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    if-nez v1, :cond_0

    .line 534
    const-string v2, "Cannot connect simulated port which does not exist."

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 535
    monitor-exit v0

    return-void

    .line 538
    :cond_0
    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    if-nez p6, :cond_1

    goto/16 :goto_0

    .line 544
    :cond_1
    iget v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    and-int/2addr v2, p2

    if-nez v2, :cond_2

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulated port does not support mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 546
    monitor-exit v0

    return-void

    .line 549
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", canChangeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", powerRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", canChangePowerRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dataRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", canChangeDataRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 556
    iput p2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 557
    iput-boolean p3, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 558
    iput p4, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 559
    iput-boolean p5, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 560
    iput p6, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 561
    iput-boolean p7, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 562
    const/4 v2, 0x0

    invoke-direct {p0, p8, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 563
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    monitor-exit v0

    .line 564
    return-void

    .line 539
    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    :cond_3
    :goto_0
    const-string v2, "Cannot connect simulated port in null mode, power role, or data role."

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 541
    monitor-exit v0

    return-void

    .line 563
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 588
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 590
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    if-nez v1, :cond_0

    .line 591
    const-string v2, "Cannot disconnect simulated port which does not exist."

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 592
    monitor-exit v0

    return-void

    .line 595
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 597
    iput-boolean v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 598
    iput v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 599
    iput-boolean v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 600
    iput v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 601
    iput-boolean v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 602
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 603
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 8
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 634
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 636
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 637
    :try_start_0
    const-string v3, "is_simulation_active"

    const-wide v4, 0x10800000001L

    iget-object v6, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 638
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 637
    :goto_0
    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 640
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 641
    .local v4, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    const-string v5, "usb_ports"

    const-wide v6, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/usb/UsbPortManager$PortInfo;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 642
    .end local v4    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    goto :goto_1

    .line 643
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 646
    return-void

    .line 643
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 347
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 348
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v0, :cond_1

    .line 349
    if-eqz p3, :cond_0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such USB port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void

    .line 355
    :cond_1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v1

    if-nez v1, :cond_2

    .line 356
    return-void

    .line 359
    :cond_2
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-ne v2, v1, :cond_5

    :cond_3
    if-nez p2, :cond_4

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 361
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-eq v2, v1, :cond_5

    :cond_4
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 363
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    if-nez v1, :cond_6

    .line 365
    :cond_5
    return-void

    .line 370
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-static {v1}, Landroid/hardware/usb/V1_2/IUsb;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;

    move-result-object v1

    .line 371
    .local v1, "proxy":Landroid/hardware/usb/V1_2/IUsb;
    invoke-interface {v1, p1, p2}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "proxy":Landroid/hardware/usb/V1_2/IUsb;
    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "Method only applicable to V1.2 or above implementation"

    invoke-static {p3, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 372
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 373
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to set contaminant detection"

    invoke-static {p3, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 376
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 377
    :goto_1
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 3
    .param p1, "portId"    # Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 335
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 336
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 324
    .local v1, "count":I
    new-array v2, v1, [Landroid/hardware/usb/UsbPort;

    .line 325
    .local v2, "result":[Landroid/hardware/usb/UsbPort;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 326
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v4, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v4, v2, v3

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 329
    .end local v1    # "count":I
    .end local v2    # "result":[Landroid/hardware/usb/UsbPort;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$sendPortChangedBroadcastLocked$0$UsbPortManager(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1149
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 607
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 609
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 610
    const-string v2, "Cannot remove simulated port which does not exist."

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 611
    monitor-exit v0

    return-void

    .line 614
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 616
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 617
    .end local v1    # "index":I
    monitor-exit v0

    .line 618
    return-void

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 621
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    const-string v1, "Removing all simulated ports and ending simulation."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 625
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 627
    :cond_0
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 20
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "newDataRole"    # I
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 381
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    iget-object v6, v1, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 382
    :try_start_0
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    move-object v7, v0

    .line 383
    .local v7, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v7, :cond_1

    .line 384
    if-eqz v5, :cond_0

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such USB port: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    :cond_0
    monitor-exit v6

    return-void

    .line 391
    :cond_1
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    const/4 v8, 0x6

    if-nez v0, :cond_2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newPowerRole="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newDataRole="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v8, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 396
    monitor-exit v6

    return-void

    .line 400
    :cond_2
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    move v9, v0

    .line 401
    .local v9, "currentDataRole":I
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    move v10, v0

    .line 402
    .local v10, "currentPowerRole":I
    if-ne v9, v4, :cond_4

    if-ne v10, v3, :cond_4

    .line 403
    if-eqz v5, :cond_3

    .line 404
    const-string v0, "No change."

    invoke-virtual {v5, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 406
    :cond_3
    monitor-exit v6

    return-void

    .line 415
    :cond_4
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    move v11, v0

    .line 416
    .local v11, "canChangeMode":Z
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    move v12, v0

    .line 417
    .local v12, "canChangePowerRole":Z
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    move v13, v0

    .line 418
    .local v13, "canChangeDataRole":Z
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v0

    move v14, v0

    .line 420
    .local v14, "currentMode":I
    const/4 v0, 0x2

    const/4 v15, 0x1

    if-nez v12, :cond_5

    if-ne v10, v3, :cond_6

    :cond_5
    if-nez v13, :cond_9

    if-eq v9, v4, :cond_9

    .line 422
    :cond_6
    if-eqz v11, :cond_7

    if-ne v3, v15, :cond_7

    if-ne v4, v15, :cond_7

    .line 424
    const/16 v16, 0x2

    move/from16 v17, v16

    .local v16, "newMode":I
    goto :goto_0

    .line 425
    .end local v16    # "newMode":I
    :cond_7
    if-eqz v11, :cond_8

    if-ne v3, v0, :cond_8

    if-ne v4, v0, :cond_8

    .line 427
    const/16 v16, 0x1

    move/from16 v17, v16

    .restart local v16    # "newMode":I
    goto :goto_0

    .line 429
    .end local v16    # "newMode":I
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", newPowerRole="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", newDataRole="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v8, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 433
    monitor-exit v6

    return-void

    .line 436
    :cond_9
    move/from16 v16, v14

    move/from16 v17, v16

    .line 440
    .local v17, "newMode":I
    :goto_0
    const/4 v15, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting USB port mode and role: portId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", currentMode="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {v14}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", currentPowerRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", currentDataRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-static {v9}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newMode="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static/range {v17 .. v17}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newPowerRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newDataRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v15, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 448
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-object v8, v0

    .line 449
    .local v8, "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    if-eqz v8, :cond_a

    .line 451
    move/from16 v15, v17

    .end local v17    # "newMode":I
    .local v15, "newMode":I
    iput v15, v8, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 452
    iput v3, v8, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 453
    iput v4, v8, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 454
    const/4 v0, 0x0

    invoke-direct {v1, v5, v0}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 455
    .end local v15    # "newMode":I
    .restart local v17    # "newMode":I
    :cond_a
    move/from16 v15, v17

    .end local v17    # "newMode":I
    .restart local v15    # "newMode":I
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v0, :cond_d

    .line 456
    if-eq v14, v15, :cond_b

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .local v17, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    const-string v7, "Trying to set the USB port mode: portId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newMode="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {v15}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    const/4 v7, 0x6

    invoke-static {v7, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 467
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    move-object v7, v0

    .line 468
    .local v7, "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v0, 0x2

    iput v0, v7, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 469
    iput v15, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :try_start_1
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v0, v2, v7}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    move-object/from16 v18, v8

    move/from16 v19, v11

    goto :goto_1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    move-object/from16 v18, v8

    .end local v8    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .local v18, "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v11

    .end local v11    # "canChangeMode":Z
    .local v19, "canChangeMode":Z
    const-string v11, "Failed to set the USB port mode: portId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newMode="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 475
    invoke-static {v11}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 473
    invoke-static {v5, v8, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 477
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    :goto_1
    goto/16 :goto_3

    .line 479
    .end local v17    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v18    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .end local v19    # "canChangeMode":Z
    .local v7, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v8    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .restart local v11    # "canChangeMode":Z
    :cond_b
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v11

    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v8    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .end local v11    # "canChangeMode":Z
    .restart local v17    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v18    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .restart local v19    # "canChangeMode":Z
    if-eq v10, v3, :cond_c

    .line 480
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    move-object v7, v0

    .line 481
    .local v7, "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v0, 0x1

    iput v0, v7, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 482
    iput v3, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    :try_start_3
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v0, v2, v7}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    goto :goto_2

    .line 485
    :catch_1
    move-exception v0

    .line 486
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set the USB port power role: portId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newPowerRole="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 489
    invoke-static {v11}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 486
    invoke-static {v5, v8, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 491
    monitor-exit v6

    return-void

    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    :cond_c
    :goto_2
    if-eq v9, v4, :cond_e

    .line 495
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    move-object v7, v0

    .line 496
    .restart local v7    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v0, 0x0

    iput v0, v7, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 497
    iput v4, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 499
    :try_start_5
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v0, v2, v7}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 506
    goto :goto_3

    .line 500
    :catch_2
    move-exception v0

    .line 501
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set the USB port data role: portId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newDataRole="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 503
    invoke-static {v11}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 501
    invoke-static {v5, v8, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v17    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v18    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .end local v19    # "canChangeMode":Z
    .local v7, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v8    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .restart local v11    # "canChangeMode":Z
    :cond_d
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v11

    .line 510
    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v8    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .end local v9    # "currentDataRole":I
    .end local v10    # "currentPowerRole":I
    .end local v11    # "canChangeMode":Z
    .end local v12    # "canChangePowerRole":Z
    .end local v13    # "canChangeDataRole":Z
    .end local v14    # "currentMode":I
    .end local v15    # "newMode":I
    :cond_e
    :goto_3
    monitor-exit v6

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "detected"    # Z
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 571
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 573
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    if-nez v1, :cond_0

    .line 574
    const-string v2, "Simulated port not found."

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 575
    monitor-exit v0

    return-void

    .line 578
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulating wet port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", wet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 580
    if-eqz p2, :cond_1

    .line 581
    const/4 v2, 0x3

    goto :goto_0

    .line 582
    :cond_1
    const/4 v2, 0x2

    :goto_0
    iput v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    .line 583
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 584
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 3

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z

    .line 212
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    const-string v2, "ServiceStart: Failed to query port status"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method
