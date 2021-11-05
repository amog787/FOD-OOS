.class Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager$RawPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .locals 25
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1506
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1507
    .local v14, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1508
    .local v15, "supportedModes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1509
    .local v16, "supportedContaminantProtectionModes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1510
    .local v17, "currentMode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v2

    .line 1511
    .local v5, "canChangeMode":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1512
    .local v18, "currentPowerRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v2

    .line 1513
    .local v7, "canChangePowerRole":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1514
    .local v19, "currentDataRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    move v9, v2

    .line 1515
    .local v9, "canChangeDataRole":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 1516
    .local v20, "supportsEnableContaminantPresenceProtection":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1517
    .local v21, "contaminantProtectionStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 1518
    .local v22, "supportsEnableContaminantPresenceDetection":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1519
    .local v23, "contaminantDetectionStatus":I
    new-instance v24, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-object/from16 v0, v24

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v6, v18

    move/from16 v8, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    invoke-direct/range {v0 .. v13}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    return-object v24
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .locals 1
    .param p1, "size"    # I

    .line 1531
    new-array v0, p1, [Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;->newArray(I)[Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-result-object p1

    return-object p1
.end method
