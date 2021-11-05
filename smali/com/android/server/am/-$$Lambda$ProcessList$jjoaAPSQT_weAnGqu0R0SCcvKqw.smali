.class public final synthetic Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$10:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$0:Lcom/android/server/am/ProcessList;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$3:[I

    iput p5, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$4:I

    iput p6, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$5:I

    iput p7, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$6:I

    iput-object p8, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$8:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$9:Ljava/lang/String;

    iput-wide p11, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$10:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$0:Lcom/android/server/am/ProcessList;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$3:[I

    iget v4, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$4:I

    iget v5, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$5:I

    iget v6, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$6:I

    iget-object v7, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$7:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$8:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$9:Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;->f$10:J

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ProcessList;->lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
