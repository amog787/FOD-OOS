.class final Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;
.super Landroid/app/TaskStackListener;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BiometricTaskStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p2, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$1;

    .line 572
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$800(Lcom/android/server/biometrics/BiometricServiceBase;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method
