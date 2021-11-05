.class Lcom/android/server/biometrics/BiometricServiceBase$1;
.super Landroid/os/Handler;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 117
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->handleUserSwitching(I)V

    .line 123
    nop

    .line 127
    :goto_0
    return-void
.end method
