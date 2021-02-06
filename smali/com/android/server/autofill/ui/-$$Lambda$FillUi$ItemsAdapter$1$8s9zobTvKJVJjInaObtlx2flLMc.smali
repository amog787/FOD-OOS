.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$FillUi$ItemsAdapter$1$8s9zobTvKJVJjInaObtlx2flLMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$ItemsAdapter$1$8s9zobTvKJVJjInaObtlx2flLMc;->f$0:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$ItemsAdapter$1$8s9zobTvKJVJjInaObtlx2flLMc;->f$0:Ljava/lang/CharSequence;

    check-cast p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    invoke-static {v0, p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->lambda$performFiltering$0(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/FillUi$ViewItem;)Z

    move-result p1

    return p1
.end method
