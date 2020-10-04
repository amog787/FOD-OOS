.class final Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHistoryRecord"
.end annotation


# instance fields
.field private final mIsReceived:Z

.field private final mMessage:Lcom/android/server/hdmi/HdmiCecMessage;

.field private final mTime:J

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;ZLcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 2
    .param p2, "isReceived"    # Z
    .param p3, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 798
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mTime:J

    .line 800
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mIsReceived:Z

    .line 801
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 802
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 805
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mIsReceived:Z

    if-eqz v0, :cond_0

    const-string v0, "[R]"

    goto :goto_0

    :cond_0
    const-string v0, "[S]"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 806
    const-string v0, " time="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 808
    const-string v0, " message="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 810
    return-void
.end method
