.class Lcom/android/server/biometrics/fingerprint/FacolaView$2;
.super Landroid/os/FileObserver;
.source "FacolaView.java"


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

.field final synthetic val$brightnessFile:Ljava/lang/String;

.field final synthetic val$gamma:F

.field final synthetic val$maskBrightness:D


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Ljava/lang/String;ILjava/lang/String;DF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .line 241
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    iput-object p4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->val$brightnessFile:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->val$maskBrightness:D

    iput p7, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->val$gamma:F

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onEvent$0$FacolaView$2(IDF)V
    .locals 5
    .param p1, "currentBrightness"    # I
    .param p2, "maskBrightness"    # D
    .param p4, "gamma"    # F

    .line 250
    int-to-double v0, p1

    div-double/2addr v0, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p4

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    .line 251
    .local v2, "dim":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting dim to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHH-Enroll"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$500(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    double-to-float v4, v2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 253
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$600(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++Setting dim to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$700(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$600(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$900(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$800(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$500(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    :cond_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 10
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->val$brightnessFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "currentBrightnessStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New brightness is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHH-Enroll"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, "currentBrightness":I
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$400(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->val$maskBrightness:D

    iget v8, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->val$gamma:F

    new-instance v9, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;

    move-object v3, v9

    move-object v4, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$ZsrqSPPf3KPLNWmtLOvxs46Evyo;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView$2;IDF)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method
