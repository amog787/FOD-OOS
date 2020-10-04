.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;->f$0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->lambda$canToastShowWhenLocked$2(ILcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
