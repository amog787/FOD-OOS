.class final Lcom/android/server/hdmi/HdmiMhlControllerStub;
.super Ljava/lang/Object;
.source "HdmiMhlControllerStub.java"


# static fields
.field private static final EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

.field private static final INVALID_DEVICE_ROLES:I

.field private static final INVALID_MHL_VERSION:I

.field private static final NO_SUPPORTED_FEATURES:I

.field private static final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/hdmi/HdmiPortInfo;

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .locals 1
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 48
    new-instance v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0
.end method


# virtual methods
.method addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 1
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method clearAllLocalDevices()V
    .locals 0

    .line 96
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 140
    return-void
.end method

.method getAllLocalDevices()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    return-object v0
.end method

.method getEcbusDeviceRoles(I)I
    .locals 1
    .param p1, "portId"    # I

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 1
    .param p1, "portId"    # I

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 1
    .param p1, "deviceId"    # I

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method getMhlVersion(I)I
    .locals 1
    .param p1, "portId"    # I

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method getPeerMhlVersion(I)I
    .locals 1
    .param p1, "portId"    # I

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method getSupportedFeatures(I)I
    .locals 1
    .param p1, "portId"    # I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method isReady()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 1
    .param p1, "portId"    # I

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method sendVendorCommand(III[B)V
    .locals 0
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .line 99
    return-void
.end method

.method setOption(II)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "value"    # I

    .line 102
    return-void
.end method
