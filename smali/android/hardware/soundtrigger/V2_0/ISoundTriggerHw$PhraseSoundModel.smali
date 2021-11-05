.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhraseSoundModel"
.end annotation


# instance fields
.field public common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

.field public phrases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;",
            ">;"
        }
    .end annotation

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 755
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 756
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 757
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 756
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 760
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 761
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 762
    new-instance v5, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 763
    .local v5, "_hidl_vec_element":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    mul-int/lit8 v6, v4, 0x48

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 764
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .end local v5    # "_hidl_vec_element":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 768
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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;",
            ">;)V"
        }
    .end annotation

    .line 797
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 799
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 800
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 801
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 802
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 803
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 804
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 803
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 806
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 809
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 810
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 707
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 708
    return v0

    .line 710
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 711
    return v1

    .line 713
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    if-eq v2, v3, :cond_2

    .line 714
    return v1

    .line 716
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    .line 717
    .local v2, "other":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 718
    return v1

    .line 720
    :cond_3
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 721
    return v1

    .line 723
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 728
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 729
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    .line 730
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 728
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 773
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v9, v10, v4, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 775
    const-wide/16 v4, 0x38

    add-long v6, p3, v4

    const-wide/16 v11, 0x8

    add-long/2addr v6, v11

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 776
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v1, v11, 0x38

    int-to-long v6, v1

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v4, p3, v4

    add-long v14, v4, v2

    .line 776
    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide v4, v12

    move-wide v6, v14

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 780
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 781
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 782
    new-instance v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    invoke-direct {v3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;-><init>()V

    .line 783
    .local v3, "_hidl_vec_element":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
    mul-int/lit8 v4, v2, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 784
    iget-object v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v3    # "_hidl_vec_element":Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 787
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 746
    const-wide/16 v0, 0x48

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 747
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 748
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, ".common = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, ", .phrases = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 741
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 814
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 816
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 817
    .local v0, "_hidl_vec_size":I
    const-wide/16 v3, 0x38

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 818
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 819
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x38

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 820
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 821
    iget-object v7, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    mul-int/lit8 v8, v6, 0x38

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 820
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 823
    .end local v6    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 825
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 790
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 791
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 792
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 793
    return-void
.end method
