.class public final synthetic Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:J

.field private final synthetic f$2:J

.field private final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(IJJLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;->f$0:I

    iput-wide p2, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;->f$1:J

    iput-wide p4, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;->f$2:J

    iput-object p6, p0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUidStorageStats(IJJJJJJJJJJ)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    move-wide/from16 v18, p12

    move-wide/from16 v20, p14

    move-wide/from16 v22, p16

    move-wide/from16 v24, p18

    move-wide/from16 v26, p20

    iget v1, v0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;->f$0:I

    iget-wide v2, v0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;->f$1:J

    iget-wide v4, v0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;->f$2:J

    iget-object v6, v0, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;->f$3:Ljava/util/List;

    invoke-static/range {v1 .. v27}, Lcom/android/server/stats/StatsCompanionService;->lambda$pullDiskIo$6(IJJLjava/util/List;IJJJJJJJJJJ)V

    return-void
.end method
