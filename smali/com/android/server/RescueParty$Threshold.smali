.class abstract Lcom/android/server/RescueParty$Threshold;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Threshold"
.end annotation


# instance fields
.field private final triggerCount:I

.field private final triggerWindow:J

.field private final uid:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "triggerCount"    # I
    .param p3, "triggerWindow"    # J

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput p1, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    .line 326
    iput p2, p0, Lcom/android/server/RescueParty$Threshold;->triggerCount:I

    .line 327
    iput-wide p3, p0, Lcom/android/server/RescueParty$Threshold;->triggerWindow:J

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/RescueParty$Threshold;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RescueParty$Threshold;

    .line 314
    iget v0, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    return v0
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getStart()J
.end method

.method public incrementAndTest()Z
    .locals 10

    .line 339
    invoke-static {}, Lcom/android/server/RescueParty;->getElapsedRealtime()J

    move-result-wide v0

    .line 340
    .local v0, "now":J
    invoke-virtual {p0}, Lcom/android/server/RescueParty$Threshold;->getStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 341
    .local v2, "window":J
    iget-wide v4, p0, Lcom/android/server/RescueParty$Threshold;->triggerWindow:J

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    .line 342
    invoke-virtual {p0, v6}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 343
    invoke-virtual {p0, v0, v1}, Lcom/android/server/RescueParty$Threshold;->setStart(J)V

    .line 344
    return v5

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/RescueParty$Threshold;->getCount()I

    move-result v4

    add-int/2addr v4, v6

    .line 347
    .local v4, "count":I
    invoke-virtual {p0, v4}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 348
    iget v7, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    invoke-static {v7, v4, v2, v3}, Lcom/android/server/EventLogTags;->writeRescueNote(IIJ)V

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Noticed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " events for UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/RescueParty$Threshold;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " in last "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " sec"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RescueParty"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v7, p0, Lcom/android/server/RescueParty$Threshold;->triggerCount:I

    if-lt v4, v7, :cond_1

    move v5, v6

    :cond_1
    return v5
.end method

.method public reset()V
    .locals 2

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/RescueParty$Threshold;->setCount(I)V

    .line 332
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/RescueParty$Threshold;->setStart(J)V

    .line 333
    return-void
.end method

.method public abstract setCount(I)V
.end method

.method public abstract setStart(J)V
.end method
