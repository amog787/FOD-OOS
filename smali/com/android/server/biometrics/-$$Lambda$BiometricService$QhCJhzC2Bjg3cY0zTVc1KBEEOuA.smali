.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;->f$0:Lcom/android/server/biometrics/BiometricService;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;->f$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->lambda$handleOnError$0$BiometricService(ILjava/lang/String;)V

    return-void
.end method
