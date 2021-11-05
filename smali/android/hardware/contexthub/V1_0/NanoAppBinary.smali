.class public final Landroid/hardware/contexthub/V1_0/NanoAppBinary;
.super Ljava/lang/Object;
.source "NanoAppBinary.java"


# instance fields
.field public appId:J

.field public appVersion:I

.field public customBinary:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public targetChreApiMajorVersion:B

.field public targetChreApiMinorVersion:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 8
    iput-byte v0, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 9
    iput-byte v0, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

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
            "Landroid/hardware/contexthub/V1_0/NanoAppBinary;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/NanoAppBinary;>;"
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
    mul-int/lit8 v3, v2, 0x28

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
    new-instance v5, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v5}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    mul-int/lit8 v6, v4, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
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
            "Landroid/hardware/contexthub/V1_0/NanoAppBinary;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/NanoAppBinary;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 134
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 136
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 137
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 139
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 144
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 15
    return v0

    .line 17
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 18
    return v1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    if-eq v2, v3, :cond_2

    .line 21
    return v1

    .line 23
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    .line 24
    .local v2, "other":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    iget-wide v3, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    iget-wide v5, v2, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 25
    return v1

    .line 27
    :cond_3
    iget v3, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    if-eq v3, v4, :cond_4

    .line 28
    return v1

    .line 30
    :cond_4
    iget v3, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 31
    return v1

    .line 33
    :cond_5
    iget-byte v3, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    iget-byte v4, v2, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    if-eq v3, v4, :cond_6

    .line 34
    return v1

    .line 36
    :cond_6
    iget-byte v3, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    iget-byte v4, v2, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    if-eq v3, v4, :cond_7

    .line 37
    return v1

    .line 39
    :cond_7
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 40
    return v1

    .line 42
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 51
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 52
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 105
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 106
    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    .line 107
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    iput-byte v6, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 108
    const-wide/16 v6, 0x11

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    iput-byte v6, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 110
    const-wide/16 v6, 0x18

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 111
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v5, p3, v6

    add-long v13, v5, v2

    .line 111
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 115
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 117
    const/4 v5, 0x0

    .line 118
    .local v5, "_hidl_vec_element":B
    mul-int/lit8 v6, v3, 0x1

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 119
    iget-object v6, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ".appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", .appVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/NanoAppFlags;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .targetChreApiMajorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .targetChreApiMinorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .customBinary = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 11
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 149
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-wide v4, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 150
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 151
    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    iget v8, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 152
    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    iget-byte v8, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 153
    const-wide/16 v6, 0x11

    add-long/2addr v6, p2

    iget-byte v8, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 155
    iget-object v6, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 156
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v9, p2, v7

    add-long/2addr v9, v2

    invoke-virtual {p1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    add-long v2, p2, v7

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 158
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v6, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 159
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 160
    mul-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    iget-object v9, p0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v2, v4, v5, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v3    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v7, p2

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 164
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 125
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 128
    return-void
.end method
