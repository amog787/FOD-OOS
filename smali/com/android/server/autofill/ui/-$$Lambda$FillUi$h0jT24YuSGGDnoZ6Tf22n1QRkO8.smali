.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;

.field public final synthetic f$1:Landroid/service/autofill/FillResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;->f$1:Landroid/service/autofill/FillResponse;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;->f$1:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$2$FillUi(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method
