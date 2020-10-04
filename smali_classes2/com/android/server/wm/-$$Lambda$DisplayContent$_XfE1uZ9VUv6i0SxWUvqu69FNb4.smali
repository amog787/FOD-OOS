.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;->f$0:Lcom/android/server/wm/DisplayContent;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;->f$0:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;->f$2:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$getTouchableWinAtPointLocked$13$DisplayContent(IILcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
