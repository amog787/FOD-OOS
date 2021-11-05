.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;->f$0:Lcom/android/server/biometrics/face/FaceService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;->f$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->lambda$rveb67MoYJ0egfY6LL-l05KvUz8(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-void
.end method
