.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;IIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$2:I

    iput-wide p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$3:J

    iput p6, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$2:I

    iget-wide v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$3:J

    iget v5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;->f$4:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onEnrollResult$0$FaceService$1(IIJI)V

    return-void
.end method
