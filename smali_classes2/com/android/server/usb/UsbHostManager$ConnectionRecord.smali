.class Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionRecord"
.end annotation


# static fields
.field static final CONNECT:I = 0x0

.field static final CONNECT_BADDEVICE:I = 0x2

.field static final CONNECT_BADPARSE:I = 0x1

.field static final DISCONNECT:I = -0x1

.field private static final kDumpBytesPerLine:I = 0x10


# instance fields
.field final mDescriptors:[B

.field mDeviceAddress:Ljava/lang/String;

.field final mMode:I

.field mTimestamp:J

.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;Ljava/lang/String;I[B)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbHostManager;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "descriptors"    # [B

    .line 118
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    .line 120
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    .line 121
    iput p3, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    .line 122
    iput-object p4, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 123
    return-void
.end method

.method private formatTime()Ljava/lang/String;
    .locals 5

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 12
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 130
    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    .line 132
    .local v8, "token":J
    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    const-string v2, "device_address"

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 133
    iget v1, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const-string v2, "mode"

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 134
    iget-wide v5, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    const-string v2, "timestamp"

    const-wide v3, 0x10300000003L

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 136
    iget v1, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 137
    new-instance v1, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v1, v2, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 139
    .local v1, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object v2

    .line 141
    .local v2, "deviceDescriptor":Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    const-wide v3, 0x10500000004L

    .line 142
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v5

    .line 141
    const-string v6, "manufacturer"

    invoke-virtual {p1, v6, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 143
    const-wide v3, 0x10500000005L

    .line 144
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v5

    .line 143
    const-string v6, "product"

    invoke-virtual {p1, v6, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 145
    const-wide v3, 0x10b00000006L

    const-string v5, "is_headset"

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 146
    .local v3, "isHeadSetToken":J
    const-wide v5, 0x10800000001L

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v10

    const-string v11, "in"

    invoke-virtual {p1, v11, v5, v6, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 147
    const-wide v5, 0x10800000002L

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v10

    const-string v11, "out"

    invoke-virtual {p1, v11, v5, v6, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 148
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 151
    .end local v1    # "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .end local v2    # "deviceDescriptor":Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .end local v3    # "isHeadSetToken":J
    :cond_0
    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 152
    return-void
.end method

.method dumpList(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 188
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 191
    .local v0, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Lcom/android/server/usb/descriptors/report/TextReportCanvas;

    invoke-direct {v2, v0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V

    .line 193
    .local v2, "canvas":Lcom/android/server/usb/descriptors/report/TextReportCanvas;
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 194
    .local v4, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v4, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 195
    .end local v4    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHeadset[in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .end local v0    # "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "canvas":Lcom/android/server/usb/descriptors/report/TextReportCanvas;
    goto :goto_1

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    :goto_1
    return-void
.end method

.method dumpRaw(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 13
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 208
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    array-length v0, v0

    .line 211
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw Descriptors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "dataOffset":I
    const/4 v2, 0x0

    .local v2, "line":I
    :goto_0
    div-int/lit8 v3, v0, 0x10

    const-string v4, " "

    const/4 v5, 0x0

    const-string v6, "0x%02X"

    const-string v7, "0x"

    const/4 v8, 0x1

    if-ge v2, v3, :cond_1

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "offset":I
    :goto_1
    const/16 v10, 0x10

    if-ge v9, v10, :cond_0

    .line 216
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v8, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    add-int/lit8 v12, v1, 0x1

    .end local v1    # "dataOffset":I
    .local v12, "dataOffset":I
    aget-byte v1, v11, v1

    .line 217
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v10, v5

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v9, v9, 0x1

    move v1, v12

    goto :goto_1

    .line 220
    .end local v9    # "offset":I
    .end local v12    # "dataOffset":I
    .restart local v1    # "dataOffset":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 213
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v2    # "line":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_2
    if-ge v1, v0, :cond_2

    .line 226
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    add-int/lit8 v10, v1, 0x1

    .end local v1    # "dataOffset":I
    .local v10, "dataOffset":I
    aget-byte v1, v9, v1

    .line 227
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v10

    goto :goto_2

    .line 230
    .end local v10    # "dataOffset":I
    .restart local v1    # "dataOffset":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .end local v0    # "length":I
    .end local v1    # "dataOffset":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 232
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 234
    :goto_3
    return-void
.end method

.method dumpShort(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 155
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 159
    .local v0, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object v1

    .line 161
    .local v1, "deviceDescriptor":Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manfacturer:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " product:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHeadset[in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .end local v0    # "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .end local v1    # "deviceDescriptor":Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void
.end method

.method dumpTree(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 171
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 174
    .local v0, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;

    invoke-direct {v2}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;-><init>()V

    .line 176
    .local v2, "descriptorTree":Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;
    invoke-virtual {v2, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->parse(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 177
    new-instance v3, Lcom/android/server/usb/descriptors/report/TextReportCanvas;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHeadset[in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .end local v0    # "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "descriptorTree":Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;
    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void
.end method
