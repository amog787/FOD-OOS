.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$iRNlDOJhMpMFOTQxuHjuZ0z5dlY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$iRNlDOJhMpMFOTQxuHjuZ0z5dlY;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$iRNlDOJhMpMFOTQxuHjuZ0z5dlY;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$serviceDied$0$BiometricServiceBase()V

    return-void
.end method
