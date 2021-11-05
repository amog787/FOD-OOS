.class public final Landroid/hardware/health/V2_0/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"


# instance fields
.field public attr:Landroid/hardware/health/V2_0/StorageAttribute;

.field public eol:S

.field public lifetimeA:S

.field public lifetimeB:S

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/health/V2_0/StorageAttribute;

    invoke-direct {v0}, Landroid/hardware/health/V2_0/StorageAttribute;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 12
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 16
    iput-short v0, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 20
    iput-short v0, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

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
            "Landroid/hardware/health/V2_0/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/health/V2_0/StorageInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 94
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 95
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 96
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 95
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 99
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 101
    new-instance v5, Landroid/hardware/health/V2_0/StorageInfo;

    invoke-direct {v5}, Landroid/hardware/health/V2_0/StorageInfo;-><init>()V

    .line 102
    .local v5, "_hidl_vec_element":Landroid/hardware/health/V2_0/StorageInfo;
    mul-int/lit8 v6, v4, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/health/V2_0/StorageInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 103
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v5    # "_hidl_vec_element":Landroid/hardware/health/V2_0/StorageInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
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
            "Landroid/hardware/health/V2_0/StorageInfo;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/health/V2_0/StorageInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 135
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 136
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 137
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 138
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 139
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 140
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/health/V2_0/StorageInfo;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/health/V2_0/StorageInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 146
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 29
    return v0

    .line 31
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 32
    return v1

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V2_0/StorageInfo;

    if-eq v2, v3, :cond_2

    .line 35
    return v1

    .line 37
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/health/V2_0/StorageInfo;

    .line 38
    .local v2, "other":Landroid/hardware/health/V2_0/StorageInfo;
    iget-object v3, p0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    iget-object v4, v2, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 39
    return v1

    .line 41
    :cond_3
    iget-short v3, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    iget-short v4, v2, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    if-eq v3, v4, :cond_4

    .line 42
    return v1

    .line 44
    :cond_4
    iget-short v3, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    iget-short v4, v2, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    if-eq v3, v4, :cond_5

    .line 45
    return v1

    .line 47
    :cond_5
    iget-short v3, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    iget-short v4, v2, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    if-eq v3, v4, :cond_6

    .line 48
    return v1

    .line 50
    :cond_6
    iget-object v3, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 51
    return v1

    .line 53
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 59
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 60
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 61
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 62
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 58
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    move-object/from16 v15, p1

    invoke-virtual {v2, v15, v1, v5, v6}, Landroid/hardware/health/V2_0/StorageAttribute;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
    const-wide/16 v5, 0x18

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 114
    const-wide/16 v5, 0x1a

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 115
    const-wide/16 v5, 0x1c

    add-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 116
    const-wide/16 v5, 0x20

    add-long v7, p3, v5

    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 118
    nop

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v8, v2

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v5, p3, v5

    add-long v12, v5, v3

    .line 118
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 123
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 85
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 86
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/health/V2_0/StorageInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 87
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".attr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .eol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .lifetimeA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .lifetimeB = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-short v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 150
    iget-object v0, p0, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/health/V2_0/StorageAttribute;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 151
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 152
    const-wide/16 v0, 0x1a

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 153
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 154
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 155
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 126
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 127
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/health/V2_0/StorageInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 129
    return-void
.end method
