.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Properties"
.end annotation


# instance fields
.field public captureTransition:Z

.field public concurrentCapture:Z

.field public description:Ljava/lang/String;

.field public implementor:Ljava/lang/String;

.field public maxBufferMs:I

.field public maxKeyPhrases:I

.field public maxSoundModels:I

.field public maxUsers:I

.field public powerConsumptionMw:I

.field public recognitionModes:I

.field public triggerInEvent:Z

.field public uuid:Landroid/hardware/audio/common/V2_0/Uuid;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 102
    new-instance v1, Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-direct {v1}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    iput-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 106
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 110
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 114
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 118
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 122
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 126
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 130
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 134
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 139
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 257
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 258
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 259
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 258
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 262
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 264
    new-instance v5, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-direct {v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;-><init>()V

    .line 265
    .local v5, "_hidl_vec_element":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 266
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v5    # "_hidl_vec_element":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 312
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 313
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 314
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 315
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 316
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 317
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 322
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 323
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 144
    return v0

    .line 146
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 147
    return v1

    .line 149
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    if-eq v2, v3, :cond_2

    .line 150
    return v1

    .line 152
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 153
    .local v2, "other":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 154
    return v1

    .line 156
    :cond_3
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 157
    return v1

    .line 159
    :cond_4
    iget v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    iget v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    if-eq v3, v4, :cond_5

    .line 160
    return v1

    .line 162
    :cond_5
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 163
    return v1

    .line 165
    :cond_6
    iget v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    iget v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    if-eq v3, v4, :cond_7

    .line 166
    return v1

    .line 168
    :cond_7
    iget v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    iget v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    if-eq v3, v4, :cond_8

    .line 169
    return v1

    .line 171
    :cond_8
    iget v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    iget v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    if-eq v3, v4, :cond_9

    .line 172
    return v1

    .line 174
    :cond_9
    iget v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    iget v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    if-eq v3, v4, :cond_a

    .line 175
    return v1

    .line 177
    :cond_a
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    if-eq v3, v4, :cond_b

    .line 178
    return v1

    .line 180
    :cond_b
    iget v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    iget v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    if-eq v3, v4, :cond_c

    .line 181
    return v1

    .line 183
    :cond_c
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    if-eq v3, v4, :cond_d

    .line 184
    return v1

    .line 186
    :cond_d
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    if-eq v3, v4, :cond_e

    .line 187
    return v1

    .line 189
    :cond_e
    iget v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    iget v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    if-eq v3, v4, :cond_f

    .line 190
    return v1

    .line 192
    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 197
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 198
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 199
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 201
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 208
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 209
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 197
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 275
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 277
    nop

    .line 278
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 277
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 282
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 284
    nop

    .line 285
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 284
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 289
    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 290
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    const-wide/16 v3, 0x24

    add-long v3, p3, v3

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/hardware/audio/common/V2_0/Uuid;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 291
    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 292
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 293
    const-wide/16 v2, 0x3c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 294
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 295
    const-wide/16 v2, 0x44

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 296
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 297
    const-wide/16 v2, 0x4c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 298
    const-wide/16 v2, 0x4d

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 299
    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 300
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 248
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 249
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 250
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ".implementor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ", .description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", .version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", .uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ", .maxSoundModels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", .maxKeyPhrases = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ", .maxUsers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, ", .recognitionModes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, ", .captureTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ", .maxBufferMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ", .concurrentCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ", .triggerInEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ", .powerConsumptionMw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 327
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 328
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 329
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 330
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    const-wide/16 v1, 0x24

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/audio/common/V2_0/Uuid;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 331
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 332
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 333
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 334
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 335
    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 336
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 337
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 338
    const-wide/16 v0, 0x4d

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 339
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 340
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 303
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 304
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 306
    return-void
.end method
