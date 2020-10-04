.class public final synthetic Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;->f$0:I

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;->f$0:I

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;->f$1:I

    check-cast p1, Lcom/android/server/wm/WallpaperController;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wm/Session;->lambda$setWallpaperDisplayOffset$2(IILcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
