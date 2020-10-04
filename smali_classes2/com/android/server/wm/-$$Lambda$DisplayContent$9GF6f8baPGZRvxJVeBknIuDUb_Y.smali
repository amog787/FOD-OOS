.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:[I

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>([III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;->f$0:[I

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;->f$0:[I

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;->f$2:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$pointWithinAppWindow$12([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    return-void
.end method
