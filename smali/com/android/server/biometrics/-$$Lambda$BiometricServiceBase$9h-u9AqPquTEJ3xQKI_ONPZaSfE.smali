.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field private final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$cancelEnrollmentInternal$1$BiometricServiceBase(Landroid/os/IBinder;)V

    return-void
.end method
