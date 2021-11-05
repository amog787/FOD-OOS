.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$nuqiI4phD-yzdqPJfiNUB3iWieA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$nuqiI4phD-yzdqPJfiNUB3iWieA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$nuqiI4phD-yzdqPJfiNUB3iWieA;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$nuqiI4phD-yzdqPJfiNUB3iWieA;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$nuqiI4phD-yzdqPJfiNUB3iWieA;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$nuqiI4phD-yzdqPJfiNUB3iWieA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInlineSuggestionsSessionInvalidated$6(Ljava/lang/Object;)V

    return-void
.end method
