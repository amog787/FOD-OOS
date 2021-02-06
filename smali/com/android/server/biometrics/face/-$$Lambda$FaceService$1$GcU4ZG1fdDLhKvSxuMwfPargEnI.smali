.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$1;IJLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;->f$1:I

    iput-wide p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;->f$2:J

    iput-object p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;->f$0:Lcom/android/server/biometrics/face/FaceService$1;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;->f$1:I

    iget-wide v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;->f$2:J

    iget-object v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;->f$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/face/FaceService$1;->lambda$onAuthenticated$2$FaceService$1(IJLjava/util/ArrayList;)V

    return-void
.end method
