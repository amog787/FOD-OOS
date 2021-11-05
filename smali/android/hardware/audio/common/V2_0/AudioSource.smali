.class public final Landroid/hardware/audio/common/V2_0/AudioSource;
.super Ljava/lang/Object;
.source "AudioSource.java"


# static fields
.field public static final CAMCORDER:I = 0x5

.field public static final CNT:I = 0xa

.field public static final DEFAULT:I = 0x0

.field public static final FM_TUNER:I = 0x7ce

.field public static final HOTWORD:I = 0x7cf

.field public static final MAX:I = 0x9

.field public static final MIC:I = 0x1

.field public static final REMOTE_SUBMIX:I = 0x8

.field public static final UNPROCESSED:I = 0x9

.field public static final VOICE_CALL:I = 0x4

.field public static final VOICE_COMMUNICATION:I = 0x7

.field public static final VOICE_DOWNLINK:I = 0x3

.field public static final VOICE_RECOGNITION:I = 0x6

.field public static final VOICE_UPLINK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5
    .param p0, "o"    # I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 82
    .local v1, "flipped":I
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 84
    const-string v2, "MIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    or-int/lit8 v1, v1, 0x1

    .line 87
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 88
    const-string v2, "VOICE_UPLINK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    or-int/lit8 v1, v1, 0x2

    .line 91
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 92
    const-string v2, "VOICE_DOWNLINK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    or-int/lit8 v1, v1, 0x3

    .line 95
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 96
    const-string v2, "VOICE_CALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v1, v1, 0x4

    .line 99
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 100
    const-string v2, "CAMCORDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v1, v1, 0x5

    .line 103
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 104
    const-string v2, "VOICE_RECOGNITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v1, v1, 0x6

    .line 107
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 108
    const-string v2, "VOICE_COMMUNICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v1, v1, 0x7

    .line 111
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 112
    const-string v2, "REMOTE_SUBMIX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v1, v1, 0x8

    .line 115
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 116
    const-string v2, "UNPROCESSED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v1, v1, 0x9

    .line 119
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v4, 0xa

    if-ne v2, v4, :cond_9

    .line 120
    const-string v2, "CNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    or-int/lit8 v1, v1, 0xa

    .line 123
    :cond_9
    and-int/lit8 v2, p0, 0x9

    if-ne v2, v3, :cond_a

    .line 124
    const-string v2, "MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    or-int/lit8 v1, v1, 0x9

    .line 127
    :cond_a
    and-int/lit16 v2, p0, 0x7ce

    const/16 v3, 0x7ce

    if-ne v2, v3, :cond_b

    .line 128
    const-string v2, "FM_TUNER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    or-int/lit16 v1, v1, 0x7ce

    .line 131
    :cond_b
    and-int/lit16 v2, p0, 0x7cf

    const/16 v3, 0x7cf

    if-ne v2, v3, :cond_c

    .line 132
    const-string v2, "HOTWORD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    or-int/lit16 v1, v1, 0x7cf

    .line 135
    :cond_c
    if-eq p0, v1, :cond_d

    .line 136
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

    .line 138
    :cond_d
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
    const-string v0, "DEFAULT"

    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 38
    const-string v0, "MIC"

    return-object v0

    .line 40
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 41
    const-string v0, "VOICE_UPLINK"

    return-object v0

    .line 43
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 44
    const-string v0, "VOICE_DOWNLINK"

    return-object v0

    .line 46
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 47
    const-string v0, "VOICE_CALL"

    return-object v0

    .line 49
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 50
    const-string v0, "CAMCORDER"

    return-object v0

    .line 52
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 53
    const-string v0, "VOICE_RECOGNITION"

    return-object v0

    .line 55
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 56
    const-string v0, "VOICE_COMMUNICATION"

    return-object v0

    .line 58
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 59
    const-string v0, "REMOTE_SUBMIX"

    return-object v0

    .line 61
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 62
    const-string v0, "UNPROCESSED"

    return-object v0

    .line 64
    :cond_9
    const/16 v1, 0xa

    if-ne p0, v1, :cond_a

    .line 65
    const-string v0, "CNT"

    return-object v0

    .line 67
    :cond_a
    if-ne p0, v0, :cond_b

    .line 68
    const-string v0, "MAX"

    return-object v0

    .line 70
    :cond_b
    const/16 v0, 0x7ce

    if-ne p0, v0, :cond_c

    .line 71
    const-string v0, "FM_TUNER"

    return-object v0

    .line 73
    :cond_c
    const/16 v0, 0x7cf

    if-ne p0, v0, :cond_d

    .line 74
    const-string v0, "HOTWORD"

    return-object v0

    .line 76
    :cond_d
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
