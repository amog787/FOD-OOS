.class Lcom/android/server/job/JobSchedulerService$MaxJobCounts;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaxJobCounts"
.end annotation


# instance fields
.field private final mMaxBg:Landroid/util/KeyValueListParser$IntValue;

.field private final mMinBg:Landroid/util/KeyValueListParser$IntValue;

.field private final mTotal:Landroid/util/KeyValueListParser$IntValue;


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "totalDefault"    # I
    .param p2, "totalKey"    # Ljava/lang/String;
    .param p3, "maxBgDefault"    # I
    .param p4, "maxBgKey"    # Ljava/lang/String;
    .param p5, "minBgDefault"    # I
    .param p6, "minBgKey"    # Ljava/lang/String;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {v0, p2, p1}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    .line 354
    new-instance v0, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {v0, p4, p3}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    .line 355
    new-instance v0, Landroid/util/KeyValueListParser$IntValue;

    invoke-direct {v0, p6, p5}, Landroid/util/KeyValueListParser$IntValue;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    .line 356
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser$IntValue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 411
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 412
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    const-wide v3, 0x10500000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 413
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    const-wide v3, 0x10500000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 414
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    const-wide v3, 0x10500000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/KeyValueListParser$IntValue;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 415
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 416
    return-void
.end method

.method public getMaxBg()I
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public getMaxTotal()I
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public getMinBg()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    return v0
.end method

.method public parse(Landroid/util/KeyValueListParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 359
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser$IntValue;->parse(Landroid/util/KeyValueListParser;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 369
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_1

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 372
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 374
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    if-gez v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    goto :goto_2

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 378
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMaxBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v0}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    if-lt v0, v2, :cond_6

    .line 381
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mMinBg:Landroid/util/KeyValueListParser$IntValue;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaxJobCounts;->mTotal:Landroid/util/KeyValueListParser$IntValue;

    invoke-virtual {v2}, Landroid/util/KeyValueListParser$IntValue;->getValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser$IntValue;->setValue(I)V

    .line 384
    :cond_6
    :goto_2
    return-void
.end method
