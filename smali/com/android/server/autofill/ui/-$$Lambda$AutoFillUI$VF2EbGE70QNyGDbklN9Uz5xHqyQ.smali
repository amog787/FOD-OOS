.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$hideFillUi$3$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method
