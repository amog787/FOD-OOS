.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

.field private final synthetic f$1:I

.field private final synthetic f$2:[B

.field private final synthetic f$3:Z

.field private final synthetic f$4:Landroid/hardware/face/IFaceServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;I[BZLandroid/hardware/face/IFaceServiceReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$2:[B

    iput-boolean p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$3:Z

    iput-object p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$2:[B

    iget-boolean v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$3:Z

    iget-object v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;->f$4:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$setFeature$0$FaceService$FaceServiceWrapper(I[BZLandroid/hardware/face/IFaceServiceReceiver;)V

    return-void
.end method
