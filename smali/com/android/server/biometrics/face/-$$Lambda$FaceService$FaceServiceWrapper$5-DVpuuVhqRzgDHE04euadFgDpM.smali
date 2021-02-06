.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5-DVpuuVhqRzgDHE04euadFgDpM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5-DVpuuVhqRzgDHE04euadFgDpM;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5-DVpuuVhqRzgDHE04euadFgDpM;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5-DVpuuVhqRzgDHE04euadFgDpM;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5-DVpuuVhqRzgDHE04euadFgDpM;->f$1:[B

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$resetLockout$2$FaceService$FaceServiceWrapper([B)V

    return-void
.end method
