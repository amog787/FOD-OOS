.class public final Lcom/android/server/usb/descriptors/UsbACFeatureUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACFeatureUnit.java"


# static fields
.field public static final CONTROL_MASK_AGC:I = 0x40

.field public static final CONTROL_MASK_BASS:I = 0x4

.field public static final CONTROL_MASK_BOOST:I = 0x100

.field public static final CONTROL_MASK_DELAY:I = 0x80

.field public static final CONTROL_MASK_EQ:I = 0x20

.field public static final CONTROL_MASK_LOUD:I = 0x200

.field public static final CONTROL_MASK_MID:I = 0x8

.field public static final CONTROL_MASK_MUTE:I = 0x1

.field public static final CONTROL_MASK_TREB:I = 0x10

.field public static final CONTROL_MASK_VOL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UsbACFeatureUnit"


# instance fields
.field private mControlSize:B

.field private mControls:[I

.field private mNumChannels:I

.field private mSourceID:B

.field private mUnitID:B

.field private mUnitName:B


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "subClass"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 51
    return-void
.end method


# virtual methods
.method public getControlSize()B
    .locals 1

    .line 66
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;->mControlSize:B

    return v0
.end method

.method public getControls()[I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;->mControls:[I

    return-object v0
.end method

.method public getNumChannels()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;->mNumChannels:I

    return v0
.end method

.method public getSourceID()B
    .locals 1

    .line 62
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;->mSourceID:B

    return v0
.end method

.method public getUnitID()B
    .locals 1

    .line 58
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;->mUnitID:B

    return v0
.end method

.method public getUnitName()B
    .locals 1

    .line 74
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;->mUnitName:B

    return v0
.end method
