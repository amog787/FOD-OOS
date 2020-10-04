.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricService;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:I

.field private final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$0:Lcom/android/server/biometrics/BiometricService;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$3:I

    iput p5, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$4:I

    iput p6, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$5:I

    iput-boolean p7, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$3:I

    iget v4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$4:I

    iget v5, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$5:I

    iget-boolean v6, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;->f$6:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricService;->lambda$cancelInternal$2$BiometricService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method
