.class public final synthetic Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ProcessList;

.field private final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field private final synthetic f$2:J

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:[I

.field private final synthetic f$6:I

.field private final synthetic f$7:I

.field private final synthetic f$8:Ljava/lang/String;

.field private final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$0:Lcom/android/server/am/ProcessList;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$2:J

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$3:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$5:[I

    iput p8, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$6:I

    iput p9, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$7:I

    iput-object p10, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$8:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$9:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$0:Lcom/android/server/am/ProcessList;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$2:J

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$3:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$5:[I

    iget v7, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$6:I

    iget v8, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$7:I

    iget-object v9, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$8:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/-$$Lambda$ProcessList$Clv-1gpwGcZ-lQ1Ghdh2VzSdPZ4;->f$9:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ProcessList;->lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
