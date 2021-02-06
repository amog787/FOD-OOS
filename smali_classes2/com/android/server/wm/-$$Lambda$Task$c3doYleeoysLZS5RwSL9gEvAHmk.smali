.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$c3doYleeoysLZS5RwSL9gEvAHmk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Task$c3doYleeoysLZS5RwSL9gEvAHmk;->f$0:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Task$c3doYleeoysLZS5RwSL9gEvAHmk;->f$0:Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->lambda$isTaskAnimating$5$Task(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
