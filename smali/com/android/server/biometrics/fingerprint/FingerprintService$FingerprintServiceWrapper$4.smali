.class Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->rename(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .line 411
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$groupId:I

    iput p3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$fingerId:I

    iput-object p4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 414
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$groupId:I

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$fingerId:I

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricUtils;->renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 416
    return-void
.end method
