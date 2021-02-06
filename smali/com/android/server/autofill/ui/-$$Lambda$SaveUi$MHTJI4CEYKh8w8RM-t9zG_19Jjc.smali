.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$MHTJI4CEYKh8w8RM-t9zG_19Jjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$MHTJI4CEYKh8w8RM-t9zG_19Jjc;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$MHTJI4CEYKh8w8RM-t9zG_19Jjc;->f$0:Ljava/util/List;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$applyTextViewStyle$5(Ljava/util/List;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
