.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field private final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final synthetic f$2:Landroid/view/textclassifier/TextClassification$Request;

.field private final synthetic f$3:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p3, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;->f$2:Landroid/view/textclassifier/TextClassification$Request;

    iput-object p4, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;->f$3:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;->f$2:Landroid/view/textclassifier/TextClassification$Request;

    iget-object v3, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;->f$3:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$onClassifyText$1$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method
