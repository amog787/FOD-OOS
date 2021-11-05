.class public Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Measurement"
.end annotation


# static fields
.field private static final FAILED:Ljava/lang/String; = "FAILED"

.field private static final SUCCEEDED:Ljava/lang/String; = "SUCCEEDED"


# instance fields
.field description:Ljava/lang/String;

.field finishTime:J

.field result:Ljava/lang/String;

.field startTime:J

.field private succeeded:Z

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 126
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    return-void
.end method

.method private maybeFixupTimes()V
    .locals 4

    .line 162
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    .line 166
    :cond_0
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method public checkSucceeded()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    return v0
.end method

.method recordFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->maybeFixupTimes()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 157
    :cond_0
    return-void
.end method

.method recordSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->maybeFixupTimes()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUCCEEDED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 148
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    iget-wide v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
