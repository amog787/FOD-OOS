.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;
.super Ljava/lang/Object;
.source "FingerprintAuthenticated.java"


# instance fields
.field public finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

.field public hat:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    .line 12
    const/16 v0, 0x45

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->hat:[B

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
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 64
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 65
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x50

    int-to-long v5, v3

    .line 66
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 65
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 69
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 71
    new-instance v5, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;

    invoke-direct {v5}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;-><init>()V

    .line 72
    .local v5, "_hidl_vec_element":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;
    mul-int/lit8 v6, v4, 0x50

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 73
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v5    # "_hidl_vec_element":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
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
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 100
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 101
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 102
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 103
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x50

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 105
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;

    mul-int/lit8 v5, v3, 0x50

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 110
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 111
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 17
    return v0

    .line 19
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;

    if-eq v2, v3, :cond_2

    .line 23
    return v1

    .line 25
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;

    .line 26
    .local v2, "other":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    iget-object v4, v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 27
    return v1

    .line 29
    :cond_3
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->hat:[B

    iget-object v4, v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->hat:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 30
    return v1

    .line 32
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    .line 38
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->hat:[B

    .line 39
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 82
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 84
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 85
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->hat:[B

    const/16 v3, 0x45

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 86
    nop

    .line 88
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 55
    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 56
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 57
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ".finger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", .hat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->hat:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 5
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 115
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 117
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 118
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->hat:[B

    .line 120
    .local v2, "_hidl_array_item_0":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    const/16 v4, 0x45

    if-ne v3, v4, :cond_0

    .line 124
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 125
    nop

    .line 127
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_array_item_0":[B
    return-void

    .line 121
    .restart local v0    # "_hidl_array_offset_0":J
    .restart local v2    # "_hidl_array_item_0":[B
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array element is not of the expected length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 91
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 92
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAuthenticated;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 94
    return-void
.end method
