.class final Lcom/android/server/usb/UsbPortManager$RawPortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawPortInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public contaminantDetectionStatus:I

.field public contaminantProtectionStatus:I

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public final portId:Ljava/lang/String;

.field public final supportedContaminantProtectionModes:I

.field public final supportedModes:I

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1502
    new-instance v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;

    invoke-direct {v0}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    .line 1446
    iput p2, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    .line 1447
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    .line 1448
    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 1449
    iput v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    .line 1450
    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 1451
    iput v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    .line 1452
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIZIZIZZIZI)V
    .locals 0
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

    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1462
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    .line 1463
    iput p2, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    .line 1464
    iput p3, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    .line 1465
    iput p4, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 1466
    iput-boolean p5, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 1467
    iput p6, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 1468
    iput-boolean p7, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 1469
    iput p8, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 1470
    iput-boolean p9, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 1471
    iput-boolean p10, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 1473
    iput p11, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    .line 1474
    iput-boolean p12, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 1476
    iput p13, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    .line 1477
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1482
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1487
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedContaminantProtectionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1492
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1494
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1496
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1497
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantProtectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1499
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->contaminantDetectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    return-void
.end method
