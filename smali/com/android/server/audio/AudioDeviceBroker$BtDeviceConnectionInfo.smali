.class final Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BtDeviceConnectionInfo"
.end annotation


# instance fields
.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mProfile:I

.field final mState:I

.field final mSupprNoisy:Z

.field final mVolume:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "vol"    # I

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 246
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mState:I

    .line 247
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mProfile:I

    .line 248
    iput-boolean p4, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mSupprNoisy:Z

    .line 249
    iput p5, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;->mVolume:I

    .line 250
    return-void
.end method
