.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;->f$2:I

    iput p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;->f$2:I

    iget v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;->f$3:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onError$3$FaceService$1(JII)V

    return-void
.end method
