.class public final Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;
.super Ljava/lang/Object;
.source "OptionalModelParameterRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;
    }
.end annotation


# instance fields
.field private hidl_d:B

.field private hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 7
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
            "Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 130
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 131
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 132
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 131
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 135
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 137
    new-instance v5, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-direct {v5}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;-><init>()V

    .line 138
    .local v5, "_hidl_vec_element":Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;
    mul-int/lit8 v6, v4, 0xc

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 139
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v5    # "_hidl_vec_element":Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
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
            "Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 176
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 177
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 178
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 179
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0xc

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 180
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 181
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    mul-int/lit8 v5, v3, 0xc

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 186
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 187
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 75
    return v1

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    if-eq v2, v3, :cond_2

    .line 78
    return v1

    .line 80
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    .line 81
    .local v2, "other":Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;
    iget-byte v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    if-eq v3, v4, :cond_3

    .line 82
    return v1

    .line 84
    :cond_3
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 85
    return v1

    .line 87
    :cond_4
    return v0
.end method

.method public getDiscriminator()B
    .locals 1

    .line 67
    iget-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 94
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 92
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public noinit()Landroid/hidl/safe_union/V1_0/Monostate;
    .locals 4

    .line 32
    iget-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    .line 34
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 37
    invoke-static {v3}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hidl/safe_union/V1_0/Monostate;

    return-object v0
.end method

.method public noinit(Landroid/hidl/safe_union/V1_0/Monostate;)V
    .locals 1
    .param p1, "noinit"    # Landroid/hidl/safe_union/V1_0/Monostate;

    .line 27
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 28
    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .locals 4

    .line 52
    iget-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    .line 54
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 57
    invoke-static {v3}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    return-object v0
.end method

.method public range(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)V
    .locals 1
    .param p1, "range"    # Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 47
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 48
    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 148
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 149
    const-wide/16 v1, 0x4

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 156
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 157
    check-cast v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 158
    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 152
    check-cast v0, Landroid/hidl/safe_union/V1_0/Monostate;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 153
    nop

    .line 164
    :goto_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 121
    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 122
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-byte v1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 108
    const-string v1, ".range = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    const-string v1, ".noinit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    nop

    .line 116
    :goto_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 191
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 192
    iget-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 199
    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hidl/safe_union/V1_0/Monostate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 195
    nop

    .line 205
    :goto_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 167
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 168
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 170
    return-void
.end method
