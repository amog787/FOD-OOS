.class final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;,
        Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:[B

.field private static final MAX_CEC_MESSAGE_HISTORY:I = 0xc8

.field private static final NUM_LOGICAL_ADDRESS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HdmiCecController"


# instance fields
.field private mControlHandler:Landroid/os/Handler;

.field private mIoHandler:Landroid/os/Handler;

.field private final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNativePtr:J

.field private final mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

.field private final mNeverAssignLogicalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSystemAudioAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "nativeWrapper"    # Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    .line 91
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 128
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 129
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 130
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v0, "ro.hdmi.property_hdmi_cec_never_assign_logical_addresses"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNeverAssignLogicalAddresses:Ljava/util/List;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(JII[B)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [B

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeAddLogicalAddress(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeClearLogicalAddress(J)V

    return-void
.end method

.method static synthetic access$1300(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPhysicalAddress(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVersion(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVendorId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(J)[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 1
    .param p0, "x0"    # J

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(JIZ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Z

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetOption(JIZ)V

    return-void
.end method

.method static synthetic access$1800(JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetLanguage(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(JIZ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Z

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->nativeEnableAudioReturnChannel(JIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method

.method static synthetic access$2000(JI)Z
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeIsConnected(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p5, "x5"    # Ljava/util/List;

    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(I[B)[B
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # [B

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/hdmi/HdmiCecController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;

    .line 58
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;

    .line 58
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # Landroid/os/MessageQueue;

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide v0

    return-wide v0
.end method

.method private addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 2
    .param p1, "isReceived"    # Z
    .param p2, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 675
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 676
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(Lcom/android/server/hdmi/HdmiCecController;ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 677
    .local v0, "record":Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 679
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 681
    :cond_0
    return-void
.end method

.method private assertRunOnIoThread()V
    .locals 2

    .line 537
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 540
    return-void

    .line 538
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on io thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertRunOnServiceThread()V
    .locals 2

    .line 543
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 546
    return-void

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildBody(I[B)[B
    .locals 4
    .param p0, "opcode"    # I
    .param p1, "params"    # [B

    .line 256
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 257
    .local v0, "body":[B
    int-to-byte v2, p0

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 258
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .locals 2
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 145
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>(Lcom/android/server/hdmi/HdmiCecController$1;)V

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    return-object v0
.end method

.method static createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)Lcom/android/server/hdmi/HdmiCecController;
    .locals 5
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "nativeWrapper"    # Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 153
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V

    .line 154
    .local v0, "controller":Lcom/android/server/hdmi/HdmiCecController;
    nop

    .line 155
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide v1

    .line 156
    .local v1, "nativePtr":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 158
    const/4 v3, 0x0

    return-object v3

    .line 161
    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->init(J)V

    .line 162
    return-object v0
.end method

.method private handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 11
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 207
    move v0, p2

    .line 210
    .local v0, "startAddress":I
    const/16 v1, 0xf

    const/16 v2, 0x10

    if-ne p2, v1, :cond_1

    .line 211
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 212
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 213
    move v0, v3

    .line 214
    goto :goto_1

    .line 211
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v3    # "i":I
    :cond_1
    :goto_1
    const/16 v3, 0xf

    .line 221
    .local v3, "logicalAddress":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v4, v2, :cond_5

    .line 222
    add-int v7, v0, v4

    rem-int/2addr v7, v2

    .line 223
    .local v7, "curAddress":I
    if-eq v7, v1, :cond_4

    .line 224
    invoke-static {v7}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v8

    if-ne p1, v8, :cond_4

    iget-object v8, p0, Lcom/android/server/hdmi/HdmiCecController;->mNeverAssignLogicalAddresses:Ljava/util/List;

    .line 225
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, "acked":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v5, :cond_3

    .line 228
    invoke-direct {p0, v7, v7, v6}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 229
    const/4 v8, 0x1

    .line 230
    goto :goto_4

    .line 227
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 235
    .end local v9    # "j":I
    :cond_3
    :goto_4
    if-nez v8, :cond_4

    .line 236
    move v3, v7

    .line 237
    goto :goto_5

    .line 221
    .end local v7    # "curAddress":I
    .end local v8    # "acked":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 242
    .end local v4    # "i":I
    :cond_5
    :goto_5
    move v1, v3

    .line 243
    .local v1, "assignedAddress":I
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 243
    const-string v4, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    invoke-static {v4, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    if-eqz p3, :cond_6

    .line 246
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {v2, p0, p3, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 253
    :cond_6
    return-void
.end method

.method private handleHotplug(IZ)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 668
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 669
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Hotplug event:[port:%d, connected:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    .line 671
    return-void
.end method

.method private handleIncomingCecCommand(II[B)V
    .locals 3
    .param p1, "srcAddress"    # I
    .param p2, "dstAddress"    # I
    .param p3, "body"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 656
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 657
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 658
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[R]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecController;->addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 660
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 661
    return-void
.end method

.method private init(J)V
    .locals 2
    .param p1, "nativePtr"    # J

    .line 166
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 168
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    .line 169
    return-void
.end method

.method private isAcceptableAddress(I)Z
    .locals 1
    .param p1, "address"    # I

    .line 574
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 575
    const/4 v0, 0x1

    return v0

    .line 577
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    move-result v0

    return v0
.end method

.method private isAllocatedLocalDeviceAddress(I)Z
    .locals 2
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 475
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAddressOf(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const/4 v1, 0x1

    return v1

    .line 476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeAddLogicalAddress(JI)I
.end method

.method private static native nativeClearLogicalAddress(J)V
.end method

.method private static native nativeEnableAudioReturnChannel(JIZ)V
.end method

.method private static native nativeGetPhysicalAddress(J)I
.end method

.method private static native nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method private static native nativeGetVendorId(J)I
.end method

.method private static native nativeGetVersion(J)I
.end method

.method private static native nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeIsConnected(JI)Z
.end method

.method private static native nativeSendCecCommand(JII[B)I
.end method

.method private static native nativeSetLanguage(JLjava/lang/String;)V
.end method

.method private static native nativeSetOption(JIZ)V
.end method

.method private onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 582
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 583
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->isAcceptableAddress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 588
    return-void
.end method

.method private pickPollCandidates(I)Ljava/util/List;
    .locals 6
    .param p1, "pickStrategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 439
    and-int/lit8 v0, p1, 0x3

    .line 440
    .local v0, "strategy":I
    const/4 v1, 0x0

    .line 441
    .local v1, "pickPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    goto :goto_0

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 444
    nop

    .line 451
    :goto_0
    const/high16 v2, 0x30000

    and-int/2addr v2, p1

    .line 452
    .local v2, "iterationStrategy":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 453
    .local v3, "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/high16 v4, 0x10000

    if-eq v2, v4, :cond_2

    .line 463
    const/16 v4, 0xe

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_5

    .line 464
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 455
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    const/16 v5, 0xe

    if-gt v4, v5, :cond_4

    .line 456
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 457
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 460
    .end local v4    # "i":I
    :cond_4
    nop

    .line 470
    :cond_5
    return-object v3
.end method

.method private runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .locals 10
    .param p1, "sourceAddress"    # I
    .param p3, "retryCount"    # I
    .param p4, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 488
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "allocated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 489
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 490
    if-eqz p4, :cond_0

    .line 491
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "[P]:AllocatedAddress=%s"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    invoke-interface {p4, p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    .line 494
    :cond_0
    return-void

    .line 497
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 500
    .local v0, "candidate":Ljava/lang/Integer;
    new-instance v9, Lcom/android/server/hdmi/HdmiCecController$5;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move v5, p3

    move-object v6, p5

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V

    invoke-direct {p0, v9}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method

.method private runOnIoThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 552
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method private runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 556
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method

.method private sendPollMessage(III)Z
    .locals 8
    .param p1, "sourceAddress"    # I
    .param p2, "destinationAddress"    # I
    .param p3, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 519
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ge v0, p3, :cond_2

    .line 522
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    sget-object v7, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 523
    move v5, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(JII[B)I

    move-result v2

    .line 525
    .local v2, "ret":I
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 526
    return v3

    .line 527
    :cond_0
    if-eq v2, v3, :cond_1

    .line 529
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 529
    const-string v1, "Failed to send a polling message(%d->%d) with return code %d"

    invoke-static {v1, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    .end local v2    # "ret":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 173
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 174
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    return-void
.end method

.method addLogicalAddress(I)I
    .locals 3
    .param p1, "newLogicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 290
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 291
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeAddLogicalAddress(JI)I

    move-result v0

    return v0

    .line 294
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 195
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method clearLocalDevices()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 314
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 315
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 316
    return-void
.end method

.method clearLogicalAddress()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearAddress()V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress(J)V

    .line 310
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HdmiCecLocalDevice #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 687
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 688
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "i":I
    :cond_0
    const-string v0, "CEC message history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 692
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 694
    .local v2, "record":Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
    invoke-virtual {v2, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 695
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
    goto :goto_1

    .line 696
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 697
    return-void
.end method

.method enableAudioReturnChannel(IZ)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 389
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 390
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeEnableAudioReturnChannel(JIZ)V

    .line 391
    return-void
.end method

.method flush(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 561
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 562
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 1
    .param p1, "deviceType"    # I

    .line 275
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object v0
.end method

.method getLocalDeviceList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .line 434
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 435
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPhysicalAddress()I
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 329
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPhysicalAddress(J)I

    move-result v0

    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method getVendorId()I
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 350
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 351
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVendorId(J)I

    move-result v0

    return v0
.end method

.method getVersion()I
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 340
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVersion(J)I

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .locals 3
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 401
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 402
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(JI)Z

    move-result v0

    return v0
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 592
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 594
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 595
    .local v0, "src":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 596
    .local v1, "dest":I
    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    .line 602
    .local v2, "originalOpcode":I
    if-nez v2, :cond_1

    .line 603
    return-void

    .line 605
    :cond_1
    nop

    .line 606
    invoke-static {v0, v1, v2, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    .line 605
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 607
    return-void

    .line 599
    .end local v2    # "originalOpcode":I
    :cond_2
    :goto_0
    return-void
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .locals 7
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 419
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 422
    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->pickPollCandidates(I)Ljava/util/List;

    move-result-object v6

    .line 423
    .local v6, "pollingCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v5, "allocated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p0

    move v1, p2

    move-object v2, v6

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    .line 425
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 611
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 613
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 1
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 618
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->addMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 620
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 374
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 375
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetLanguage(JLjava/lang/String;)V

    .line 379
    return-void
.end method

.method setOption(IZ)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 363
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "setOption: [flag:%d, enabled:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetOption(JIZ)V

    .line 365
    return-void
.end method
