.class public final Landroid/hardware/broadcastradio/V2_0/ConfigFlag;
.super Ljava/lang/Object;
.source "ConfigFlag.java"


# static fields
.field public static final DAB_DAB_LINKING:I = 0x6

.field public static final DAB_DAB_SOFT_LINKING:I = 0x8

.field public static final DAB_FM_LINKING:I = 0x7

.field public static final DAB_FM_SOFT_LINKING:I = 0x9

.field public static final FORCE_ANALOG:I = 0x2

.field public static final FORCE_DIGITAL:I = 0x3

.field public static final FORCE_MONO:I = 0x1

.field public static final RDS_AF:I = 0x4

.field public static final RDS_REG:I = 0x5


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

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 96
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 97
    const-string v2, "FORCE_MONO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x1

    .line 100
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 101
    const-string v2, "FORCE_ANALOG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x2

    .line 104
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 105
    const-string v2, "FORCE_DIGITAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x3

    .line 108
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 109
    const-string v2, "RDS_AF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x4

    .line 112
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 113
    const-string v2, "RDS_REG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x5

    .line 116
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 117
    const-string v2, "DAB_DAB_LINKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0x6

    .line 120
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 121
    const-string v2, "DAB_FM_LINKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0x7

    .line 124
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 125
    const-string v2, "DAB_DAB_SOFT_LINKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v1, v1, 0x8

    .line 128
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 129
    const-string v2, "DAB_FM_SOFT_LINKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v1, v1, 0x9

    .line 132
    :cond_8
    if-eq p0, v1, :cond_9

    .line 133
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

    .line 135
    :cond_9
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 63
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 64
    const-string v0, "FORCE_MONO"

    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 67
    const-string v0, "FORCE_ANALOG"

    return-object v0

    .line 69
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 70
    const-string v0, "FORCE_DIGITAL"

    return-object v0

    .line 72
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 73
    const-string v0, "RDS_AF"

    return-object v0

    .line 75
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 76
    const-string v0, "RDS_REG"

    return-object v0

    .line 78
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 79
    const-string v0, "DAB_DAB_LINKING"

    return-object v0

    .line 81
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 82
    const-string v0, "DAB_FM_LINKING"

    return-object v0

    .line 84
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 85
    const-string v0, "DAB_DAB_SOFT_LINKING"

    return-object v0

    .line 87
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 88
    const-string v0, "DAB_FM_SOFT_LINKING"

    return-object v0

    .line 90
    :cond_8
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
