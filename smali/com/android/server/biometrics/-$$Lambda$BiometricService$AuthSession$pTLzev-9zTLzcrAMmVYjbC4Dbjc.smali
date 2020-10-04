.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricService$AuthSession$pTLzev-9zTLzcrAMmVYjbC4Dbjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricService$AuthSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$AuthSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$AuthSession$pTLzev-9zTLzcrAMmVYjbC4Dbjc;->f$0:Lcom/android/server/biometrics/BiometricService$AuthSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricService$AuthSession$pTLzev-9zTLzcrAMmVYjbC4Dbjc;->f$0:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->lambda$binderDied$0$BiometricService$AuthSession()V

    return-void
.end method
