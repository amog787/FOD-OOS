.class public abstract Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;
.super Lcom/android/server/usb/descriptors/UsbVCInterface;
.source "UsbVCHeaderInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbVCHeaderInterface"


# instance fields
.field protected mTotalLength:I

.field protected mVDCRelease:I


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # B
    .param p3, "subtype"    # B
    .param p4, "vdcRelease"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbVCInterface;-><init>(IBB)V

    .line 36
    iput p4, p0, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->mVDCRelease:I

    .line 37
    return-void
.end method


# virtual methods
.method public getTotalLength()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->mTotalLength:I

    return v0
.end method

.method public getVDCRelease()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->mVDCRelease:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 49
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 51
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->getVDCRelease()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->getTotalLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 55
    return-void
.end method
