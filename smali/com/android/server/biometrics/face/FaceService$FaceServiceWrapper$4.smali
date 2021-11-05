.class Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->rename(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

.field final synthetic val$faceId:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    .line 577
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iput p2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;->val$faceId:I

    iput-object p3, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 580
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v1, v1, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v2, v2, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$6100(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;->val$faceId:I

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricUtils;->renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 582
    return-void
.end method
