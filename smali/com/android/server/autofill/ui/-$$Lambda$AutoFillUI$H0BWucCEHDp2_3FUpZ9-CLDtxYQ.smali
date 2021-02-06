.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$2:Landroid/service/autofill/FillResponse;

.field public final synthetic f$3:Landroid/view/autofill/AutofillId;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/CharSequence;

.field public final synthetic f$6:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$7:Landroid/metrics/LogMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$2:Landroid/service/autofill/FillResponse;

    iput-object p4, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$3:Landroid/view/autofill/AutofillId;

    iput-object p5, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$5:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$6:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$7:Landroid/metrics/LogMaker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$2:Landroid/service/autofill/FillResponse;

    iget-object v3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$3:Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$5:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$6:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;->f$7:Landroid/metrics/LogMaker;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showFillUi$5$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V

    return-void
.end method
