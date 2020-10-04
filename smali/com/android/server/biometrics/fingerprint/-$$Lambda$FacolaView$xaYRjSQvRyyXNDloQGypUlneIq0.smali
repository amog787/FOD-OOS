.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$xaYRjSQvRyyXNDloQGypUlneIq0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FacolaView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$xaYRjSQvRyyXNDloQGypUlneIq0;->f$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$xaYRjSQvRyyXNDloQGypUlneIq0;->f$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->lambda$onDraw$6$FacolaView()V

    return-void
.end method
