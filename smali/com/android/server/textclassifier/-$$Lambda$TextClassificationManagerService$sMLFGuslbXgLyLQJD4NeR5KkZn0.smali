.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field private final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final synthetic f$2:Landroid/view/textclassifier/TextClassifierEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p3, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;->f$2:Landroid/view/textclassifier/TextClassifierEvent;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;->f$2:Landroid/view/textclassifier/TextClassifierEvent;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$onTextClassifierEvent$4$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method
