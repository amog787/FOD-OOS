.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$g19VAbLfQpgo8sS2yC5ITBSIdm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$g19VAbLfQpgo8sS2yC5ITBSIdm0;->f$0:I

    iput-object p2, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$g19VAbLfQpgo8sS2yC5ITBSIdm0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUidStorageStats(IJJJJJJJJJJ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-wide/from16 v18, p16

    move-wide/from16 v20, p18

    move-wide/from16 v22, p20

    iget v1, v0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$g19VAbLfQpgo8sS2yC5ITBSIdm0;->f$0:I

    iget-object v2, v0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$g19VAbLfQpgo8sS2yC5ITBSIdm0;->f$1:Ljava/util/List;

    invoke-static/range {v1 .. v23}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullDiskIOLocked$18(ILjava/util/List;IJJJJJJJJJJ)V

    return-void
.end method
