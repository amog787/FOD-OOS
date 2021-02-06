.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;->f$1:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;->f$2:Z

    iput-object p4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;->f$1:Landroid/os/IBinder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;->f$2:Z

    iget-object v3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$cancelAuthenticationInternal$4$BiometricServiceBase(Landroid/os/IBinder;ZLjava/lang/String;)V

    return-void
.end method
