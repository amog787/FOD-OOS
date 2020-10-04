.class final Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;
.super Landroid/app/TaskStackListener;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BiometricTaskStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p2, "x1"    # Lcom/android/server/biometrics/BiometricService$1;

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    return-void
.end method
