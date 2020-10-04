.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    iput p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    iget v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;->f$1:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/autofill/ui/SaveUi;->lambda$applyCustomDescription$3$SaveUi(ILandroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
