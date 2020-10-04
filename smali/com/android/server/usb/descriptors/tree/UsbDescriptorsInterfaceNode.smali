.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "UsbDescriptorsInterfaceNode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsInterfaceNode"


# instance fields
.field private final mACInterfaceNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndpointNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 1
    .param p1, "interfaceDescriptor"    # Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 39
    invoke-direct {p0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 41
    return-void
.end method


# virtual methods
.method public addACInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;)V
    .locals 1
    .param p1, "acInterfaceNode"    # Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;

    .line 56
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addEndpointNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;)V
    .locals 1
    .param p1, "endpointNode"    # Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    .line 48
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 61
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 64
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 65
    const-string v0, "Audio Class Interfaces"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 67
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;

    .line 68
    .local v2, "node":Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;
    invoke-virtual {v2, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 69
    .end local v2    # "node":Lcom/android/server/usb/descriptors/tree/UsbDescriptorsACInterfaceNode;
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 75
    const-string v0, "Endpoints"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 77
    iget-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    .line 78
    .local v1, "node":Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;
    invoke-virtual {v1, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 79
    .end local v1    # "node":Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 82
    :cond_3
    return-void
.end method
