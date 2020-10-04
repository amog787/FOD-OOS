.class Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
.super Ljava/lang/Object;
.source "BtHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothA2dpDeviceInfo"
.end annotation


# instance fields
.field private final mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mCodec:I

.field private final mVolume:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 124
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 125
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I
    .param p3, "codec"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 129
    iput p2, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mVolume:I

    .line 130
    iput p3, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mCodec:I

    .line 131
    return-void
.end method


# virtual methods
.method public getBtDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getCodec()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mCodec:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mVolume:I

    return v0
.end method
