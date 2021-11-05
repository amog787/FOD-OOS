.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$bskC2PS7oOlLzDJkBbOVEdfy1Gg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$bskC2PS7oOlLzDJkBbOVEdfy1Gg;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$bskC2PS7oOlLzDJkBbOVEdfy1Gg;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$bskC2PS7oOlLzDJkBbOVEdfy1Gg;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$bskC2PS7oOlLzDJkBbOVEdfy1Gg;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$dump$9$TextClassificationManagerService(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method
