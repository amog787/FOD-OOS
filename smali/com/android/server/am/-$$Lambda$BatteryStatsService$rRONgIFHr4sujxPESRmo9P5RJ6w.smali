.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:I

.field private final synthetic f$6:I

.field private final synthetic f$7:I

.field private final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$1:I

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$2:I

    iput p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$3:I

    iput p5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$4:I

    iput p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$5:I

    iput p7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$6:I

    iput p8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$7:I

    iput p9, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$1:I

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$2:I

    iget v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$3:I

    iget v4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$4:I

    iget v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$5:I

    iget v6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$6:I

    iget v7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$7:I

    iget v8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;->f$8:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$0$BatteryStatsService(IIIIIIII)V

    return-void
.end method
