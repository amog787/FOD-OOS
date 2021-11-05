.class public Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.super Ljava/lang/Object;
.source "UsbDescriptorsTreeNode.java"

# interfaces
.implements Lcom/android/server/usb/descriptors/report/Reporting;


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDescriptorsTreeNode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 33
    return-void
.end method

.method public shortReport(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/server/usb/descriptors/report/ReportCanvas;

    .line 40
    return-void
.end method
