.class Lcom/android/server/broadcastradio/hal2/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;,
        Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.convert"

.field private static final metadataKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    .line 306
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const/4 v4, 0x0

    const-string v5, "android.hardware.radio.metadata.RDS_PS"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.RDS_PTY"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.RDS_RT"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.TITLE"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.ARTIST"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.ALBUM"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.ICON"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.ART"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v5, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;Lcom/android/server/broadcastradio/hal2/Convert$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static amfmConfigToBands(Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 20
    .param p0, "config"    # Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 169
    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v1

    .line 171
    :cond_0
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 172
    .local v1, "len":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v2, "bands":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$BandDescriptor;>;"
    const/4 v14, 0x0

    .line 177
    .local v14, "region":I
    iget-object v3, v0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    .line 178
    .local v13, "range":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    iget v3, v13, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Utils;->getBand(I)Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    move-result-object v12

    .line 179
    .local v12, "bandType":Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    sget-object v3, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    if-ne v12, v3, :cond_1

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown frequency band at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "kHz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BcRadio2Srv.convert"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_0

    .line 183
    :cond_1
    sget-object v3, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    if-ne v12, v3, :cond_2

    .line 184
    new-instance v11, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    const/4 v5, 0x1

    iget v6, v13, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v7, v13, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v8, v13, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v3, v11

    move v4, v14

    move-object/from16 v19, v11

    move/from16 v11, v16

    move-object/from16 v16, v12

    .end local v12    # "bandType":Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .local v16, "bandType":Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    move/from16 v12, v17

    move-object v0, v13

    .end local v13    # "range":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    .local v0, "range":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    move/from16 v13, v18

    invoke-direct/range {v3 .. v13}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    move-object/from16 v3, v19

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v0    # "range":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    .end local v16    # "bandType":Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .restart local v12    # "bandType":Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .restart local v13    # "range":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    :cond_2
    move-object/from16 v16, v12

    move-object v0, v13

    .end local v12    # "bandType":Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .end local v13    # "range":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    .restart local v0    # "range":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    .restart local v16    # "bandType":Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    new-instance v10, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    const/4 v5, 0x0

    iget v6, v0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v7, v0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v8, v0, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    const/4 v9, 0x1

    move-object v3, v10

    move v4, v14

    invoke-direct/range {v3 .. v9}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v0    # "range":Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;
    .end local v16    # "bandType":Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    :goto_1
    move-object/from16 v0, p0

    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public static announcementFromHal(Landroid/hardware/broadcastradio/V2_0/Announcement;)Landroid/hardware/radio/Announcement;
    .locals 4
    .param p0, "hwAnnouncement"    # Landroid/hardware/broadcastradio/V2_0/Announcement;

    .line 404
    new-instance v0, Landroid/hardware/radio/Announcement;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 405
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    iget-object v3, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    .line 407
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    .line 404
    return-object v0
.end method

.method private static dabConfigFromHal(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/DabTableEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 205
    .local p0, "config":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$5i7ED5vyX8wi_iS2sa2DsapHYc0;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$5i7ED5vyX8wi_iS2sa2DsapHYc0;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static identifierTypeToProgramType(I)I
    .locals 1
    .param p0, "idType"    # I

    .line 117
    packed-switch p0, :pswitch_data_0

    .line 137
    :pswitch_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_0

    .line 139
    return p0

    .line 135
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 132
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 129
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 124
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 121
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static identifierTypesToProgramTypes([I)[I
    .locals 6
    .param p0, "idTypes"    # [I

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v0, "pTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p0, v2

    .line 149
    .local v3, "idType":I
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypeToProgramType(I)I

    move-result v4

    .line 151
    .local v4, "pType":I
    if-nez v4, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 156
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 160
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v3    # "idType":I
    .end local v4    # "pType":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$dabConfigFromHal$0(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    .line 206
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$dabConfigFromHal$1(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/Integer;
    .locals 1
    .param p0, "e"    # Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    .line 206
    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$programFilterToHal$4(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 2
    .param p0, "hwFilter"    # Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 385
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$programInfoFromHal$3(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1
    .param p0, "id"    # Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 363
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method static synthetic lambda$programListChunkFromHal$5(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 1
    .param p0, "info"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 394
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$programListChunkFromHal$6(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1
    .param p0, "id"    # Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 396
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method static synthetic lambda$programSelectorFromHal$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1
    .param p0, "x$0"    # I

    .line 282
    new-array v0, p0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method static listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 412
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 414
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static metadataFromHal(Ljava/util/ArrayList;)Landroid/hardware/radio/RadioMetadata;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/Metadata;",
            ">;)",
            "Landroid/hardware/radio/RadioMetadata;"
        }
    .end annotation

    .line 341
    .local p0, "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/Metadata;>;"
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Builder;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    .line 343
    .local v0, "builder":Landroid/hardware/radio/RadioMetadata$Builder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/Metadata;

    .line 344
    .local v2, "entry":Landroid/hardware/broadcastradio/V2_0/Metadata;
    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert;->metadataKeys:Ljava/util/Map;

    iget v4, v2, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    .line 345
    .local v3, "keyDef":Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;
    if-nez v3, :cond_0

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored unknown metadata entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    invoke-static {v5}, Landroid/hardware/broadcastradio/V2_0/MetadataKey;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BcRadio2Srv.convert"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    goto :goto_0

    .line 349
    :cond_0
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->access$100(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    move-result-object v4

    sget-object v5, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    if-ne v4, v5, :cond_1

    .line 350
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->access$200(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/broadcastradio/V2_0/Metadata;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 354
    :cond_1
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->access$200(Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v2, Landroid/hardware/broadcastradio/V2_0/Metadata;->intValue:J

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    .line 356
    .end local v2    # "entry":Landroid/hardware/broadcastradio/V2_0/Metadata;
    .end local v3    # "keyDef":Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;
    :goto_1
    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    move-result-object v1

    return-object v1
.end method

.method static programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    .locals 4
    .param p0, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 379
    if-nez p0, :cond_0

    new-instance v0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    move-object p0, v0

    .line 381
    :cond_0
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 383
    .local v0, "hwFilter":Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/-$$Lambda$A5EcwDaVFNoKb_4sV0_1Yu9f7d4;

    invoke-direct {v3, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$A5EcwDaVFNoKb_4sV0_1Yu9f7d4;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 384
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$4vXI6RX0Vlx-WE_lYnJTBSNvM-M;

    invoke-direct {v2, v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$4vXI6RX0Vlx-WE_lYnJTBSNvM-M;-><init>(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 386
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 387
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 389
    return-object v0
.end method

.method static programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 4
    .param p0, "id"    # Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 262
    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 263
    :cond_0
    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    iget-wide v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    return-object v0
.end method

.method static programIdentifierToHal(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    .locals 1
    .param p0, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 255
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 256
    .local v0, "hwId":Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    invoke-static {v0, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    .line 257
    return-object v0
.end method

.method static programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 2
    .param p0, "hwId"    # Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 249
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 250
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    .line 251
    return-void
.end method

.method static programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 11
    .param p0, "info"    # Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 362
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$HR1t3HnLMLNA3jZqzjEAao66N98;

    .line 363
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 364
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 366
    .local v0, "relatedContent":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    new-instance v10, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 367
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 368
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 369
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    iget v6, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    iget v7, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 373
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->metadataFromHal(Ljava/util/ArrayList;)Landroid/hardware/radio/RadioMetadata;

    move-result-object v8

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 374
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    move-object v1, v10

    move-object v5, v0

    invoke-direct/range {v1 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V

    .line 366
    return-object v10
.end method

.method static programListChunkFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;
    .locals 5
    .param p0, "chunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 393
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$P20z6nVni7Z0919gQ-M-2S9sxbM;

    .line 394
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 395
    .local v0, "modified":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$u-leEnQPvLcMEC_-sDr7j1Ka-T0;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$u-leEnQPvLcMEC_-sDr7j1Ka-T0;

    .line 396
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 397
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 399
    .local v1, "removed":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    new-instance v2, Landroid/hardware/radio/ProgramList$Chunk;

    iget-boolean v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    iget-boolean v4, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method

.method static programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .locals 5
    .param p0, "sel"    # Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 280
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$LWyJkMwbnlAczPrMYjWRbiucHI4;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$LWyJkMwbnlAczPrMYjWRbiucHI4;

    .line 281
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$orrX1qQ1nXd8k5pLkjug2DaCbzI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$Dv81zZf4-dKkZJxVC6zm8CtQ2wE;

    .line 282
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 284
    .local v0, "secondaryIds":[Landroid/hardware/radio/ProgramSelector$Identifier;
    new-instance v1, Landroid/hardware/radio/ProgramSelector;

    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    iget v2, v2, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    .line 285
    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypeToProgramType(I)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 286
    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    .line 284
    return-object v1
.end method

.method static programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .locals 4
    .param p0, "sel"    # Landroid/hardware/radio/ProgramSelector;

    .line 268
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 271
    .local v0, "hwSel":Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierToHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    .line 272
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Wd4_5eHLstX9rw-52AhlvWR6dfo;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Wd4_5eHLstX9rw-52AhlvWR6dfo;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/-$$Lambda$pxxBeAmtGFx0TmOA-6MMwqs_fi0;

    invoke-direct {v3, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$pxxBeAmtGFx0TmOA-6MMwqs_fi0;-><init>(Ljava/util/ArrayList;)V

    .line 273
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 275
    return-object v0
.end method

.method static propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 22
    .param p0, "id"    # I
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "prop"    # Landroid/hardware/broadcastradio/V2_0/Properties;
    .param p3, "amfmConfig"    # Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/hardware/broadcastradio/V2_0/Properties;",
            "Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/DabTableEntry;",
            ">;)",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;"
        }
    .end annotation

    .local p4, "dabConfig":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;"
    move-object/from16 v0, p2

    move/from16 v2, p0

    move-object/from16 v3, p1

    .line 212
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 216
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v19

    .local v19, "supportedIdentifierTypes":[I
    move-object/from16 v16, v19

    .line 217
    invoke-static/range {v19 .. v19}, Lcom/android/server/broadcastradio/hal2/Convert;->identifierTypesToProgramTypes([I)[I

    move-result-object v20

    .local v20, "supportedProgramTypes":[I
    move-object/from16 v15, v20

    .line 219
    new-instance v21, Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-object/from16 v1, v21

    iget-object v5, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    iget-object v7, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 238
    invoke-static/range {p3 .. p3}, Lcom/android/server/broadcastradio/hal2/Convert;->amfmConfigToBands(Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v13

    .line 242
    invoke-static/range {p4 .. p4}, Lcom/android/server/broadcastradio/hal2/Convert;->dabConfigFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v17

    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 243
    invoke-static {v4}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v18

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v18}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    .line 219
    return-object v21
.end method

.method static throwOnError(Ljava/lang/String;I)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "result"    # I

    .line 59
    packed-switch p1, :pswitch_data_0

    .line 75
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": unknown error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 73
    :pswitch_0
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": TIMEOUT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 71
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": INVALID_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": INVALID_ARGUMENTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_4
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": INTERNAL_ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 63
    :pswitch_5
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": UNKNOWN_ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 61
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    .local p0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 105
    .local v2, "kvp":Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
    iget-object v3, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    iget-object v3, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v2    # "kvp":Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
    goto :goto_0

    .line 106
    .restart local v2    # "kvp":Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
    :cond_2
    :goto_1
    const-string v3, "BcRadio2Srv.convert"

    const-string v4, "VendorKeyValue contains null pointers"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto :goto_0

    .line 112
    .end local v2    # "kvp":Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
    :cond_3
    return-object v0
.end method

.method static vendorInfoToHal(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;"
        }
    .end annotation

    .line 82
    .local p0, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 87
    .local v3, "elem":Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 89
    iget-object v4, v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "elem":Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
    goto :goto_0

    .line 90
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "elem":Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
    :cond_2
    :goto_1
    const-string v4, "BcRadio2Srv.convert"

    const-string v5, "VendorKeyValue contains null pointers"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_0

    .line 96
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "elem":Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
    :cond_3
    return-object v0
.end method
