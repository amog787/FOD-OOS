.class public abstract Lcom/android/server/usb/descriptors/report/ReportCanvas;
.super Ljava/lang/Object;
.source "ReportCanvas.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportCanvas"


# instance fields
.field private final mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 0
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/usb/descriptors/report/ReportCanvas;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 36
    return-void
.end method

.method public static getBCDString(I)Ljava/lang/String;
    .locals 5
    .param p0, "valueBCD"    # I

    .line 138
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    .line 139
    .local v0, "major":I
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 140
    .local v1, "minor":I
    and-int/lit8 v2, p0, 0xf

    .line 142
    .local v2, "subminor":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getHexString(B)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # B

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHexString(I)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I

    .line 152
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 153
    .local v0, "intValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract closeHeader(I)V
.end method

.method public abstract closeList()V
.end method

.method public abstract closeListItem()V
.end method

.method public abstract closeParagraph()V
.end method

.method public dumpHexArray([BLjava/lang/StringBuilder;)V
    .locals 3
    .param p1, "rawData"    # [B
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 162
    if-eqz p1, :cond_1

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openParagraph(Z)V

    .line 165
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v2, p1, v0

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeParagraph()V

    .line 170
    :cond_1
    return-void
.end method

.method public getParser()Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/ReportCanvas;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    return-object v0
.end method

.method public abstract openHeader(I)V
.end method

.method public abstract openList()V
.end method

.method public abstract openListItem()V
.end method

.method public abstract openParagraph(Z)V
.end method

.method public abstract write(Ljava/lang/String;)V
.end method

.method public writeHeader(ILjava/lang/String;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openHeader(I)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeHeader(I)V

    .line 68
    return-void
.end method

.method public writeListItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    .line 118
    return-void
.end method

.method public abstract writeParagraph(Ljava/lang/String;Z)V
.end method
