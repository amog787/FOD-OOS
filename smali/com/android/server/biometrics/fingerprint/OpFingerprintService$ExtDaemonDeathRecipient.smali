.class Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;
.super Ljava/lang/Object;
.source "OpFingerprintService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/OpFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtDaemonDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/fingerprint/OpFingerprintService;
    .param p2, "x1"    # Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;

    .line 758
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;-><init>(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2
    .param p1, "cookie"    # J

    .line 762
    const-string v0, "OpFingerprintService"

    const-string v1, "extDaemon serviceDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->resetExtDaemon()V

    .line 764
    return-void
.end method
