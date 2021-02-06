.class final Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
.super Ljava/lang/Object;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CecMessageBuffer"
.end annotation


# instance fields
.field private mBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiControlService$1;

    .line 405
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method

.method private bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 440
    const/16 v0, 0x82

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_0
    return-void
.end method

.method private bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 446
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 447
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_0
    return-void
.end method

.method private bufferSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 453
    const/16 v0, 0x70

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_0
    return-void
.end method

.method private replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "opcode"    # I

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 462
    .local v1, "bufferedMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 464
    const/4 v2, 0x1

    return v2

    .line 460
    .end local v1    # "bufferedMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 409
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    .line 423
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 412
    return v2

    .line 418
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 419
    return v2

    .line 415
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 416
    return v2
.end method

.method public processMessages()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 429
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 435
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    return-void
.end method
