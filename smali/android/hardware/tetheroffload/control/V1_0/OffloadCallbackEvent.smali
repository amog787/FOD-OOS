.class public final Landroid/hardware/tetheroffload/control/V1_0/OffloadCallbackEvent;
.super Ljava/lang/Object;
.source "OffloadCallbackEvent.java"


# static fields
.field public static final OFFLOAD_STARTED:I = 0x1

.field public static final OFFLOAD_STOPPED_ERROR:I = 0x2

.field public static final OFFLOAD_STOPPED_LIMIT_REACHED:I = 0x5

.field public static final OFFLOAD_STOPPED_UNSUPPORTED:I = 0x3

.field public static final OFFLOAD_SUPPORT_AVAILABLE:I = 0x4


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

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 62
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 63
    const-string v2, "OFFLOAD_STARTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    or-int/lit8 v1, v1, 0x1

    .line 66
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 67
    const-string v2, "OFFLOAD_STOPPED_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    or-int/lit8 v1, v1, 0x2

    .line 70
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 71
    const-string v2, "OFFLOAD_STOPPED_UNSUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    or-int/lit8 v1, v1, 0x3

    .line 74
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 75
    const-string v2, "OFFLOAD_SUPPORT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    or-int/lit8 v1, v1, 0x4

    .line 78
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 79
    const-string v2, "OFFLOAD_STOPPED_LIMIT_REACHED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    or-int/lit8 v1, v1, 0x5

    .line 82
    :cond_4
    if-eq p0, v1, :cond_5

    .line 83
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

    .line 85
    :cond_5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 41
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 42
    const-string v0, "OFFLOAD_STARTED"

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 45
    const-string v0, "OFFLOAD_STOPPED_ERROR"

    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 48
    const-string v0, "OFFLOAD_STOPPED_UNSUPPORTED"

    return-object v0

    .line 50
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 51
    const-string v0, "OFFLOAD_SUPPORT_AVAILABLE"

    return-object v0

    .line 53
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 54
    const-string v0, "OFFLOAD_STOPPED_LIMIT_REACHED"

    return-object v0

    .line 56
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
