.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$2sJrwO1jPjEX_2E7aDk6t5666lk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

.field public final synthetic f$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$2sJrwO1jPjEX_2E7aDk6t5666lk;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$2sJrwO1jPjEX_2E7aDk6t5666lk;->f$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$2sJrwO1jPjEX_2E7aDk6t5666lk;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$2sJrwO1jPjEX_2E7aDk6t5666lk;->f$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-static {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$handleRequest$10(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    return-void
.end method
