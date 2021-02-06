.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationSessionId;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassification$Request;

.field public final synthetic f$2:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;->f$1:Landroid/view/textclassifier/TextClassification$Request;

    iput-object p3, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;->f$1:Landroid/view/textclassifier/TextClassification$Request;

    iget-object v2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;->f$2:Landroid/service/textclassifier/ITextClassifierCallback;

    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$onClassifyText$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/ITextClassifierService;)V

    return-void
.end method
