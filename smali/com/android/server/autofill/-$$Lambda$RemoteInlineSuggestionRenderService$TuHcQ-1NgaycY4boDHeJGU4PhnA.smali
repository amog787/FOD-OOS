.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteInlineSuggestionRenderService$TuHcQ-1NgaycY4boDHeJGU4PhnA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteInlineSuggestionRenderService$TuHcQ-1NgaycY4boDHeJGU4PhnA;->f$0:I

    iput p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteInlineSuggestionRenderService$TuHcQ-1NgaycY4boDHeJGU4PhnA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteInlineSuggestionRenderService$TuHcQ-1NgaycY4boDHeJGU4PhnA;->f$0:I

    iget v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteInlineSuggestionRenderService$TuHcQ-1NgaycY4boDHeJGU4PhnA;->f$1:I

    check-cast p1, Landroid/service/autofill/IInlineSuggestionRenderService;

    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->lambda$destroySuggestionViews$2(IILandroid/service/autofill/IInlineSuggestionRenderService;)V

    return-void
.end method
