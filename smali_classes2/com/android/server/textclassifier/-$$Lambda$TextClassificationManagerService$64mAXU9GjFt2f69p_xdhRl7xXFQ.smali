.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$64mAXU9GjFt2f69p_xdhRl7xXFQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$64mAXU9GjFt2f69p_xdhRl7xXFQ;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$64mAXU9GjFt2f69p_xdhRl7xXFQ;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$64mAXU9GjFt2f69p_xdhRl7xXFQ;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$64mAXU9GjFt2f69p_xdhRl7xXFQ;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$onDestroyTextClassificationSession$8$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/service/textclassifier/ITextClassifierService;)V

    return-void
.end method
