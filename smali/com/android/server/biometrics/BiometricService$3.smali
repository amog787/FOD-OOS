.class Lcom/android/server/biometrics/BiometricService$3;
.super Landroid/app/UserSwitchObserver;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricService;

    .line 873
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$3;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 876
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$3;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1900(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    .line 877
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$3;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1900(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    .line 878
    return-void
.end method
