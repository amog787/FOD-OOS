.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$oUY0TN9T4s4roMpe33Oc2nS7uzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$oUY0TN9T4s4roMpe33Oc2nS7uzI;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$oUY0TN9T4s4roMpe33Oc2nS7uzI;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$oUY0TN9T4s4roMpe33Oc2nS7uzI;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$oUY0TN9T4s4roMpe33Oc2nS7uzI;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$revokeChallenge$0$FaceService$FaceServiceWrapper(Landroid/os/IBinder;)V

    return-void
.end method
