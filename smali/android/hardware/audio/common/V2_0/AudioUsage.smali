.class public final Landroid/hardware/audio/common/V2_0/AudioUsage;
.super Ljava/lang/Object;
.source "AudioUsage.java"


# static fields
.field public static final ALARM:I = 0x4

.field public static final ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final ASSISTANCE_SONIFICATION:I = 0xd

.field public static final ASSISTANT:I = 0x10

.field public static final CNT:I = 0x11

.field public static final GAME:I = 0xe

.field public static final MAX:I = 0x10

.field public static final MEDIA:I = 0x1

.field public static final NOTIFICATION:I = 0x5

.field public static final NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final NOTIFICATION_EVENT:I = 0xa

.field public static final NOTIFICATION_TELEPHONY_RINGTONE:I = 0x6

.field public static final UNKNOWN:I = 0x0

.field public static final VIRTUAL_SOURCE:I = 0xf

.field public static final VOICE_COMMUNICATION:I = 0x2

.field public static final VOICE_COMMUNICATION_SIGNALLING:I = 0x3


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

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 90
    const-string v2, "MEDIA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x1

    .line 93
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 94
    const-string v2, "VOICE_COMMUNICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x2

    .line 97
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 98
    const-string v2, "VOICE_COMMUNICATION_SIGNALLING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x3

    .line 101
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 102
    const-string v2, "ALARM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x4

    .line 105
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 106
    const-string v2, "NOTIFICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x5

    .line 109
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 110
    const-string v2, "NOTIFICATION_TELEPHONY_RINGTONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x6

    .line 113
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 114
    const-string v2, "NOTIFICATION_COMMUNICATION_REQUEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x7

    .line 117
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 118
    const-string v2, "NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x8

    .line 121
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 122
    const-string v2, "NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x9

    .line 125
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 126
    const-string v2, "NOTIFICATION_EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0xa

    .line 129
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 130
    const-string v2, "ASSISTANCE_ACCESSIBILITY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0xb

    .line 133
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 134
    const-string v2, "ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0xc

    .line 137
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 138
    const-string v2, "ASSISTANCE_SONIFICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0xd

    .line 141
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 142
    const-string v2, "GAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0xe

    .line 145
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 146
    const-string v2, "VIRTUAL_SOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0xf

    .line 149
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 150
    const-string v2, "ASSISTANT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0x10

    .line 153
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v4, 0x11

    if-ne v2, v4, :cond_10

    .line 154
    const-string v2, "CNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0x11

    .line 157
    :cond_10
    and-int/lit8 v2, p0, 0x10

    if-ne v2, v3, :cond_11

    .line 158
    const-string v2, "MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0x10

    .line 161
    :cond_11
    if-eq p0, v1, :cond_12

    .line 162
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

    .line 164
    :cond_12
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 25
    if-nez p0, :cond_0

    .line 26
    const-string v0, "UNKNOWN"

    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 29
    const-string v0, "MEDIA"

    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 32
    const-string v0, "VOICE_COMMUNICATION"

    return-object v0

    .line 34
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 35
    const-string v0, "VOICE_COMMUNICATION_SIGNALLING"

    return-object v0

    .line 37
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 38
    const-string v0, "ALARM"

    return-object v0

    .line 40
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 41
    const-string v0, "NOTIFICATION"

    return-object v0

    .line 43
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 44
    const-string v0, "NOTIFICATION_TELEPHONY_RINGTONE"

    return-object v0

    .line 46
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 47
    const-string v0, "NOTIFICATION_COMMUNICATION_REQUEST"

    return-object v0

    .line 49
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 50
    const-string v0, "NOTIFICATION_COMMUNICATION_INSTANT"

    return-object v0

    .line 52
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 53
    const-string v0, "NOTIFICATION_COMMUNICATION_DELAYED"

    return-object v0

    .line 55
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 56
    const-string v0, "NOTIFICATION_EVENT"

    return-object v0

    .line 58
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 59
    const-string v0, "ASSISTANCE_ACCESSIBILITY"

    return-object v0

    .line 61
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 62
    const-string v0, "ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object v0

    .line 64
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 65
    const-string v0, "ASSISTANCE_SONIFICATION"

    return-object v0

    .line 67
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 68
    const-string v0, "GAME"

    return-object v0

    .line 70
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 71
    const-string v0, "VIRTUAL_SOURCE"

    return-object v0

    .line 73
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 74
    const-string v0, "ASSISTANT"

    return-object v0

    .line 76
    :cond_10
    const/16 v1, 0x11

    if-ne p0, v1, :cond_11

    .line 77
    const-string v0, "CNT"

    return-object v0

    .line 79
    :cond_11
    if-ne p0, v0, :cond_12

    .line 80
    const-string v0, "MAX"

    return-object v0

    .line 82
    :cond_12
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
