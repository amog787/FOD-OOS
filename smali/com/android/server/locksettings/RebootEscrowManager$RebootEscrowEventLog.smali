.class public Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/RebootEscrowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RebootEscrowEventLog"
.end annotation


# instance fields
.field private mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

.field private mNextIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 474
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    return-void
.end method

.method private addEntryInternal(Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 485
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 486
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    aput-object p1, v1, v0

    .line 487
    iget v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    add-int/lit8 v2, v2, 0x1

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 488
    return-void
.end method


# virtual methods
.method addEntry(I)V
    .locals 1
    .param p1, "eventId"    # I

    .line 477
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntryInternal(Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;)V

    .line 478
    return-void
.end method

.method addEntry(II)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "userId"    # I

    .line 481
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntryInternal(Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;)V

    .line 482
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 491
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 493
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 494
    iget v3, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    add-int/2addr v3, v1

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 495
    .local v2, "event":Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;
    if-nez v2, :cond_0

    .line 496
    goto :goto_1

    .line 499
    :cond_0
    const-string v3, "Event #"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mWallTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 505
    const-string v3, " event="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->getEventDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 508
    iget-object v3, v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 509
    const-string v3, " user="

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 510
    iget-object v3, v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 493
    .end local v2    # "event":Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
