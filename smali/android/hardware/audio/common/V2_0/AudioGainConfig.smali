.class public final Landroid/hardware/audio/common/V2_0/AudioGainConfig;
.super Ljava/lang/Object;
.source "AudioGainConfig.java"


# instance fields
.field public channelMask:I

.field public index:I

.field public mode:I

.field public rampDurationMs:I

.field public values:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->index:I

    .line 6
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->mode:I

    .line 7
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->channelMask:I

    .line 15
    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->values:[I

    .line 16
    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->rampDurationMs:I

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/audio/common/V2_0/AudioGainConfig;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/audio/common/V2_0/AudioGainConfig;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 87
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x90

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 87
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 91
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 93
    new-instance v5, Landroid/hardware/audio/common/V2_0/AudioGainConfig;

    invoke-direct {v5}, Landroid/hardware/audio/common/V2_0/AudioGainConfig;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Landroid/hardware/audio/common/V2_0/AudioGainConfig;
    mul-int/lit16 v6, v4, 0x90

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Landroid/hardware/audio/common/V2_0/AudioGainConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/audio/common/V2_0/AudioGainConfig;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/audio/common/V2_0/AudioGainConfig;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 125
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 126
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 127
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 128
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x90

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 129
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 130
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/audio/common/V2_0/AudioGainConfig;

    mul-int/lit16 v5, v3, 0x90

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 135
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 136
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 20
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 21
    return v0

    .line 23
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 24
    return v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/audio/common/V2_0/AudioGainConfig;

    if-eq v2, v3, :cond_2

    .line 27
    return v1

    .line 29
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/audio/common/V2_0/AudioGainConfig;

    .line 30
    .local v2, "other":Landroid/hardware/audio/common/V2_0/AudioGainConfig;
    iget v3, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->index:I

    iget v4, v2, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->index:I

    if-eq v3, v4, :cond_3

    .line 31
    return v1

    .line 33
    :cond_3
    iget v3, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->mode:I

    iget v4, v2, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->mode:I

    if-eq v3, v4, :cond_4

    .line 34
    return v1

    .line 36
    :cond_4
    iget v3, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->channelMask:I

    iget v4, v2, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->channelMask:I

    if-eq v3, v4, :cond_5

    .line 37
    return v1

    .line 39
    :cond_5
    iget-object v3, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->values:[I

    iget-object v4, v2, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->values:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 40
    return v1

    .line 42
    :cond_6
    iget v3, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->rampDurationMs:I

    iget v4, v2, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->rampDurationMs:I

    if-eq v3, v4, :cond_7

    .line 43
    return v1

    .line 45
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->index:I

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->mode:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->channelMask:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->values:[I

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->rampDurationMs:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 50
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->index:I

    .line 105
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->mode:I

    .line 106
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->channelMask:I

    .line 108
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 109
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->values:[I

    const/16 v3, 0x20

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 110
    nop

    .line 112
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x8c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->rampDurationMs:I

    .line 113
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x90

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ".index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->mode:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioGainMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .channelMask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->channelMask:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->values:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .rampDurationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->rampDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 5
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 140
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 141
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->mode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 142
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->channelMask:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 144
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 145
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->values:[I

    .line 147
    .local v2, "_hidl_array_item_0":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 151
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 152
    nop

    .line 154
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[I
    const-wide/16 v0, 0x8c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->rampDurationMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 155
    return-void

    .line 148
    .restart local v0    # "_hidl_array_offset_0":J
    .restart local v2    # "_hidl_array_item_0":[I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array element is not of the expected length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 116
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x90

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 117
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioGainConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 119
    return-void
.end method
