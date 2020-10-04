.class public final Landroid/hardware/biometrics/face/V1_0/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final ILLEGAL_ARGUMENT:I = 0x1

.field public static final INTERNAL_ERROR:I = 0x3

.field public static final NOT_ENROLLED:I = 0x4

.field public static final OK:I = 0x0

.field public static final OPERATION_NOT_SUPPORTED:I = 0x2


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

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 48
    .local v1, "flipped":I
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 50
    const-string v2, "ILLEGAL_ARGUMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v1, v1, 0x1

    .line 53
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 54
    const-string v2, "OPERATION_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x2

    .line 57
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 58
    const-string v2, "INTERNAL_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0x3

    .line 61
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 62
    const-string v2, "NOT_ENROLLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x4

    .line 65
    :cond_3
    if-eq p0, v1, :cond_4

    .line 66
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

    .line 68
    :cond_4
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v0, "OK"

    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 31
    const-string v0, "ILLEGAL_ARGUMENT"

    return-object v0

    .line 33
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 34
    const-string v0, "OPERATION_NOT_SUPPORTED"

    return-object v0

    .line 36
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 37
    const-string v0, "INTERNAL_ERROR"

    return-object v0

    .line 39
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 40
    const-string v0, "NOT_ENROLLED"

    return-object v0

    .line 42
    :cond_4
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
