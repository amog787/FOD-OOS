.class public final Landroid/hardware/biometrics/fingerprint/V2_2/FingerprintAcquiredInfo;
.super Ljava/lang/Object;
.source "FingerprintAcquiredInfo.java"


# static fields
.field public static final ACQUIRED_GOOD:I = 0x0

.field public static final ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final ACQUIRED_PARTIAL:I = 0x1

.field public static final ACQUIRED_TOO_FAST:I = 0x5

.field public static final ACQUIRED_TOO_SLOW:I = 0x4

.field public static final ACQUIRED_VENDOR:I = 0x6

.field public static final START:I = 0x7


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

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 71
    .local v1, "flipped":I
    const-string v2, "ACQUIRED_GOOD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 73
    const-string v2, "ACQUIRED_PARTIAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v1, v1, 0x1

    .line 76
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 77
    const-string v2, "ACQUIRED_INSUFFICIENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x2

    .line 80
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 81
    const-string v2, "ACQUIRED_IMAGER_DIRTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v1, v1, 0x3

    .line 84
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 85
    const-string v2, "ACQUIRED_TOO_SLOW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, 0x4

    .line 88
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 89
    const-string v2, "ACQUIRED_TOO_FAST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v1, v1, 0x5

    .line 92
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 93
    const-string v2, "ACQUIRED_VENDOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x6

    .line 96
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 97
    const-string v2, "START"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x7

    .line 100
    :cond_6
    if-eq p0, v1, :cond_7

    .line 101
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

    .line 103
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 41
    if-nez p0, :cond_0

    .line 42
    const-string v0, "ACQUIRED_GOOD"

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 45
    const-string v0, "ACQUIRED_PARTIAL"

    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 48
    const-string v0, "ACQUIRED_INSUFFICIENT"

    return-object v0

    .line 50
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 51
    const-string v0, "ACQUIRED_IMAGER_DIRTY"

    return-object v0

    .line 53
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 54
    const-string v0, "ACQUIRED_TOO_SLOW"

    return-object v0

    .line 56
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 57
    const-string v0, "ACQUIRED_TOO_FAST"

    return-object v0

    .line 59
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 60
    const-string v0, "ACQUIRED_VENDOR"

    return-object v0

    .line 62
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 63
    const-string v0, "START"

    return-object v0

    .line 65
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
