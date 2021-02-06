.class Lcom/android/server/audio/AudioService$VolumeGroupState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeGroupState"
.end annotation


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private mIndexMax:I

.field private mIndexMin:I

.field private mLegacyStreamType:I

.field private mPublicStreamType:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .locals 5
    .param p2, "avg"    # Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 6431
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6418
    new-instance p1, Landroid/util/SparseIntArray;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 6421
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mLegacyStreamType:I

    .line 6422
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 6423
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 6432
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 6434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeGroupState for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6436
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 6437
    .local v2, "aa":Landroid/media/AudioAttributes;
    sget-object v3, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6438
    iput-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 6439
    goto :goto_1

    .line 6441
    .end local v2    # "aa":Landroid/media/AudioAttributes;
    :cond_0
    goto :goto_0

    .line 6442
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v0

    .line 6443
    .local v0, "streamTypes":[I
    array-length v2, v0

    if-eqz v2, :cond_4

    .line 6445
    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mLegacyStreamType:I

    .line 6446
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 6447
    .local v3, "streamType":I
    if-eq v3, p1, :cond_2

    .line 6448
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 6449
    iput v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 6450
    goto :goto_3

    .line 6446
    .end local v3    # "streamType":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6453
    :cond_3
    :goto_3
    sget-object p1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    aget p1, p1, v1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 6454
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    aget p1, p1, v1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    goto :goto_4

    .line 6455
    :cond_4
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 6456
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 6457
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 6464
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->readSettings()V

    .line 6465
    return-void

    .line 6459
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volume group: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has neither valid attributes nor valid stream types assigned"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6461
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Landroid/media/audiopolicy/AudioVolumeGroup;
    .param p3, "x2"    # Lcom/android/server/audio/AudioService$1;

    .line 6416
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService$VolumeGroupState;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeGroupState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 6416
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeGroupState;
    .param p1, "x1"    # I

    .line 6416
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->persistVolumeGroup(I)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 6633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- VOLUME GROUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6634
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6635
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6636
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6637
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6638
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const-string v2, ", "

    if-ge v0, v1, :cond_3

    .line 6640
    if-lez v0, :cond_0

    .line 6641
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6643
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 6644
    .local v1, "device":I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6645
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    const-string v2, "default"

    goto :goto_1

    .line 6646
    :cond_1
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    nop

    .line 6647
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6648
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6649
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6650
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6652
    :cond_2
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6653
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 6639
    .end local v1    # "device":I
    .end local v2    # "deviceName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6655
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6656
    const-string v0, "   Devices: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6657
    const/4 v0, 0x0

    .line 6658
    .local v0, "n":I
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v1

    .line 6659
    .local v1, "devices":I
    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6660
    .local v4, "device":I
    and-int v5, v1, v4

    if-ne v5, v4, :cond_5

    .line 6661
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "n":I
    .local v5, "n":I
    if-lez v0, :cond_4

    .line 6662
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6664
    :cond_4
    invoke-static {v4}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v5

    .line 6666
    .end local v4    # "device":I
    .end local v5    # "n":I
    .restart local v0    # "n":I
    :cond_5
    goto :goto_2

    .line 6667
    :cond_6
    return-void
.end method

.method private getDeviceForVolume()I
    .locals 2

    .line 6428
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 6616
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    if-ge p1, v0, :cond_0

    .line 6617
    return v0

    .line 6618
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 6621
    :cond_1
    return p1

    .line 6619
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    return v0
.end method

.method private persistVolumeGroup(I)V
    .locals 5
    .param p1, "device"    # I

    .line 6567
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6568
    return-void

    .line 6571
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persistVolumeGroup: storing index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 6572
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6573
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6571
    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6575
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 6576
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v2

    .line 6577
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v3

    const/4 v4, -0x2

    .line 6575
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 6579
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 6580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistVolumeGroup failed for group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6582
    :cond_1
    return-void
.end method

.method private setVolumeIndex(III)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "flags"    # I

    .line 6488
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    .line 6491
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 6494
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x1f4

    move v4, p2

    move-object v6, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6501
    return-void
.end method

.method private setVolumeIndexInt(III)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "flags"    # I

    .line 6508
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6509
    const/4 p1, 0x0

    goto :goto_0

    .line 6510
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 6511
    const/4 p1, 0x1

    .line 6514
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)I

    .line 6515
    return-void
.end method


# virtual methods
.method public applyAllVolumes()V
    .locals 8

    .line 6540
    const-class v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    monitor-enter v0

    .line 6543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_1

    .line 6544
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 6545
    .local v2, "device":I
    if-eq v2, v4, :cond_0

    .line 6546
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 6548
    .local v4, "index":I
    const-string v5, "AS.AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAllVolumes: restore index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for group "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 6549
    invoke-virtual {v7}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6550
    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6548
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6552
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    .line 6543
    .end local v2    # "device":I
    .end local v4    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6557
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v1

    .line 6559
    .local v1, "index":I
    const-string v2, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyAllVolumes: restore default device index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 6560
    invoke-virtual {v6}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6559
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6562
    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    .line 6563
    .end local v1    # "index":I
    monitor-exit v0

    .line 6564
    return-void

    .line 6563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIndex(I)I
    .locals 4
    .param p1, "device"    # I

    .line 6518
    const-class v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    monitor-enter v0

    .line 6519
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 6521
    .local v1, "index":I
    if-eq v1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    .line 6522
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLegacyStreamTypes()[I
    .locals 1

    .line 6468
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getMaxIndex()I
    .locals 1

    .line 6532
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .locals 1

    .line 6536
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # I

    .line 6625
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 6626
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6627
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6629
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVolumeIndex()I
    .locals 1

    .line 6476
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .locals 3
    .param p1, "device"    # I

    .line 6526
    const-class v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    monitor-enter v0

    .line 6527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 6528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 6472
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readSettings()V
    .locals 10

    .line 6585
    const-class v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    monitor-enter v0

    .line 6587
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 6589
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 6590
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 6591
    monitor-exit v0

    return-void

    .line 6593
    :cond_0
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6597
    .local v3, "device":I
    const/4 v4, -0x1

    if-ne v3, v2, :cond_1

    .line 6598
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    aget v5, v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    .line 6600
    .local v5, "defaultIndex":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v6

    .line 6601
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6602
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, -0x2

    .line 6601
    invoke-static {v7, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 6603
    .local v7, "index":I
    if-ne v7, v4, :cond_2

    .line 6604
    goto :goto_0

    .line 6607
    :cond_2
    const-string v4, "AS.AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readSettings: found stored index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for group "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 6608
    invoke-virtual {v9}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", device: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6607
    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6610
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    move-result v8

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 6611
    .end local v3    # "device":I
    .end local v5    # "defaultIndex":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "index":I
    goto :goto_0

    .line 6612
    :cond_3
    monitor-exit v0

    .line 6613
    return-void

    .line 6612
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVolumeIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "flags"    # I

    .line 6480
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6481
    return-void

    .line 6483
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndex(III)V

    .line 6484
    return-void
.end method
