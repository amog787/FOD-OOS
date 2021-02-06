.class public final Landroid/hardware/broadcastradio/V2_0/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ANTENNA_DISCONNECTED_TIMEOUT_MS:I = 0x64

.field public static final INVALID_IMAGE:I = 0x0

.field public static final LIST_COMPLETE_TIMEOUT_MS:I = 0x493e0


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

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 31
    .local v1, "flipped":I
    const-string v2, "INVALID_IMAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 33
    const-string v2, "ANTENNA_DISCONNECTED_TIMEOUT_MS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/lit8 v1, v1, 0x64

    .line 36
    :cond_0
    const v2, 0x493e0

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    .line 37
    const-string v3, "LIST_COMPLETE_TIMEOUT_MS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/2addr v1, v2

    .line 40
    :cond_1
    if-eq p0, v1, :cond_2

    .line 41
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

    .line 43
    :cond_2
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 16
    if-nez p0, :cond_0

    .line 17
    const-string v0, "INVALID_IMAGE"

    return-object v0

    .line 19
    :cond_0
    const/16 v0, 0x64

    if-ne p0, v0, :cond_1

    .line 20
    const-string v0, "ANTENNA_DISCONNECTED_TIMEOUT_MS"

    return-object v0

    .line 22
    :cond_1
    const v0, 0x493e0

    if-ne p0, v0, :cond_2

    .line 23
    const-string v0, "LIST_COMPLETE_TIMEOUT_MS"

    return-object v0

    .line 25
    :cond_2
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
