.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/TaskPositioningController;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioningController;IILcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;->f$0:Lcom/android/server/wm/TaskPositioningController;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;->f$3:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;->f$0:Lcom/android/server/wm/TaskPositioningController;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;->f$3:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TaskPositioningController;->lambda$handleTapOutsideTask$0$TaskPositioningController(IILcom/android/server/wm/DisplayContent;)V

    return-void
.end method
