.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/autofill/Helper$ViewNodeFilter;


# instance fields
.field private final synthetic f$0:Landroid/view/autofill/AutofillId;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;->f$0:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public final matches(Landroid/app/assist/AssistStructure$ViewNode;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;->f$0:Landroid/view/autofill/AutofillId;

    invoke-static {v0, p1}, Lcom/android/server/autofill/Helper;->lambda$findViewNodeByAutofillId$0(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result p1

    return p1
.end method
