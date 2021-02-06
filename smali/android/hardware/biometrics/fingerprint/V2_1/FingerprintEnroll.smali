.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;
.super Ljava/lang/Object;
.source "FingerprintEnroll.java"


# instance fields
.field public finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

.field public msg:J

.field public samplesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->samplesRemaining:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->msg:J

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
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 75
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 76
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 77
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 76
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 80
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 82
    new-instance v5, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;

    invoke-direct {v5}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;-><init>()V

    .line 83
    .local v5, "_hidl_vec_element":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;
    mul-int/lit8 v6, v4, 0x18

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 84
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v5    # "_hidl_vec_element":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
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
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 108
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 109
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 110
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 111
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 112
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 113
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 118
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 119
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 21
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 22
    return v0

    .line 24
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 25
    return v1

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;

    if-eq v2, v3, :cond_2

    .line 28
    return v1

    .line 30
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;

    .line 31
    .local v2, "other":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    iget-object v4, v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 32
    return v1

    .line 34
    :cond_3
    iget v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->samplesRemaining:I

    iget v4, v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->samplesRemaining:I

    if-eq v3, v4, :cond_4

    .line 35
    return v1

    .line 37
    :cond_4
    iget-wide v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->msg:J

    iget-wide v5, v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->msg:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 38
    return v1

    .line 40
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->samplesRemaining:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->msg:J

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 93
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->samplesRemaining:I

    .line 95
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->msg:J

    .line 96
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 66
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 67
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 68
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ".finger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", .samplesRemaining = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->samplesRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-wide v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->msg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 123
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->finger:Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintFingerId;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 124
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->samplesRemaining:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 125
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->msg:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 126
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 99
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 100
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintEnroll;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 102
    return-void
.end method
