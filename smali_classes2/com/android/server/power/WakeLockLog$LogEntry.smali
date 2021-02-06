.class Lcom/android/server/power/WakeLockLog$LogEntry;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEntry"
.end annotation


# instance fields
.field public flags:I

.field public tag:Lcom/android/server/power/WakeLockLog$TagData;

.field public time:J

.field public type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(JILcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "type"    # I
    .param p4, "tag"    # Lcom/android/server/power/WakeLockLog$TagData;
    .param p5, "flags"    # I

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 399
    return-void
.end method

.method private flagsToString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 466
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->access$100()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 v1, v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 468
    const-string v0, ",on-after-release"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_0
    iget v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 471
    const-string v0, ",acq-causes-wake"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_1
    return-void
.end method

.method private toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 5
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v1, :cond_0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - RESET"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 450
    :cond_0
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez v2, :cond_1

    const-string v2, "---"

    goto :goto_0

    :cond_1
    iget v2, v2, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "ACQ"

    goto :goto_1

    :cond_2
    const-string v1, "REL"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez v1, :cond_3

    const-string v1, "UNKNOWN"

    goto :goto_2

    :cond_3
    iget-object v1, v1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-ne v1, v2, :cond_4

    .line 458
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog$LogEntry;->flagsToString(Ljava/lang/StringBuilder;)V

    .line 460
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public set(JILcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "type"    # I
    .param p4, "tag"    # Lcom/android/server/power/WakeLockLog$TagData;
    .param p5, "flags"    # I

    .line 411
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 412
    iput p3, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 413
    iput-object p4, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 414
    iput p5, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 415
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 434
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
