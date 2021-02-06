.class public final Lcom/android/server/usb/descriptors/report/TextReportCanvas;
.super Lcom/android/server/usb/descriptors/report/ReportCanvas;
.source "TextReportCanvas.java"


# static fields
.field private static final LIST_INDENT_AMNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TextReportCanvas"


# instance fields
.field private mListIndent:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 40
    iput-object p2, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method private writeListIndent()V
    .locals 3

    .line 44
    const/4 v0, 0x0

    .local v0, "space":I
    :goto_0
    iget v1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "space":I
    :cond_0
    return-void
.end method


# virtual methods
.method public closeHeader(I)V
    .locals 2
    .param p1, "level"    # I

    .line 62
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    return-void
.end method

.method public closeList()V
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    .line 94
    return-void
.end method

.method public closeListItem()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    return-void
.end method

.method public closeParagraph()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    return-void
.end method

.method public openHeader(I)V
    .locals 2
    .param p1, "level"    # I

    .line 56
    invoke-direct {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    .line 57
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method

.method public openList()V
    .locals 1

    .line 88
    iget v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    .line 89
    return-void
.end method

.method public openListItem()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    .line 99
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    return-void
.end method

.method public openParagraph(Z)V
    .locals 0
    .param p1, "emphasis"    # Z

    .line 67
    invoke-direct {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    .line 68
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method public writeParagraph(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "inRed"    # Z

    .line 77
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openParagraph(Z)V

    .line 78
    if-eqz p2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeParagraph()V

    .line 84
    return-void
.end method
