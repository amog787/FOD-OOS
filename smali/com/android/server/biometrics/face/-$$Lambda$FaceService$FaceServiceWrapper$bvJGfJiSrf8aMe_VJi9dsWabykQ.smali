.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/hardware/face/IFaceServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILandroid/hardware/face/IFaceServiceReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;->f$2:Landroid/hardware/face/IFaceServiceReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;->f$2:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$getFeature$1$FaceService$FaceServiceWrapper(ILandroid/hardware/face/IFaceServiceReceiver;)V

    return-void
.end method
