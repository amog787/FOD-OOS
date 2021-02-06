.class final Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockoutReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p2, "x1"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting lockout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "lockout_reset_user"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2, v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V

    .line 134
    .end local v0    # "user":I
    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->resolveOnlineConfig()V

    .line 140
    :cond_1
    :goto_0
    return-void
.end method
