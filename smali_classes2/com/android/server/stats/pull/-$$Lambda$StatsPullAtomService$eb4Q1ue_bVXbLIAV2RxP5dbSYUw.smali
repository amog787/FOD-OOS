.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$eb4Q1ue_bVXbLIAV2RxP5dbSYUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$eb4Q1ue_bVXbLIAV2RxP5dbSYUw;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$eb4Q1ue_bVXbLIAV2RxP5dbSYUw;->f$0:I

    invoke-static {v0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$readProcStatsHighWaterMark$17(ILjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
