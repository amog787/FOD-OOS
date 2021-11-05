.class Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    .line 655
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->access$1100(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    .line 659
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$1200(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    .line 660
    return-void
.end method
