.class public final Landroid/hardware/usb/V1_1/PortMode_1_1;
.super Ljava/lang/Object;
.source "PortMode_1_1.java"


# static fields
.field public static final AUDIO_ACCESSORY:I = 0x4

.field public static final DEBUG_ACCESSORY:I = 0x8

.field public static final DFP:I = 0x2

.field public static final DRP:I = 0x3

.field public static final NONE:I = 0x0

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_MODES_1_1:I = 0x10

.field public static final UFP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 66
    const-string v2, "UFP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x1

    .line 69
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 70
    const-string v2, "DFP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x2

    .line 73
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 74
    const-string v2, "DRP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x3

    .line 77
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 78
    const-string v2, "NUM_MODES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x4

    .line 81
    :cond_3
    and-int/lit8 v2, p0, 0x4

    if-ne v2, v3, :cond_4

    .line 82
    const-string v2, "AUDIO_ACCESSORY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x4

    .line 85
    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 86
    const-string v2, "DEBUG_ACCESSORY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x8

    .line 89
    :cond_5
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    .line 90
    const-string v2, "NUM_MODES_1_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x10

    .line 93
    :cond_6
    if-eq p0, v1, :cond_7

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 34
    if-nez p0, :cond_0

    .line 35
    const-string v0, "NONE"

    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 38
    const-string v0, "UFP"

    return-object v0

    .line 40
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 41
    const-string v0, "DFP"

    return-object v0

    .line 43
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 44
    const-string v0, "DRP"

    return-object v0

    .line 46
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 47
    const-string v0, "NUM_MODES"

    return-object v0

    .line 49
    :cond_4
    if-ne p0, v0, :cond_5

    .line 50
    const-string v0, "AUDIO_ACCESSORY"

    return-object v0

    .line 52
    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_6

    .line 53
    const-string v0, "DEBUG_ACCESSORY"

    return-object v0

    .line 55
    :cond_6
    const/16 v0, 0x10

    if-ne p0, v0, :cond_7

    .line 56
    const-string v0, "NUM_MODES_1_1"

    return-object v0

    .line 58
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
