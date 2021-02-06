.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;->f$0:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;->f$0:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    return-void
.end method
