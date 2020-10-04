.class public final Landroid/hardware/biometrics/face/V1_0/FaceError;
.super Ljava/lang/Object;
.source "FaceError.java"


# static fields
.field public static final CANCELED:I = 0x5

.field public static final HW_UNAVAILABLE:I = 0x1

.field public static final LOCKOUT:I = 0x7

.field public static final LOCKOUT_PERMANENT:I = 0x9

.field public static final NO_SPACE:I = 0x4

.field public static final TIMEOUT:I = 0x3

.field public static final UNABLE_TO_PROCESS:I = 0x2

.field public static final UNABLE_TO_REMOVE:I = 0x6

.field public static final VENDOR:I = 0x8


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

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 93
    const-string v2, "HW_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x1

    .line 96
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 97
    const-string v2, "UNABLE_TO_PROCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x2

    .line 100
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 101
    const-string v2, "TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x3

    .line 104
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 105
    const-string v2, "NO_SPACE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x4

    .line 108
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 109
    const-string v2, "CANCELED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x5

    .line 112
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 113
    const-string v2, "UNABLE_TO_REMOVE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x6

    .line 116
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 117
    const-string v2, "LOCKOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0x7

    .line 120
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 121
    const-string v2, "VENDOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0x8

    .line 124
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 125
    const-string v2, "LOCKOUT_PERMANENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v1, v1, 0x9

    .line 128
    :cond_8
    if-eq p0, v1, :cond_9

    .line 129
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

    .line 131
    :cond_9
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 59
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 60
    const-string v0, "HW_UNAVAILABLE"

    return-object v0

    .line 62
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 63
    const-string v0, "UNABLE_TO_PROCESS"

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 66
    const-string v0, "TIMEOUT"

    return-object v0

    .line 68
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 69
    const-string v0, "NO_SPACE"

    return-object v0

    .line 71
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 72
    const-string v0, "CANCELED"

    return-object v0

    .line 74
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 75
    const-string v0, "UNABLE_TO_REMOVE"

    return-object v0

    .line 77
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 78
    const-string v0, "LOCKOUT"

    return-object v0

    .line 80
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 81
    const-string v0, "VENDOR"

    return-object v0

    .line 83
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 84
    const-string v0, "LOCKOUT_PERMANENT"

    return-object v0

    .line 86
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
