.class public final Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
.super Ljava/lang/Object;
.source "ProgramFilter.java"


# instance fields
.field public excludeModifications:Z

.field public identifierTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public identifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public includeCategories:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

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
            "Landroid/hardware/broadcastradio/V2_0/ProgramFilter;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/ProgramFilter;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 99
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 100
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 101
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 100
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 104
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 106
    new-instance v5, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {v5}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 107
    .local v5, "_hidl_vec_element":Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    mul-int/lit8 v6, v4, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v5    # "_hidl_vec_element":Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
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
            "Landroid/hardware/broadcastradio/V2_0/ProgramFilter;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/ProgramFilter;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 157
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 159
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 160
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 161
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 162
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 167
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 168
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 40
    return v0

    .line 42
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 43
    return v1

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    if-eq v2, v3, :cond_2

    .line 46
    return v1

    .line 48
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    .line 49
    .local v2, "other":Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    iget-object v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 50
    return v1

    .line 52
    :cond_3
    iget-object v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 53
    return v1

    .line 55
    :cond_4
    iget-boolean v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    iget-boolean v4, v2, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    if-eq v3, v4, :cond_5

    .line 56
    return v1

    .line 58
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    iget-boolean v4, v2, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    if-eq v3, v4, :cond_6

    .line 59
    return v1

    .line 61
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 67
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 68
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 119
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, p3, v2

    add-long/2addr v13, v2

    .line 119
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 123
    .local v5, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 124
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 126
    mul-int/lit8 v9, v8, 0x4

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 127
    .local v9, "_hidl_vec_element":I
    iget-object v10, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v9    # "_hidl_vec_element":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 131
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x10

    add-long v8, p3, v4

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 132
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x10

    int-to-long v9, v7

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v4, p3, v4

    add-long v13, v4, v2

    const/4 v15, 0x1

    .line 132
    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 136
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 137
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 138
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 139
    .local v4, "_hidl_vec_element":Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    mul-int/lit8 v5, v3, 0x10

    int-to-long v7, v5

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v2, v7, v8}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 140
    iget-object v7, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v4    # "_hidl_vec_element":Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p1

    .line 143
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 144
    const-wide/16 v2, 0x21

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 145
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 90
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 91
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 92
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ".identifierTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", .identifiers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", .includeCategories = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .excludeModifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 173
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 174
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 175
    add-long v5, p2, v3

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 176
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 177
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 178
    mul-int/lit8 v12, v6, 0x4

    int-to-long v12, v12

    iget-object v14, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 177
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 180
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long v12, p2, v3

    add-long/2addr v12, v3

    invoke-virtual {v1, v12, v13, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 183
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 184
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x10

    add-long v12, p2, v5

    add-long/2addr v12, v7

    invoke-virtual {v1, v12, v13, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 185
    add-long v7, p2, v5

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 186
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 187
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_1
    if-ge v8, v2, :cond_1

    .line 188
    iget-object v9, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    mul-int/lit8 v10, v8, 0x10

    int-to-long v10, v10

    invoke-virtual {v9, v7, v10, v11}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 187
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 190
    .end local v8    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 192
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x20

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 193
    const-wide/16 v2, 0x21

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 194
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 148
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 149
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 151
    return-void
.end method
