.class public final Landroid/hardware/usb/gadget/V1_0/GadgetFunction;
.super Ljava/lang/Object;
.source "GadgetFunction.java"


# static fields
.field public static final ACCESSORY:J = 0x2L

.field public static final ADB:J = 0x1L

.field public static final AUDIO_SOURCE:J = 0x40L

.field public static final MIDI:J = 0x8L

.field public static final MTP:J = 0x4L

.field public static final NONE:J = 0x0L

.field public static final PTP:J = 0x10L

.field public static final RNDIS:J = 0x20L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(J)Ljava/lang/String;
    .locals 7
    .param p0, "o"    # J

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v1, 0x0

    .line 68
    .local v1, "flipped":J
    const-string v3, "NONE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const-wide/16 v3, 0x1

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    .line 70
    const-string v5, "ADB"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-long/2addr v1, v3

    .line 73
    :cond_0
    const-wide/16 v3, 0x2

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_1

    .line 74
    const-string v5, "ACCESSORY"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-long/2addr v1, v3

    .line 77
    :cond_1
    const-wide/16 v3, 0x4

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    .line 78
    const-string v5, "MTP"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-long/2addr v1, v3

    .line 81
    :cond_2
    const-wide/16 v3, 0x8

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_3

    .line 82
    const-string v5, "MIDI"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-long/2addr v1, v3

    .line 85
    :cond_3
    const-wide/16 v3, 0x10

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    .line 86
    const-string v5, "PTP"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-long/2addr v1, v3

    .line 89
    :cond_4
    const-wide/16 v3, 0x20

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_5

    .line 90
    const-string v5, "RNDIS"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-long/2addr v1, v3

    .line 93
    :cond_5
    const-wide/16 v3, 0x40

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_6

    .line 94
    const-string v5, "AUDIO_SOURCE"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-long/2addr v1, v3

    .line 97
    :cond_6
    cmp-long v3, p0, v1

    if-eqz v3, :cond_7

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-long v4, v1

    and-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_7
    const-string v3, " | "

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final toString(J)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # J

    .line 38
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "NONE"

    return-object v0

    .line 41
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 42
    const-string v0, "ADB"

    return-object v0

    .line 44
    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 45
    const-string v0, "ACCESSORY"

    return-object v0

    .line 47
    :cond_2
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 48
    const-string v0, "MTP"

    return-object v0

    .line 50
    :cond_3
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 51
    const-string v0, "MIDI"

    return-object v0

    .line 53
    :cond_4
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    .line 54
    const-string v0, "PTP"

    return-object v0

    .line 56
    :cond_5
    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    .line 57
    const-string v0, "RNDIS"

    return-object v0

    .line 59
    :cond_6
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    .line 60
    const-string v0, "AUDIO_SOURCE"

    return-object v0

    .line 62
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
