.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$GHSsSkx0ioD59uqMYpaGIWm_Au8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$GHSsSkx0ioD59uqMYpaGIWm_Au8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$GHSsSkx0ioD59uqMYpaGIWm_Au8;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$GHSsSkx0ioD59uqMYpaGIWm_Au8;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$GHSsSkx0ioD59uqMYpaGIWm_Au8;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$GHSsSkx0ioD59uqMYpaGIWm_Au8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInputMethodFinishInputView$4(Ljava/lang/Object;ZZ)V

    return-void
.end method
