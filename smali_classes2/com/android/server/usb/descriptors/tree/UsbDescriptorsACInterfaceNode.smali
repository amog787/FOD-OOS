.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "UsbDescriptorsACInterfaceNode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsACInterfaceNode"


# instance fields
.field private final mACInterface:Lcom/android/server/usb/descriptors/UsbACInterface;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbACInterface;)V
    .locals 0
    .param p1, "acInterface"    # Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 34
    invoke-direct {p0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;->mACInterface:Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 36
    return-void
.end method


# virtual methods
.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC Interface type: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;->mACInterface:Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 41
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 43
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;->mACInterface:Lcom/android/server/usb/descriptors/UsbACInterface;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 45
    return-void
.end method
