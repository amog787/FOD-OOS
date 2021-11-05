.class public final Lcom/android/server/backup/transport/TransportStats$Stats;
.super Ljava/lang/Object;
.source "TransportStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/TransportStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stats"
.end annotation


# instance fields
.field public average:D

.field public max:J

.field public min:J

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 101
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 102
    return-void
.end method

.method private constructor <init>(IDJJ)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "average"    # D
    .param p4, "max"    # J
    .param p6, "min"    # J

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 106
    iput-wide p2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 107
    iput-wide p4, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 108
    iput-wide p6, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 109
    return-void
.end method

.method private constructor <init>(Lcom/android/server/backup/transport/TransportStats$Stats;)V
    .locals 8
    .param p1, "original"    # Lcom/android/server/backup/transport/TransportStats$Stats;

    .line 112
    iget v1, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iget-wide v2, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iget-wide v4, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iget-wide v6, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(IDJJ)V

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/transport/TransportStats$Stats;Lcom/android/server/backup/transport/TransportStats$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/backup/transport/TransportStats$Stats;
    .param p2, "x1"    # Lcom/android/server/backup/transport/TransportStats$1;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(Lcom/android/server/backup/transport/TransportStats$Stats;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/transport/TransportStats$Stats;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/transport/TransportStats$Stats;
    .param p1, "x1"    # J

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/transport/TransportStats$Stats;->register(J)V

    return-void
.end method

.method public static merge(Lcom/android/server/backup/transport/TransportStats$Stats;Lcom/android/server/backup/transport/TransportStats$Stats;)Lcom/android/server/backup/transport/TransportStats$Stats;
    .locals 11
    .param p0, "a"    # Lcom/android/server/backup/transport/TransportStats$Stats;
    .param p1, "b"    # Lcom/android/server/backup/transport/TransportStats$Stats;

    .line 85
    new-instance v8, Lcom/android/server/backup/transport/TransportStats$Stats;

    iget v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    iget v1, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    add-int v2, v0, v1

    iget-wide v3, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget-wide v5, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    int-to-double v9, v1

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    add-int/2addr v0, v1

    int-to-double v0, v0

    div-double/2addr v3, v0

    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    iget-wide v5, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 88
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    iget-wide v9, p1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 89
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-object v0, v8

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(IDJJ)V

    .line 85
    return-object v8
.end method

.method private register(J)V
    .locals 5
    .param p1, "sample"    # J

    .line 116
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    iget v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    int-to-double v3, v2

    mul-double/2addr v0, v3

    long-to-double v3, p1

    add-double/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    int-to-double v3, v3

    div-double/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 117
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 118
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 119
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 120
    return-void
.end method
