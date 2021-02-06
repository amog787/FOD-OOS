.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$0E8Uqn1mdPAmWWbW7GFHDc9ke6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$0E8Uqn1mdPAmWWbW7GFHDc9ke6c;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$0E8Uqn1mdPAmWWbW7GFHDc9ke6c;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$enroll$1$FaceService$FaceServiceWrapper()V

    return-void
.end method
