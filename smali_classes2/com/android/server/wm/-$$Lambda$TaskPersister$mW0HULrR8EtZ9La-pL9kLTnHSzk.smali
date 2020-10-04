.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-static {v0, p1}, Lcom/android/server/wm/TaskPersister;->lambda$getImageFromWriteQueue$2(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z

    move-result p1

    return p1
.end method
