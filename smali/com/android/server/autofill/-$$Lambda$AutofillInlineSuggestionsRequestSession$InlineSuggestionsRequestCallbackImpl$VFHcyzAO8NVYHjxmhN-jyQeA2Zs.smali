.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$VFHcyzAO8NVYHjxmhN-jyQeA2Zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$VFHcyzAO8NVYHjxmhN-jyQeA2Zs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$VFHcyzAO8NVYHjxmhN-jyQeA2Zs;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$VFHcyzAO8NVYHjxmhN-jyQeA2Zs;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$VFHcyzAO8NVYHjxmhN-jyQeA2Zs;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$VFHcyzAO8NVYHjxmhN-jyQeA2Zs;

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

    check-cast p2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    check-cast p3, Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    invoke-static {p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->lambda$onInlineSuggestionsUnsupported$0(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method
