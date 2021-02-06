.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Zo3yKbNMpKbAhJ7coUzTv5c-zZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationSessionId;

.field public final synthetic f$1:Landroid/view/textclassifier/SelectionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Zo3yKbNMpKbAhJ7coUzTv5c-zZI;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Zo3yKbNMpKbAhJ7coUzTv5c-zZI;->f$1:Landroid/view/textclassifier/SelectionEvent;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Zo3yKbNMpKbAhJ7coUzTv5c-zZI;->f$0:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Zo3yKbNMpKbAhJ7coUzTv5c-zZI;->f$1:Landroid/view/textclassifier/SelectionEvent;

    check-cast p1, Landroid/service/textclassifier/ITextClassifierService;

    invoke-static {v0, v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$onSelectionEvent$3(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;Landroid/service/textclassifier/ITextClassifierService;)V

    return-void
.end method
