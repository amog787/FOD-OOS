.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;
.super Ljava/lang/Object;
.source "UsbDescriptorsTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsTree"


# instance fields
.field private mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

.field private mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

.field private mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addACInterface(Lcom/android/server/usb/descriptors/UsbACInterface;)V
    .locals 2
    .param p1, "acInterface"    # Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 93
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbACInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addACInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;)V

    .line 94
    return-void
.end method

.method private addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .locals 2
    .param p1, "configDescriptor"    # Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 70
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;-><init>(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    .line 71
    iget-object v1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->addConfigDescriptorNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;)V

    .line 72
    return-void
.end method

.method private addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V
    .locals 1
    .param p1, "deviceDescriptor"    # Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 63
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;-><init>(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    .line 64
    return-void
.end method

.method private addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 2
    .param p1, "endpointDescriptor"    # Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 86
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;-><init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addEndpointNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;)V

    .line 87
    return-void
.end method

.method private addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 2
    .param p1, "interfaceDescriptor"    # Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 78
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    .line 79
    iget-object v1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->addInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;)V

    .line 80
    return-void
.end method


# virtual methods
.method public parse(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 5
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 102
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    .line 104
    .local v0, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    const/4 v1, 0x0

    .local v1, "descrIndex":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 106
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    .line 124
    goto :goto_1

    .line 119
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    .line 120
    goto :goto_1

    .line 115
    :cond_2
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    .line 116
    goto :goto_1

    .line 111
    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {p0, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    .line 112
    nop

    .line 104
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "descrIndex":I
    :cond_4
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 145
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 146
    return-void
.end method
