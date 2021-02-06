.class public final Landroid/hardware/audio/common/V2_0/AudioOutputFlag;
.super Ljava/lang/Object;
.source "AudioOutputFlag.java"


# static fields
.field public static final COMPRESS_OFFLOAD:I = 0x10

.field public static final DEEP_BUFFER:I = 0x8

.field public static final DIRECT:I = 0x1

.field public static final DIRECT_PCM:I = 0x2000

.field public static final FAST:I = 0x4

.field public static final HW_AV_SYNC:I = 0x40

.field public static final IEC958_NONAUDIO:I = 0x400

.field public static final MMAP_NOIRQ:I = 0x4000

.field public static final NONE:I = 0x0

.field public static final NON_BLOCKING:I = 0x20

.field public static final PRIMARY:I = 0x2

.field public static final RAW:I = 0x100

.field public static final SYNC:I = 0x200

.field public static final TTS:I = 0x80

.field public static final VOIP_RX:I = 0x8000


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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 72
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 74
    const-string v2, "DIRECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x1

    .line 77
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 78
    const-string v2, "PRIMARY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x2

    .line 81
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 82
    const-string v2, "FAST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x4

    .line 85
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 86
    const-string v2, "DEEP_BUFFER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x8

    .line 89
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 90
    const-string v2, "COMPRESS_OFFLOAD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x10

    .line 93
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 94
    const-string v2, "NON_BLOCKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x20

    .line 97
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 98
    const-string v2, "HW_AV_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x40

    .line 101
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 102
    const-string v2, "TTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit16 v1, v1, 0x80

    .line 105
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 106
    const-string v2, "RAW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit16 v1, v1, 0x100

    .line 109
    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 110
    const-string v2, "SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit16 v1, v1, 0x200

    .line 113
    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 114
    const-string v2, "IEC958_NONAUDIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit16 v1, v1, 0x400

    .line 117
    :cond_a
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_b

    .line 118
    const-string v2, "DIRECT_PCM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit16 v1, v1, 0x2000

    .line 121
    :cond_b
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_c

    .line 122
    const-string v2, "MMAP_NOIRQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit16 v1, v1, 0x4000

    .line 125
    :cond_c
    const v2, 0x8000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d

    .line 126
    const-string v3, "VOIP_RX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/2addr v1, v2

    .line 129
    :cond_d
    if-eq p0, v1, :cond_e

    .line 130
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

    .line 132
    :cond_e
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 21
    if-nez p0, :cond_0

    .line 22
    const-string v0, "NONE"

    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 25
    const-string v0, "DIRECT"

    return-object v0

    .line 27
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 28
    const-string v0, "PRIMARY"

    return-object v0

    .line 30
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 31
    const-string v0, "FAST"

    return-object v0

    .line 33
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 34
    const-string v0, "DEEP_BUFFER"

    return-object v0

    .line 36
    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    .line 37
    const-string v0, "COMPRESS_OFFLOAD"

    return-object v0

    .line 39
    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    .line 40
    const-string v0, "NON_BLOCKING"

    return-object v0

    .line 42
    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    .line 43
    const-string v0, "HW_AV_SYNC"

    return-object v0

    .line 45
    :cond_7
    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    .line 46
    const-string v0, "TTS"

    return-object v0

    .line 48
    :cond_8
    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    .line 49
    const-string v0, "RAW"

    return-object v0

    .line 51
    :cond_9
    const/16 v0, 0x200

    if-ne p0, v0, :cond_a

    .line 52
    const-string v0, "SYNC"

    return-object v0

    .line 54
    :cond_a
    const/16 v0, 0x400

    if-ne p0, v0, :cond_b

    .line 55
    const-string v0, "IEC958_NONAUDIO"

    return-object v0

    .line 57
    :cond_b
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_c

    .line 58
    const-string v0, "DIRECT_PCM"

    return-object v0

    .line 60
    :cond_c
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_d

    .line 61
    const-string v0, "MMAP_NOIRQ"

    return-object v0

    .line 63
    :cond_d
    const v0, 0x8000

    if-ne p0, v0, :cond_e

    .line 64
    const-string v0, "VOIP_RX"

    return-object v0

    .line 66
    :cond_e
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
