.class Lcom/android/server/biometrics/fingerprint/FacolaView$1;
.super Landroid/widget/ImageView;
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


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;
    .param p2, "x0"    # Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$1;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 94
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$1;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$000(Lcom/android/server/biometrics/fingerprint/FacolaView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$1;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$100(Lcom/android/server/biometrics/fingerprint/FacolaView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$1;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$000(Lcom/android/server/biometrics/fingerprint/FacolaView;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$1;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$200(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    return-void
.end method
