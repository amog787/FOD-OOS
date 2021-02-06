.class public final Landroid/hardware/audio/common/V2_0/AudioStreamType;
.super Ljava/lang/Object;
.source "AudioStreamType.java"


# static fields
.field public static final ACCESSIBILITY:I = 0xa

.field public static final ALARM:I = 0x4

.field public static final BLUETOOTH_SCO:I = 0x6

.field public static final CNT:I = 0xd

.field public static final DEFAULT:I = -0x1

.field public static final DTMF:I = 0x8

.field public static final ENFORCED_AUDIBLE:I = 0x7

.field public static final FOR_POLICY_CNT:I = 0xc

.field public static final MIN:I = 0x0

.field public static final MUSIC:I = 0x3

.field public static final NOTIFICATION:I = 0x5

.field public static final PATCH:I = 0xc

.field public static final PUBLIC_CNT:I = 0xb

.field public static final REROUTING:I = 0xb

.field public static final RING:I = 0x2

.field public static final SYSTEM:I = 0x1

.field public static final TTS:I = 0x9

.field public static final VOICE_CALL:I


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

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 85
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, -0x1

    .line 88
    :cond_0
    const-string v2, "MIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v2, "VOICE_CALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 91
    const-string v2, "SYSTEM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    or-int/lit8 v1, v1, 0x1

    .line 94
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 95
    const-string v2, "RING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    or-int/lit8 v1, v1, 0x2

    .line 98
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 99
    const-string v2, "MUSIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    or-int/lit8 v1, v1, 0x3

    .line 102
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 103
    const-string v2, "ALARM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    or-int/lit8 v1, v1, 0x4

    .line 106
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 107
    const-string v2, "NOTIFICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/lit8 v1, v1, 0x5

    .line 110
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 111
    const-string v2, "BLUETOOTH_SCO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit8 v1, v1, 0x6

    .line 114
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 115
    const-string v2, "ENFORCED_AUDIBLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit8 v1, v1, 0x7

    .line 118
    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 119
    const-string v2, "DTMF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    or-int/lit8 v1, v1, 0x8

    .line 122
    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 123
    const-string v2, "TTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit8 v1, v1, 0x9

    .line 126
    :cond_9
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 127
    const-string v2, "ACCESSIBILITY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    or-int/lit8 v1, v1, 0xa

    .line 130
    :cond_a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b

    .line 131
    const-string v2, "REROUTING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    or-int/lit8 v1, v1, 0xb

    .line 134
    :cond_b
    and-int/lit8 v2, p0, 0xc

    const/16 v4, 0xc

    if-ne v2, v4, :cond_c

    .line 135
    const-string v2, "PATCH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    or-int/lit8 v1, v1, 0xc

    .line 138
    :cond_c
    and-int/lit8 v2, p0, 0xb

    if-ne v2, v3, :cond_d

    .line 139
    const-string v2, "PUBLIC_CNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    or-int/lit8 v1, v1, 0xb

    .line 142
    :cond_d
    and-int/lit8 v2, p0, 0xc

    if-ne v2, v4, :cond_e

    .line 143
    const-string v2, "FOR_POLICY_CNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    or-int/lit8 v1, v1, 0xc

    .line 146
    :cond_e
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_f

    .line 147
    const-string v2, "CNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    or-int/lit8 v1, v1, 0xd

    .line 150
    :cond_f
    if-eq p0, v1, :cond_10

    .line 151
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

    .line 153
    :cond_10
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 24
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 25
    const-string v0, "DEFAULT"

    return-object v0

    .line 27
    :cond_0
    if-nez p0, :cond_1

    .line 28
    const-string v0, "MIN"

    return-object v0

    .line 30
    :cond_1
    if-nez p0, :cond_2

    .line 31
    const-string v0, "VOICE_CALL"

    return-object v0

    .line 33
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 34
    const-string v0, "SYSTEM"

    return-object v0

    .line 36
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 37
    const-string v0, "RING"

    return-object v0

    .line 39
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 40
    const-string v0, "MUSIC"

    return-object v0

    .line 42
    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    .line 43
    const-string v0, "ALARM"

    return-object v0

    .line 45
    :cond_6
    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    .line 46
    const-string v0, "NOTIFICATION"

    return-object v0

    .line 48
    :cond_7
    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    .line 49
    const-string v0, "BLUETOOTH_SCO"

    return-object v0

    .line 51
    :cond_8
    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    .line 52
    const-string v0, "ENFORCED_AUDIBLE"

    return-object v0

    .line 54
    :cond_9
    const/16 v0, 0x8

    if-ne p0, v0, :cond_a

    .line 55
    const-string v0, "DTMF"

    return-object v0

    .line 57
    :cond_a
    const/16 v0, 0x9

    if-ne p0, v0, :cond_b

    .line 58
    const-string v0, "TTS"

    return-object v0

    .line 60
    :cond_b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_c

    .line 61
    const-string v0, "ACCESSIBILITY"

    return-object v0

    .line 63
    :cond_c
    const/16 v0, 0xb

    if-ne p0, v0, :cond_d

    .line 64
    const-string v0, "REROUTING"

    return-object v0

    .line 66
    :cond_d
    const/16 v1, 0xc

    if-ne p0, v1, :cond_e

    .line 67
    const-string v0, "PATCH"

    return-object v0

    .line 69
    :cond_e
    if-ne p0, v0, :cond_f

    .line 70
    const-string v0, "PUBLIC_CNT"

    return-object v0

    .line 72
    :cond_f
    if-ne p0, v1, :cond_10

    .line 73
    const-string v0, "FOR_POLICY_CNT"

    return-object v0

    .line 75
    :cond_10
    const/16 v0, 0xd

    if-ne p0, v0, :cond_11

    .line 76
    const-string v0, "CNT"

    return-object v0

    .line 78
    :cond_11
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
