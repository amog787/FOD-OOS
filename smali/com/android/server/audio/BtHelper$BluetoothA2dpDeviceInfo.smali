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

    .line 165
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 166
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I
    .param p3, "codec"    # I

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 170
    iput p2, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mVolume:I

    .line 171
    iput p3, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mCodec:I

    .line 172
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 190
    return v0

    .line 192
    :cond_0
    if-ne p0, p1, :cond_1

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_1
    instance-of v1, p1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    if-eqz v1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v1, p1

    check-cast v1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 198
    :cond_2
    return v0
.end method

.method public getBtDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getCodec()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mCodec:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mVolume:I

    return v0
.end method
