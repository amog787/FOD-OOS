.class Lcom/android/server/biometrics/fingerprint/FacolaView$3;
.super Ljava/lang/Object;
.source "FacolaView.java"

# interfaces
.implements Lcom/android/server/lights/LightsService$OnBacklightChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/FacolaView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

.field final synthetic val$gamma:F


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 199
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->val$gamma:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBacklightChange$0$FacolaView$3(D)V
    .locals 3
    .param p1, "dim"    # D

    .line 209
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$700(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting dim to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amog787-Enroll"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$800(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    double-to-float v2, p1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 212
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$900(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++Setting dim to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$1000(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$800(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onBacklightChange(I)V
    .locals 6
    .param p1, "brightness"    # I

    .line 202
    int-to-double v0, p1

    const-wide v2, 0x409ffc0000000000L    # 2047.0

    div-double/2addr v0, v2

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->val$gamma:F

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    .line 204
    .local v4, "dim":D
    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 205
    .local v0, "alpha":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Xiaomi dim alpha to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amog787-Enroll"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sys/class/drm/card0-DSI-1/dim_alpha"

    invoke-static {v2, v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$400(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$gQXnReJuA2NMLliQpU3b042kSro;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$gQXnReJuA2NMLliQpU3b042kSro;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView$3;D)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method
