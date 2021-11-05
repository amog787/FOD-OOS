.class public final Landroid/hardware/broadcastradio/V2_0/MetadataKey;
.super Ljava/lang/Object;
.source "MetadataKey.java"


# static fields
.field public static final ALBUM_ART:I = 0x9

.field public static final DAB_COMPONENT_NAME:I = 0xf

.field public static final DAB_COMPONENT_NAME_SHORT:I = 0x10

.field public static final DAB_ENSEMBLE_NAME:I = 0xb

.field public static final DAB_ENSEMBLE_NAME_SHORT:I = 0xc

.field public static final DAB_SERVICE_NAME:I = 0xd

.field public static final DAB_SERVICE_NAME_SHORT:I = 0xe

.field public static final PROGRAM_NAME:I = 0xa

.field public static final RBDS_PTY:I = 0x3

.field public static final RDS_PS:I = 0x1

.field public static final RDS_PTY:I = 0x2

.field public static final RDS_RT:I = 0x4

.field public static final SONG_ALBUM:I = 0x7

.field public static final SONG_ARTIST:I = 0x6

.field public static final SONG_TITLE:I = 0x5

.field public static final STATION_ICON:I = 0x8


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

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 135
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 136
    const-string v2, "RDS_PS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    or-int/lit8 v1, v1, 0x1

    .line 139
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 140
    const-string v2, "RDS_PTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/lit8 v1, v1, 0x2

    .line 143
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 144
    const-string v2, "RBDS_PTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    or-int/lit8 v1, v1, 0x3

    .line 147
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 148
    const-string v2, "RDS_RT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    or-int/lit8 v1, v1, 0x4

    .line 151
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 152
    const-string v2, "SONG_TITLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    or-int/lit8 v1, v1, 0x5

    .line 155
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 156
    const-string v2, "SONG_ARTIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    or-int/lit8 v1, v1, 0x6

    .line 159
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 160
    const-string v2, "SONG_ALBUM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    or-int/lit8 v1, v1, 0x7

    .line 163
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 164
    const-string v2, "STATION_ICON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/lit8 v1, v1, 0x8

    .line 167
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 168
    const-string v2, "ALBUM_ART"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/lit8 v1, v1, 0x9

    .line 171
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 172
    const-string v2, "PROGRAM_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/lit8 v1, v1, 0xa

    .line 175
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 176
    const-string v2, "DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    or-int/lit8 v1, v1, 0xb

    .line 179
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 180
    const-string v2, "DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit8 v1, v1, 0xc

    .line 183
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 184
    const-string v2, "DAB_SERVICE_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v1, v1, 0xd

    .line 187
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 188
    const-string v2, "DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v1, v1, 0xe

    .line 191
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 192
    const-string v2, "DAB_COMPONENT_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v1, v1, 0xf

    .line 195
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 196
    const-string v2, "DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v1, v1, 0x10

    .line 199
    :cond_f
    if-eq p0, v1, :cond_10

    .line 200
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

    .line 202
    :cond_10
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 81
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 82
    const-string v0, "RDS_PS"

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 85
    const-string v0, "RDS_PTY"

    return-object v0

    .line 87
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 88
    const-string v0, "RBDS_PTY"

    return-object v0

    .line 90
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 91
    const-string v0, "RDS_RT"

    return-object v0

    .line 93
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 94
    const-string v0, "SONG_TITLE"

    return-object v0

    .line 96
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 97
    const-string v0, "SONG_ARTIST"

    return-object v0

    .line 99
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 100
    const-string v0, "SONG_ALBUM"

    return-object v0

    .line 102
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 103
    const-string v0, "STATION_ICON"

    return-object v0

    .line 105
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 106
    const-string v0, "ALBUM_ART"

    return-object v0

    .line 108
    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 109
    const-string v0, "PROGRAM_NAME"

    return-object v0

    .line 111
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    .line 112
    const-string v0, "DAB_ENSEMBLE_NAME"

    return-object v0

    .line 114
    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    .line 115
    const-string v0, "DAB_ENSEMBLE_NAME_SHORT"

    return-object v0

    .line 117
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    .line 118
    const-string v0, "DAB_SERVICE_NAME"

    return-object v0

    .line 120
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    .line 121
    const-string v0, "DAB_SERVICE_NAME_SHORT"

    return-object v0

    .line 123
    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    .line 124
    const-string v0, "DAB_COMPONENT_NAME"

    return-object v0

    .line 126
    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    .line 127
    const-string v0, "DAB_COMPONENT_NAME_SHORT"

    return-object v0

    .line 129
    :cond_f
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
