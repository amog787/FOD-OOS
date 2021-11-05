.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$ZQMiOAEg-3WjjWq-e6-TvIpeBJ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$1:Landroid/service/autofill/FillResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$ZQMiOAEg-3WjjWq-e6-TvIpeBJ4;->f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$ZQMiOAEg-3WjjWq-e6-TvIpeBJ4;->f$1:Landroid/service/autofill/FillResponse;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$ZQMiOAEg-3WjjWq-e6-TvIpeBJ4;->f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$ZQMiOAEg-3WjjWq-e6-TvIpeBJ4;->f$1:Landroid/service/autofill/FillResponse;

    check-cast p1, Landroid/service/autofill/Dataset;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createInlineAuthentication$0(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;Ljava/lang/Integer;)V

    return-void
.end method
