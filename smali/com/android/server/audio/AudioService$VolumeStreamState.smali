.class Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private mIndexMax:I

.field private mIndexMin:I

.field private mIndexMinNoPerm:I

.field private mIsMuted:Z

.field private mIsMutedInternally:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 2
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .line 6704
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6675
    new-instance p1, Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 6706
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 6708
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 6709
    sget-object p1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 6710
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 6711
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 6712
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v0, v0, 0xa

    div-int/lit8 p1, p1, 0xa

    invoke-static {p3, v0, p1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 6714
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 6715
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 6716
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6717
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 6718
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6719
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/audio/AudioService$1;

    .line 6663
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6663
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Z

    .line 6663
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6663
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 6663
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/lang/String;

    .line 6663
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6663
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6663
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6663
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6663
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6663
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 7259
    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7260
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7261
    const-string v0, "   Muted Internally: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7262
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7263
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7264
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7265
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    if-eq v0, v1, :cond_0

    .line 7266
    const-string v0, " w/o perm:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7267
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 7269
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7271
    :goto_0
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7272
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7273
    const-string v0, "   streamVolume:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7274
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const-string v2, ", "

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_4

    .line 7276
    if-lez v0, :cond_1

    .line 7277
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7279
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 7280
    .local v1, "device":I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7281
    if-ne v1, v3, :cond_2

    const-string v2, "default"

    goto :goto_2

    .line 7282
    :cond_2
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    nop

    .line 7283
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 7284
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7285
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7286
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7288
    :cond_3
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7289
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    .line 7290
    .local v3, "index":I
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7275
    .end local v1    # "device":I
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v3    # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7292
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7293
    const-string v0, "   Devices: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7294
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;I)I

    move-result v0

    .line 7295
    .local v0, "devices":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v4, 0x0

    .line 7298
    .local v4, "n":I
    :goto_3
    const/4 v5, 0x1

    shl-int/2addr v5, v1

    move v6, v5

    .local v6, "device":I
    if-eq v5, v3, :cond_7

    .line 7299
    and-int v5, v0, v6

    if-eqz v5, :cond_6

    .line 7300
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "n":I
    .local v5, "n":I
    if-lez v4, :cond_5

    .line 7301
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7303
    :cond_5
    invoke-static {v6}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v4, v5

    .line 7305
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7307
    :cond_7
    return-void
.end method

.method private getAbsoluteVolumeIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .line 6841
    if-nez p1, :cond_0

    .line 6843
    const/4 p1, 0x0

    goto :goto_0

    .line 6844
    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 6846
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)[F

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_0

    .line 6849
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 p1, v0, 0xa

    .line 6851
    :goto_0
    return p1
.end method

.method private getValidIndex(IZ)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "hasModifyAudioSettings"    # Z

    .line 7248
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 7249
    .local v0, "indexMin":I
    :goto_0
    if-ge p1, v0, :cond_1

    .line 7250
    return v0

    .line 7251
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v1, :cond_2

    goto :goto_1

    .line 7255
    :cond_2
    return p1

    .line 7252
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v1
.end method

.method private hasValidSettingsName()Z
    .locals 1

    .line 6769
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setStreamVolumeIndex(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "device"    # I

    .line 6858
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 6859
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6860
    const/4 p1, 0x1

    .line 6862
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 6865
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xdb

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6866
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6868
    const-string v0, "close_PA"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6869
    .local v0, "temp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "close_PA=on"

    const-string v3, "close_PA=off"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6870
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_1

    .line 6871
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6872
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez p1, :cond_2

    .line 6873
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6878
    .end local v0    # "temp":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;Z)Z
    .locals 1
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "hasModifyAudioSettings"    # Z

    .line 6963
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .locals 7

    .line 6918
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 6921
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_6

    .line 6922
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 6923
    .local v2, "device":I
    if-eq v2, v3, :cond_5

    .line 6924
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6925
    const/4 v3, 0x0

    .local v3, "index":I
    goto/16 :goto_1

    .line 6926
    .end local v3    # "index":I
    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6927
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6928
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v3

    .line 6932
    .restart local v3    # "index":I
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x8d

    aput v6, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6933
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 6934
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    move v3, v4

    .line 6935
    const-string v4, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyAllVolumes() update device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " volume to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for stream ring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6940
    .end local v3    # "index":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v2}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6941
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    .restart local v3    # "index":I
    goto :goto_1

    .line 6942
    .end local v3    # "index":I
    :cond_2
    const/high16 v3, 0x8000000

    if-ne v2, v3, :cond_3

    .line 6943
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    .restart local v3    # "index":I
    goto :goto_1

    .line 6945
    .end local v3    # "index":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    .line 6947
    .restart local v3    # "index":I
    :cond_4
    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 6921
    .end local v2    # "device":I
    .end local v3    # "index":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 6952
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6953
    const/4 v1, 0x0

    .local v1, "index":I
    goto :goto_2

    .line 6955
    .end local v1    # "index":I
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    .line 6957
    .restart local v1    # "index":I
    :goto_2
    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 6958
    .end local v1    # "index":I
    monitor-exit v0

    .line 6959
    return-void

    .line 6958
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method applyDeviceVolume_syncVSS(I)V
    .locals 5
    .param p1, "device"    # I

    .line 6883
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 6884
    const/4 v0, 0x0

    .local v0, "index":I
    goto/16 :goto_0

    .line 6885
    .end local v0    # "index":I
    :cond_0
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6886
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6887
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    .line 6891
    .restart local v0    # "index":I
    new-array v3, v2, [I

    const/16 v4, 0x8d

    aput v4, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6892
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 6893
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v0, v3, 0xa

    .line 6894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyDeviceVolume_syncVSS() update device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " volume to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for stream ring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6899
    .end local v0    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6900
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .restart local v0    # "index":I
    goto :goto_0

    .line 6901
    .end local v0    # "index":I
    :cond_2
    const/high16 v0, 0x8000000

    if-ne p1, v0, :cond_3

    .line 6902
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .restart local v0    # "index":I
    goto :goto_0

    .line 6904
    .end local v0    # "index":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 6909
    .restart local v0    # "index":I
    :cond_4
    :goto_0
    new-array v2, v2, [I

    const/16 v3, 0xb2

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6910
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$3902(Lcom/android/server/audio/AudioService;I)I

    .line 6914
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 6915
    return-void
.end method

.method public checkFixedVolumeDevices()V
    .locals 6

    .line 7231
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 7233
    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 7234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7235
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 7236
    .local v2, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 7237
    .local v3, "index":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 7238
    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 7239
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 7241
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 7234
    .end local v2    # "device":I
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7244
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 7245
    return-void

    .line 7244
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

    .line 7090
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 7091
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 7092
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    .line 7094
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move v1, v2

    .line 7096
    :cond_0
    monitor-exit v0

    return v1

    .line 7097
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    .line 7107
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .locals 1

    .line 7114
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getMinIndex(Z)I
    .locals 1
    .param p1, "isPrivileged"    # Z

    .line 7123
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :goto_0
    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # I

    .line 6758
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6759
    const/4 v0, 0x0

    return-object v0

    .line 6761
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 6762
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6763
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v1

    .line 6765
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStreamType()I
    .locals 1

    .line 7227
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .locals 3
    .param p1, "device"    # I

    .line 7101
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 7102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

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

    .line 7103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFullyMuted()Z
    .locals 1

    .line 7223
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mute(Z)Z
    .locals 10
    .param p1, "state"    # Z

    .line 7172
    const/4 v0, 0x0

    .line 7173
    .local v0, "changed":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 7174
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v2, :cond_0

    .line 7175
    const/4 v0, 0x1

    .line 7176
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 7181
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7188
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7189
    if-eqz v0, :cond_1

    .line 7191
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7192
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7193
    const-string v2, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7194
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 7196
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return v0

    .line 7188
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public muteInternally(Z)Z
    .locals 5
    .param p1, "state"    # Z

    .line 7205
    const/4 v0, 0x0

    .line 7206
    .local v0, "changed":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 7207
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eq p1, v2, :cond_0

    .line 7208
    const/4 v0, 0x1

    .line 7209
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    .line 7211
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 7213
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7214
    if-eqz v0, :cond_1

    .line 7215
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v3, 0x9

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7218
    :cond_1
    return v0

    .line 7213
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .locals 5
    .param p1, "checkOthers"    # Z

    .line 6734
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6735
    const/4 v0, 0x0

    return v0

    .line 6737
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 6738
    .local v0, "devices":I
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v1, :cond_1

    .line 6739
    return v0

    .line 6741
    :cond_1
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 6742
    .local v1, "prevDevices":I
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 6743
    if-eqz p1, :cond_2

    .line 6745
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;I)V

    .line 6748
    :cond_2
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    if-ne v2, v3, :cond_3

    .line 6749
    invoke-static {v3, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 6751
    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 6752
    const-string v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 6753
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 6751
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 6754
    return v0
.end method

.method public readSettings()V
    .locals 10

    .line 6773
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6774
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6776
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    .line 6777
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 6778
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 6783
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_1

    goto/16 :goto_3

    .line 6792
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6793
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6794
    monitor-enter v0

    .line 6795
    :try_start_5
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6800
    .local v2, "device":I
    const/4 v5, -0x1

    if-ne v2, v3, :cond_2

    .line 6801
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v7

    goto :goto_1

    :cond_2
    move v6, v5

    .line 6803
    .local v6, "defaultIndex":I
    :goto_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v7

    if-nez v7, :cond_3

    .line 6804
    move v7, v6

    .local v7, "index":I
    goto :goto_2

    .line 6806
    .end local v7    # "index":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v7

    .line 6807
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6808
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    .line 6807
    invoke-static {v8, v7, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    move v7, v8

    .line 6810
    .local v7, "index":I
    :goto_2
    if-ne v7, v5, :cond_4

    .line 6811
    goto :goto_0

    .line 6814
    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v8, v7, 0xa

    invoke-direct {p0, v8, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v8

    invoke-virtual {v5, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 6816
    .end local v2    # "device":I
    .end local v6    # "defaultIndex":I
    .end local v7    # "index":I
    goto :goto_0

    .line 6821
    :cond_5
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_7

    .line 6823
    :cond_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 6824
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0xa

    .line 6825
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 6826
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add SPEAKER to device list stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6830
    .end local v1    # "index":I
    :cond_7
    monitor-exit v0

    .line 6831
    return-void

    .line 6830
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 6785
    :cond_8
    :goto_3
    :try_start_6
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    .line 6786
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6787
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move v2, v4

    .line 6789
    :cond_9
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6790
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    .line 6792
    .end local v2    # "index":I
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local p0    # "this":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :try_start_9
    throw v2

    .line 6793
    .restart local p0    # "this":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 7
    .param p1, "srcStream"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"    # Ljava/lang/String;

    .line 7136
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_0

    .line 7137
    return-void

    .line 7139
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    .line 7142
    .local v0, "srcStreamType":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 7143
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 7144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7145
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 7144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7148
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 7149
    .local v2, "srcMap":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 7150
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 7151
    .local v4, "device":I
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 7152
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v1, v0, v6}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 7154
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, p2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 7149
    .end local v4    # "device":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7156
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public setAllIndexesToMax()V
    .locals 4

    .line 7161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7162
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 7161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7164
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .locals 19
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "hasModifyAudioSettings"    # Z

    .line 6971
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v7, 0x0

    const/16 v8, 0x8d

    aput v8, v6, v7

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    const/4 v9, 0x3

    if-eqz v6, :cond_3

    .line 6973
    if-eqz v4, :cond_0

    const-string v6, "GradientingMusicVol"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v9, :cond_1

    .line 6974
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$4002(Lcom/android/server/audio/AudioService;Z)Z

    .line 6976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setIndex GradientingMusicVol is beaking by "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "AS.AudioService"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6979
    :cond_1
    if-eqz v4, :cond_2

    const-string v6, "HeadsetProfile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 6980
    :cond_2
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v9, :cond_3

    const/16 v6, 0x10

    if-ne v3, v6, :cond_3

    .line 6981
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v2}, Lcom/android/server/audio/AudioService;->access$4102(Lcom/android/server/audio/AudioService;I)I

    .line 6982
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setIndex mPerScoMediaVolume "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " by "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "AS.AudioService"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6988
    :cond_3
    new-array v6, v0, [I

    const/16 v10, 0x8a

    aput v10, v6, v7

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    const/4 v11, 0x2

    if-eqz v6, :cond_5

    .line 6989
    if-eqz v4, :cond_4

    const-string v6, "AlertSliderManager"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 6990
    :cond_4
    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v9, :cond_5

    if-ne v3, v11, :cond_5

    .line 6991
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6, v2}, Lcom/android/server/audio/AudioService;->access$4202(Lcom/android/server/audio/AudioService;I)I

    .line 6992
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v12

    const/16 v13, 0x20

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6993
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setIndex mPerSpeakerMediaVolume "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " by "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "AS.AudioService"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7000
    :cond_5
    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 7001
    :try_start_0
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7002
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 7003
    .local v12, "oldIndex":I
    invoke-direct {v1, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v13

    .line 7004
    .end local p1    # "index":I
    .local v2, "index":I
    :try_start_2
    iget v13, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_6

    iget-object v13, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 7005
    iget v13, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move v2, v13

    .line 7007
    :cond_6
    iget-object v13, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7009
    if-eq v12, v2, :cond_7

    move v13, v0

    goto :goto_0

    :cond_7
    move v13, v7

    .line 7015
    .local v13, "changed":Z
    :goto_0
    iget-object v14, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v15, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v14, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v14

    if-ne v3, v14, :cond_8

    move v14, v0

    goto :goto_1

    :cond_8
    move v14, v7

    .line 7016
    .local v14, "isCurrentDevice":Z
    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v15

    .line 7017
    .local v15, "numStreamTypes":I
    add-int/lit8 v16, v15, -0x1

    move/from16 v10, v16

    .local v10, "streamType":I
    :goto_2
    if-ltz v10, :cond_b

    .line 7018
    iget-object v7, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    aget-object v7, v7, v10

    .line 7019
    .local v7, "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v10, v8, :cond_a

    sget-object v8, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v8, v10

    iget v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v8, v0, :cond_a

    if-nez v13, :cond_9

    .line 7021
    invoke-virtual {v7, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 7022
    :cond_9
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v2, v8, v10}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;III)I

    move-result v0

    .line 7023
    .local v0, "scaledIndex":I
    invoke-virtual {v7, v0, v3, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 7025
    if-eqz v14, :cond_a

    .line 7026
    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 7027
    invoke-virtual {v8, v10}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v8

    .line 7026
    invoke-virtual {v7, v0, v8, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 7017
    .end local v0    # "scaledIndex":I
    .end local v7    # "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_a
    add-int/lit8 v10, v10, -0x1

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8d

    goto :goto_2

    .line 7033
    .end local v10    # "streamType":I
    :cond_b
    if-eqz v13, :cond_e

    iget v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v11, :cond_e

    if-ne v3, v11, :cond_e

    .line 7035
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v7, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_d

    .line 7036
    iget-object v7, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 7037
    .local v7, "otherDevice":I
    sget-object v8, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 7038
    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7035
    .end local v7    # "otherDevice":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7044
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/16 v0, 0x8d

    const/4 v8, 0x0

    aput v0, v7, v8

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7045
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v7}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;I)I

    move-result v0

    .line 7046
    .local v0, "devices":I
    add-int/lit8 v7, v0, -0x1

    and-int/2addr v7, v0

    if-eqz v7, :cond_e

    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_e

    .line 7047
    add-int/lit8 v7, v0, -0x1

    and-int/2addr v7, v0

    .line 7048
    .restart local v7    # "otherDevice":I
    const-string v8, "AS.AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setIndex() update otherDevice:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " volume to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for stream ring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7049
    iget-object v8, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7055
    .end local v0    # "devices":I
    .end local v7    # "otherDevice":I
    .end local v14    # "isCurrentDevice":Z
    .end local v15    # "numStreamTypes":I
    :cond_e
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7056
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 7057
    if-eqz v13, :cond_12

    .line 7058
    add-int/lit8 v0, v12, 0x5

    div-int/lit8 v12, v0, 0xa

    .line 7059
    add-int/lit8 v0, v2, 0x5

    div-int/lit8 v2, v0, 0xa

    .line 7061
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v6

    if-ne v0, v6, :cond_10

    .line 7062
    if-nez v4, :cond_f

    .line 7063
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v6, "AS.AudioService"

    const-string v7, "No caller for volume_changed event"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7065
    :cond_f
    iget v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v6, v6, 0xa

    invoke-static {v0, v12, v2, v6, v4}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    .line 7070
    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v6, 0x8a

    const/4 v7, 0x0

    aput v6, v0, v7

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7071
    if-eqz v4, :cond_11

    const-string v0, "AlertSliderManager"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 7072
    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_11

    .line 7074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setIndex1 changed "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "AS.AudioService"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7075
    return v13

    .line 7080
    :cond_11
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v6, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7081
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v6, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7082
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v7, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v7

    const-string v7, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7084
    iget-object v0, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 7086
    :cond_12
    return v13

    .line 7055
    .end local v2    # "index":I
    .end local v12    # "oldIndex":I
    .end local v13    # "changed":Z
    .restart local p1    # "index":I
    :catchall_0
    move-exception v0

    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_4
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v2    # "index":I
    .end local p0    # "this":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local p2    # "device":I
    .end local p3    # "caller":Ljava/lang/String;
    .end local p4    # "hasModifyAudioSettings":Z
    :try_start_5
    throw v0

    .restart local v2    # "index":I
    .restart local p0    # "this":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local p2    # "device":I
    .restart local p3    # "caller":Ljava/lang/String;
    .restart local p4    # "hasModifyAudioSettings":Z
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 7056
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :catchall_2
    move-exception v0

    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5
.end method

.method public updateNoPermMinIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 6726
    mul-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 6727
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge v0, v1, :cond_0

    .line 6728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mIndexMinNoPerm for stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6729
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 6731
    :cond_0
    return-void
.end method
