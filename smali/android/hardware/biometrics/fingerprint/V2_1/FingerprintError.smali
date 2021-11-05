.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintError;
.super Ljava/lang/Object;
.source "FingerprintError.java"


# static fields
.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_LOCKOUT:I = 0x7

.field public static final ERROR_NO_ERROR:I = 0x0

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final ERROR_VENDOR:I = 0x8


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

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 75
    .local v1, "flipped":I
    const-string v2, "ERROR_NO_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 77
    const-string v2, "ERROR_HW_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x1

    .line 80
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 81
    const-string v2, "ERROR_UNABLE_TO_PROCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v1, v1, 0x2

    .line 84
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 85
    const-string v2, "ERROR_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, 0x3

    .line 88
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 89
    const-string v2, "ERROR_NO_SPACE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v1, v1, 0x4

    .line 92
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 93
    const-string v2, "ERROR_CANCELED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x5

    .line 96
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 97
    const-string v2, "ERROR_UNABLE_TO_REMOVE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x6

    .line 100
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 101
    const-string v2, "ERROR_LOCKOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x7

    .line 104
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 105
    const-string v2, "ERROR_VENDOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x8

    .line 108
    :cond_7
    if-eq p0, v1, :cond_8

    .line 109
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

    .line 111
    :cond_8
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 42
    if-nez p0, :cond_0

    .line 43
    const-string v0, "ERROR_NO_ERROR"

    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 46
    const-string v0, "ERROR_HW_UNAVAILABLE"

    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 49
    const-string v0, "ERROR_UNABLE_TO_PROCESS"

    return-object v0

    .line 51
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 52
    const-string v0, "ERROR_TIMEOUT"

    return-object v0

    .line 54
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 55
    const-string v0, "ERROR_NO_SPACE"

    return-object v0

    .line 57
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 58
    const-string v0, "ERROR_CANCELED"

    return-object v0

    .line 60
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 61
    const-string v0, "ERROR_UNABLE_TO_REMOVE"

    return-object v0

    .line 63
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 64
    const-string v0, "ERROR_LOCKOUT"

    return-object v0

    .line 66
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 67
    const-string v0, "ERROR_VENDOR"

    return-object v0

    .line 69
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
