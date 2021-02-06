.class public final synthetic Lcom/android/server/am/-$$Lambda$VSkN0NYXfJkOHZPqzFU-0f4s4R4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$VSkN0NYXfJkOHZPqzFU-0f4s4R4;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$VSkN0NYXfJkOHZPqzFU-0f4s4R4;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p3

    check-cast v3, [Ljava/lang/String;

    move-object v4, p4

    check-cast v4, Ljava/io/File;

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppExitInfoTracker;->handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    return-void
.end method
