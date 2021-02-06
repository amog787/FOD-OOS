.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;->f$2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showError$2$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    return-void
.end method
