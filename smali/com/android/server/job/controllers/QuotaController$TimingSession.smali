.class final Lcom/android/server/job/controllers/QuotaController$TimingSession;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimingSession"
.end annotation


# instance fields
.field public final bgJobCount:I

.field public final endTimeElapsed:J

.field private final mHashCode:I

.field public final startTimeElapsed:J


# direct methods
.method constructor <init>(JJI)V
    .locals 4
    .param p1, "startElapsed"    # J
    .param p3, "endElapsed"    # J
    .param p5, "bgJobCount"    # I

    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1520
    iput-wide p3, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 1521
    iput p5, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 1523
    const/4 v0, 0x0

    .line 1524
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1525
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 1526
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p5

    .line 1527
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    .line 1528
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1566
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1568
    .local v0, "token":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1570
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1572
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1575
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1576
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1554
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 1555
    const-string v0, " -> "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 1557
    const-string v0, " ("

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1558
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 1559
    const-string v0, "), "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1560
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1561
    const-string v0, " bg jobs."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1563
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1538
    instance-of v0, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1539
    move-object v0, p1

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1540
    .local v0, "other":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    iget v3, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1544
    .end local v0    # "other":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1550
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
