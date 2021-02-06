.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;->f$0:Lcom/android/server/wm/Task;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;->f$0:Lcom/android/server/wm/Task;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;->f$1:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/Task;->lambda$getNextFocusableTask$4$Task(ZLjava/lang/Object;)Z

    move-result p1

    return p1
.end method
