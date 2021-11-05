.class public final Lvendor/oneplus/hardware/display/V1_0/ColorGamut;
.super Ljava/lang/Object;
.source "ColorGamut.java"


# instance fields
.field public blue:[I

.field public cyan:[I

.field public green:[I

.field public magenta:[I

.field public red:[I

.field public whitePoint:[I

.field public yellow:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->red:[I

    .line 6
    new-array v1, v0, [I

    iput-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->green:[I

    .line 7
    new-array v1, v0, [I

    iput-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->blue:[I

    .line 8
    new-array v1, v0, [I

    iput-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->cyan:[I

    .line 9
    new-array v1, v0, [I

    iput-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->magenta:[I

    .line 10
    new-array v1, v0, [I

    iput-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->yellow:[I

    .line 11
    new-array v0, v0, [I

    iput-object v0, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->whitePoint:[I

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
            "Lvendor/oneplus/hardware/display/V1_0/ColorGamut;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oneplus/hardware/display/V1_0/ColorGamut;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 93
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 94
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x54

    int-to-long v5, v3

    .line 95
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 94
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 98
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 100
    new-instance v5, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;

    invoke-direct {v5}, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;-><init>()V

    .line 101
    .local v5, "_hidl_vec_element":Lvendor/oneplus/hardware/display/V1_0/ColorGamut;
    mul-int/lit8 v6, v4, 0x54

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v5    # "_hidl_vec_element":Lvendor/oneplus/hardware/display/V1_0/ColorGamut;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
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
            "Lvendor/oneplus/hardware/display/V1_0/ColorGamut;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oneplus/hardware/display/V1_0/ColorGamut;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 159
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 160
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 161
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x54

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 163
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;

    mul-int/lit8 v5, v3, 0x54

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 168
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 169
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 15
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 16
    return v0

    .line 18
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 19
    return v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;

    if-eq v2, v3, :cond_2

    .line 22
    return v1

    .line 24
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;

    .line 25
    .local v2, "other":Lvendor/oneplus/hardware/display/V1_0/ColorGamut;
    iget-object v3, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->red:[I

    iget-object v4, v2, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->red:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 26
    return v1

    .line 28
    :cond_3
    iget-object v3, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->green:[I

    iget-object v4, v2, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->green:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 29
    return v1

    .line 31
    :cond_4
    iget-object v3, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->blue:[I

    iget-object v4, v2, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->blue:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 32
    return v1

    .line 34
    :cond_5
    iget-object v3, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->cyan:[I

    iget-object v4, v2, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->cyan:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 35
    return v1

    .line 37
    :cond_6
    iget-object v3, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->magenta:[I

    iget-object v4, v2, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->magenta:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 38
    return v1

    .line 40
    :cond_7
    iget-object v3, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->yellow:[I

    iget-object v4, v2, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->yellow:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 41
    return v1

    .line 43
    :cond_8
    iget-object v3, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->whitePoint:[I

    iget-object v4, v2, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->whitePoint:[I

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 44
    return v1

    .line 46
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->red:[I

    .line 52
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->green:[I

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->blue:[I

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->cyan:[I

    .line 55
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->magenta:[I

    .line 56
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->yellow:[I

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->whitePoint:[I

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 112
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 113
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->red:[I

    const/4 v3, 0x3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 114
    nop

    .line 117
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 118
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->green:[I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 119
    nop

    .line 122
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 123
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->blue:[I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 124
    nop

    .line 127
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    .line 128
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->cyan:[I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 129
    nop

    .line 132
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    .line 133
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->magenta:[I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 134
    nop

    .line 137
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p3

    .line 138
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->yellow:[I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 139
    nop

    .line 142
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x48

    add-long/2addr v0, p3

    .line 143
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->whitePoint:[I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    .line 144
    nop

    .line 146
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 84
    const-wide/16 v0, 0x54

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 85
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ".red = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->red:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .green = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->green:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .blue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->blue:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .cyan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->cyan:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .magenta = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->magenta:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .yellow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->yellow:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .whitePoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->whitePoint:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 174
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 175
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->red:[I

    .line 177
    .local v2, "_hidl_array_item_0":[I
    const-string v3, "Array element is not of the expected length"

    if-eqz v2, :cond_6

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 181
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 182
    nop

    .line 185
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[I
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 186
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->green:[I

    .line 188
    .restart local v2    # "_hidl_array_item_0":[I
    if-eqz v2, :cond_5

    array-length v4, v2

    if-ne v4, v5, :cond_5

    .line 192
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 193
    nop

    .line 196
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[I
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 197
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->blue:[I

    .line 199
    .restart local v2    # "_hidl_array_item_0":[I
    if-eqz v2, :cond_4

    array-length v4, v2

    if-ne v4, v5, :cond_4

    .line 203
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 204
    nop

    .line 207
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[I
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 208
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->cyan:[I

    .line 210
    .restart local v2    # "_hidl_array_item_0":[I
    if-eqz v2, :cond_3

    array-length v4, v2

    if-ne v4, v5, :cond_3

    .line 214
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 215
    nop

    .line 218
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[I
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 219
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->magenta:[I

    .line 221
    .restart local v2    # "_hidl_array_item_0":[I
    if-eqz v2, :cond_2

    array-length v4, v2

    if-ne v4, v5, :cond_2

    .line 225
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 226
    nop

    .line 229
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[I
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    .line 230
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->yellow:[I

    .line 232
    .restart local v2    # "_hidl_array_item_0":[I
    if-eqz v2, :cond_1

    array-length v4, v2

    if-ne v4, v5, :cond_1

    .line 236
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 237
    nop

    .line 240
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[I
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    .line 241
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->whitePoint:[I

    .line 243
    .restart local v2    # "_hidl_array_item_0":[I
    if-eqz v2, :cond_0

    array-length v4, v2

    if-ne v4, v5, :cond_0

    .line 247
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    .line 248
    nop

    .line 250
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[I
    return-void

    .line 244
    .restart local v0    # "_hidl_array_offset_0":J
    .restart local v2    # "_hidl_array_item_0":[I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 233
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 149
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x54

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 150
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/ColorGamut;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 152
    return-void
.end method
