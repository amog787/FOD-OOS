.class final Lcom/android/server/biometrics/iris/IrisService$IrisServiceWrapper;
.super Landroid/hardware/iris/IIrisService$Stub;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IrisServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/iris/IrisService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/iris/IrisService;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/server/biometrics/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/iris/IrisService;

    invoke-direct {p0}, Landroid/hardware/iris/IIrisService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/iris/IrisService;Lcom/android/server/biometrics/iris/IrisService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/iris/IrisService;
    .param p2, "x1"    # Lcom/android/server/biometrics/iris/IrisService$1;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/android/server/biometrics/iris/IrisService;)V

    return-void
.end method


# virtual methods
.method public initConfiguredStrength(I)V
    .locals 2
    .param p1, "strength"    # I

    .line 53
    iget-object v0, p0, Lcom/android/server/biometrics/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/iris/IrisService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/iris/IrisService;->access$000(Lcom/android/server/biometrics/iris/IrisService;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/iris/IrisService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/iris/IrisService;->access$100(Lcom/android/server/biometrics/iris/IrisService;I)V

    .line 55
    return-void
.end method
